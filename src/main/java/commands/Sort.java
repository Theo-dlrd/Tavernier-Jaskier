package commands;

import io.github.cdimascio.dotenv.Dotenv;
import net.dv8tion.jda.api.EmbedBuilder;
import net.dv8tion.jda.api.entities.MessageEmbed;
import org.postgresql.util.PSQLException;

import java.sql.*;
import java.util.Objects;

public class Sort {

    private String nom_sort;
    private int niveau_sort;
    private String ecole;
    private String duree_incantation;
    private String portee;
    private String composante;
    private String duree_sort;
    private String description;

    public Sort(ResultSet res, Connection connexion) throws SQLException {

        this.nom_sort = res.getString("nom_sort");
        this.niveau_sort = res.getInt("niveau_sort");
        int id_ecole = res.getInt("ecole_sort");

        Statement statement = connexion.createStatement();
        ResultSet resultSet;
        try {
            String query = "SELECT nom_ecole FROM ecole WHERE id_ecole='" + id_ecole + "' LIMIT 1;";
            resultSet = statement.executeQuery(query);
        }
        catch (PSQLException e){
            throw new RuntimeException(e);
        }

        if(resultSet.next()){
            this.ecole = resultSet.getString("nom_ecole");
        }
        else{
            this.ecole = "Aucune";
        }


        this.ecole = resultSet.getString("nom_ecole");
        this.duree_incantation = res.getString("duree_incantation");
        this.portee = res.getString("portee");
        this.composante = res.getString("composante");
        this.duree_sort = res.getString("duree_sort");
        this.description = res.getString("description");
    }



    public EmbedBuilder createEmbed(){
        EmbedBuilder embed = new EmbedBuilder();
        embed.setTitle(this.nom_sort);
        embed.addField("Ecole",this.ecole+"", true);
        embed.addField("Niveau",this.niveau_sort+"", true);
        embed.addField("Durée d'incantation", this.duree_incantation, true);
        embed.addField("Portée", this.portee, true);
        embed.addField("Composantes", this.composante, true);
        embed.addField("Durée du sort", this.duree_sort, true);
        embed.addField("Description",this.description, false);
        return embed;
    }


}
