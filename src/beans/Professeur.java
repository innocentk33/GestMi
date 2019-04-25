package beans;

public class Professeur {
    private String nom_prof;
    private String prenom_prof;
    private String login;
    private String motdepasse;
    private String adresse_prof;


    public String getNom_prof() {
        return nom_prof;
    }

    public void setNom_prof(String nom_prof) {
        this.nom_prof = nom_prof;
    }

    public String getPrenom_prof() {
        return prenom_prof;
    }

    public void setPrenom_prof(String prenom_prof) {
        this.prenom_prof = prenom_prof;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMotdepasse() {
        return motdepasse;
    }

    public void setMotdepasse(String motdepasse) {
        this.motdepasse = motdepasse;
    }

    public String getAdresse_prof() {
        return adresse_prof;
    }

    public void setAdresse_prof(String adresse_prof) {
        this.adresse_prof = adresse_prof;
    }


}
