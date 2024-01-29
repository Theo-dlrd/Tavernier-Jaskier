import commands.CommandManager;
import io.github.cdimascio.dotenv.Dotenv;
import net.dv8tion.jda.api.OnlineStatus;
import net.dv8tion.jda.api.entities.Activity;
import net.dv8tion.jda.api.requests.GatewayIntent;
import net.dv8tion.jda.api.sharding.DefaultShardManagerBuilder;
import net.dv8tion.jda.api.sharding.ShardManager;
import javax.security.auth.login.LoginException;
import java.sql.*;


public class Jaskier {

    private final Dotenv config;

    private final ShardManager shardManager;


    public Jaskier() throws LoginException, ClassNotFoundException, SQLException {
        //Récupérer le token depuis .env
        config=Dotenv.configure().ignoreIfMissing().load();
        String token = config.get("TOKEN");

        //Connecter le code au bot
        DefaultShardManagerBuilder builder = DefaultShardManagerBuilder.createDefault(token);
        builder.setStatus(OnlineStatus.ONLINE);
        builder.setActivity(Activity.watching("You"));
        builder.enableIntents(GatewayIntent.GUILD_MESSAGES);
        this.shardManager = builder.build();

        shardManager.addEventListener( new CommandManager(config));
    }


    public ShardManager getShardManager() {
        return shardManager;
    }

    public Dotenv getConfig() {
        return config;
    }

    public static void main(String[] args) {

        try {
            Jaskier tavernier = new Jaskier();
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
