package models;

import beans.Membres;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Inscription {
    Database bdd = new Database();


    public void creerUtilisateur(Membres membres) {
        PreparedStatement preparedStatement = null;
        try {
            bdd.loadDatabase();
            preparedStatement = bdd.connection.prepareStatement("insert into membre (email, nom, prenom, motdepasse) VALUES (?,?,?,?);");
            preparedStatement.setString(1, membres.getEmail());
            preparedStatement.setString(2, membres.getNom());
            preparedStatement.setString(3, membres.getPrenom());
            preparedStatement.setString(4, membres.getMotdepasse());
            preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bdd.connection != null) {
                try {
                    bdd.connection.close();
                } catch (SQLException ignore) {
                    System.out.println("ignorer l'erreur de fermeture");
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException ignore) {
                    System.out.println("ignorer l'erreur de fermeture");
                }
            }
        }


    }
}
