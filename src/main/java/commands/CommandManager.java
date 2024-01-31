package commands;

import io.github.cdimascio.dotenv.Dotenv;
import net.dv8tion.jda.api.EmbedBuilder;
import net.dv8tion.jda.api.OnlineStatus;
import net.dv8tion.jda.api.events.guild.GuildReadyEvent;
import net.dv8tion.jda.api.events.interaction.command.SlashCommandInteractionEvent;
import net.dv8tion.jda.api.hooks.ListenerAdapter;
import net.dv8tion.jda.api.interactions.commands.OptionMapping;
import net.dv8tion.jda.api.interactions.commands.OptionType;
import net.dv8tion.jda.api.interactions.commands.build.CommandData;
import net.dv8tion.jda.api.interactions.commands.build.Commands;
import net.dv8tion.jda.api.interactions.commands.build.OptionData;
import net.dv8tion.jda.api.sharding.ShardManager;
import org.jetbrains.annotations.NotNull;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.sql.Statement;


public class CommandManager extends ListenerAdapter {

    private static final ArrayList<String> authorizedUsers;
    static {
        authorizedUsers = new ArrayList<>();
        authorizedUsers.add("th1rox");
        authorizedUsers.add("natyk");
    }


    private final Connection connexion;

    private final ShardManager shardManager;

    public CommandManager(Dotenv config, ShardManager shardManager) throws ClassNotFoundException, SQLException {
        this.shardManager = shardManager;
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/dnd";
        String utilisateur = config.get("DTB_ID");
        String password = config.get("DTB_PWD");
        this.connexion = DriverManager.getConnection(url,utilisateur,password);
    }

    @Override
    public void onSlashCommandInteraction(@NotNull SlashCommandInteractionEvent event) {
        String command = event.getName();
        if (command.equals("sort")) {
            Statement statement;
            try {
                OptionMapping messageOption = event.getOption("nom");
                String queryExact = "SELECT * FROM sort WHERE nom_sort='"+Objects.requireNonNull(messageOption).getAsString()+"' LIMIT 1;";
                String queryAround = "SELECT * FROM sort WHERE nom_sort like '%"+ Objects.requireNonNull(messageOption).getAsString()+"%';";

                Statement statementExact = this.connexion.createStatement();
                ResultSet resultSetExact = statementExact.executeQuery(queryExact);

                if (resultSetExact.next()) {
                    event.reply("Ce sort a été trouvé !").queue();
                    Sort sortTrouve = new Sort(resultSetExact, this.connexion);

                    event.getChannel().sendMessageEmbeds(sortTrouve.createEmbed().build()).queue();
                    resultSetExact.close();
                    statementExact.close();
                }
                else {
                    Statement statementAround = this.connexion.createStatement();
                    ResultSet resultSetAround = statementAround.executeQuery(queryAround);

                    int i=0;
                    while (resultSetAround.next()) {
                        if(i==0) {
                            event.reply("Un ou plusieurs sort(s) similaire(s) ont été trouvés !").queue();
                        }
                        Sort sortTrouve = new Sort(resultSetAround, this.connexion);
                        event.getChannel().sendMessageEmbeds(sortTrouve.createEmbed().build()).queue();
                        i++;
                    }
                    if(i==0){
                        event.reply("Aucun sort similaire n'a été trouvé !\nFormat : _Nom du sort_ (1e lettre en majuscule) !").queue();

                    }

                    resultSetAround.close();
                    statementAround.close();
                }
            }
            catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        else if(command.equals("off")) {
            System.out.println(event.getUser().getName());
            if (authorizedUsers.contains(event.getUser().getName())){
                try {
                    this.connexion.close();
                } catch (SQLException e) {}

                this.shardManager.setStatus(OnlineStatus.OFFLINE);
                event.reply("Merci d'avoir visité ma Taverne. A bientôt soldat !").queue();

                System.exit(0);
            }
            else{
                event.reply("Vous n'avez pas l'autorisation d'utiliser cette commande !").queue();
            }
        }
        else if(command.equals("ecoles")){
            EmbedBuilder embed = new EmbedBuilder();
            embed.setTitle("Ecoles");

            String query = "SELECT * FROM ecole;";
            Statement statement= null;
            try {
                statement = this.connexion.createStatement();
                ResultSet resultSet = statement.executeQuery(query);

                while(resultSet.next()){
                    int id = resultSet.getInt("id_ecole");
                    String nom = resultSet.getString("nom_ecole");
                    embed.addField(id+"",nom, true);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            event.getChannel().sendMessageEmbeds(embed.build()).queue();
        }



        try {
            this.connexion.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    public void onGuildReady(@NotNull GuildReadyEvent event){
        List<CommandData> commandData = new ArrayList<CommandData>();

        OptionData optionSort = new OptionData(OptionType.STRING, "nom", "Nom du sort que vous recherchez", true);
        commandData.add(Commands.slash("sort","Obtenez la fiche d'un sort à partir de son nom.").addOptions(optionSort));

        commandData.add(Commands.slash("off","Eteindre le bot."));

        commandData.add(Commands.slash("ecoles","Donne les id et noms des types d'écoles."));

        event.getGuild().updateCommands().addCommands(commandData).queue();
    }



}
