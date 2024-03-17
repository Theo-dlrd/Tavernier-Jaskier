import commands.CommandManager;
import io.github.cdimascio.dotenv.Dotenv;
import net.dv8tion.jda.api.OnlineStatus;
import net.dv8tion.jda.api.entities.Activity;
import net.dv8tion.jda.api.requests.GatewayIntent;
import net.dv8tion.jda.api.sharding.DefaultShardManagerBuilder;
import net.dv8tion.jda.api.sharding.ShardManager;
import javax.security.auth.login.LoginException;
import java.sql.*;


public class Volo {


    public Volo() throws LoginException, ClassNotFoundException, SQLException {

        Dotenv config = Dotenv.configure().load();
        String token = config.get("TOKEN");

        if(token==null){
            System.out.println("ERREUR : token null");
            System.exit(-1);
        }

        //Connecter le code au bot
        DefaultShardManagerBuilder builder = DefaultShardManagerBuilder.createDefault(token);
        builder.setStatus(OnlineStatus.ONLINE);
        builder.setActivity(Activity.playing("D&D"));
        builder.enableIntents(GatewayIntent.GUILD_MESSAGES);
        ShardManager shardManager = builder.build();

        shardManager.addEventListener( new CommandManager(config, shardManager));
    }

    public static void main(String[] args) {

        try {
            new Volo();
        }
        catch(LoginException e){
            System.out.println("ERREUR : Token non valide !");
            System.out.println("Vérifiez le token du bot.");
        } catch (SQLException e) {
            System.out.println("ERREUR : SQL Exception");
            System.out.println("Vérifiez que le serveur soit allumé et que les identifiants et mot de passe de la bdd soient les bons.");
        } catch (ClassNotFoundException e) {
            System.out.println("ERREUR : ClassNotFound Exception");
        }
    }
}
