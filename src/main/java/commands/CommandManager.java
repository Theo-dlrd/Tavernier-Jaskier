package commands;

import io.github.cdimascio.dotenv.Dotenv;
import net.dv8tion.jda.api.events.guild.GuildReadyEvent;
import net.dv8tion.jda.api.events.interaction.command.SlashCommandInteractionEvent;
import net.dv8tion.jda.api.hooks.ListenerAdapter;
import net.dv8tion.jda.api.interactions.commands.OptionMapping;
import net.dv8tion.jda.api.interactions.commands.OptionType;
import net.dv8tion.jda.api.interactions.commands.build.CommandData;
import net.dv8tion.jda.api.interactions.commands.build.Commands;
import net.dv8tion.jda.api.interactions.commands.build.OptionData;
import org.jetbrains.annotations.NotNull;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.sql.Statement;


public class CommandManager extends ListenerAdapter {

    private final Connection connexion;

    public CommandManager(Dotenv config) throws ClassNotFoundException, SQLException {
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
            //event.reply("Vous cherchez une commande cher aventurier ?").queue();

            try {
                OptionMapping messageOption = event.getOption("nom");
                String queryExact = "SELECT * FROM sort WHERE nom_sort='"+Objects.requireNonNull(messageOption).getAsString()+"' LIMIT 1;";
                String queryAround = "SELECT * FROM sort WHERE nom_sort like '%"+ Objects.requireNonNull(messageOption).getAsString()+"%' LIMIT 1;";

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

                    if (resultSetAround.next()) {
                        event.reply("Un sort similaire a été trouvé !").queue();
                        Sort sortTrouve = new Sort(resultSetAround, this.connexion);
                        event.getChannel().sendMessageEmbeds(sortTrouve.createEmbed().build()).queue();
                    }
                    else {
                        event.reply("Aucun sort similaire n'a été trouvé !").queue();
                    }

                    resultSetAround.close();
                    statementAround.close();
                }
            }
            catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }


    @Override
    public void onGuildReady(@NotNull GuildReadyEvent event){
        List<CommandData> commandData = new ArrayList<CommandData>();

        OptionData optionSort = new OptionData(OptionType.STRING, "nom", "Nom du sort que vous recherchez", true);
        commandData.add(Commands.slash("sort","Obtenez la fiche d'un sort à partir de son nom.").addOptions(optionSort));
        event.getGuild().updateCommands().addCommands(commandData).queue();
    }



}
