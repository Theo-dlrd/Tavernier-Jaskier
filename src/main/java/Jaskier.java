import commands.CommandManager;
import io.github.cdimascio.dotenv.Dotenv;
import net.dv8tion.jda.api.OnlineStatus;
import net.dv8tion.jda.api.entities.Activity;
import net.dv8tion.jda.api.requests.GatewayIntent;
import net.dv8tion.jda.api.sharding.DefaultShardManagerBuilder;
import net.dv8tion.jda.api.sharding.ShardManager;
import javax.security.auth.login.LoginException;
import java.sql.*;
import java.util.ArrayList;


public class Jaskier {

    private final Dotenv config;

    private final ShardManager shardManager;


    public Jaskier() throws LoginException, ClassNotFoundException, SQLException {

        this.config=Dotenv.configure().load();
        String token = this.config.get("TOKEN");

        if(token==null){
            System.out.println("ERREUR : token null");
            System.exit(-1);
        }

        //Connecter le code au bot
        DefaultShardManagerBuilder builder = DefaultShardManagerBuilder.createDefault(token);
        builder.setStatus(OnlineStatus.ONLINE);
        builder.setActivity(Activity.playing("D&D"));
        builder.enableIntents(GatewayIntent.GUILD_MESSAGES);
        this.shardManager = builder.build();

        shardManager.addEventListener( new CommandManager(config, this.shardManager));
    }

    public ShardManager getShardManager() {
        return shardManager;
    }

    public Dotenv getConfig() {
        return config;
    }

    public static void main(String[] args) {

        try {
            new Jaskier();
        }
        catch(LoginException e){
            System.out.println("ERREUR : Token non valide !");
        } catch (SQLException e) {
            System.out.println("ERREUR : SQL Exception");
            System.out.println(e.toString());
        } catch (ClassNotFoundException e) {
            System.out.println("ERREUR : ClassNotFound Exception");
        }
    }
}
