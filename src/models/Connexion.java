package models;

import beans.Membres;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Connexion {
    Database bdd = new Database();

    public String getNomSession() {
        return nomSession;
    }

    public void setNomSession(String nomSession) {
        this.nomSession = nomSession;
    }

    private String nomSession;


    public String verifierIndentification(Membres membres) {
        String redirection = null;
        String nom;
        try {
            bdd.loadDatabase();
            PreparedStatement bdd_verif = bdd.connection.prepareStatement("select email,motdepasse,nom from membre where email=? and motdepasse= ?;");
            bdd_verif.setString(1, membres.getEmail());
            bdd_verif.setString(2, membres.getMotdepasse());
            ResultSet resultSet = bdd_verif.executeQuery();
            if (resultSet.next()) {
                redirection = "administrateur";
                nom = resultSet.getString("nom");
                membres.setNom(nom);
                setNomSession(nom);
                System.out.println(membres.getNom());
            } else
                redirection = "connexion";

        } catch (Exception e) {
            e.printStackTrace();
        }
        return redirection;
    }
}
