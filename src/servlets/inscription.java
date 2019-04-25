package servlets;

import beans.Membres;
import models.Inscription;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "inscription")
public class inscription extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Membres membres = new Membres();
        // remplissage du beans membres avec ses informations
        membres.setEmail(request.getParameter("email"));
        membres.setNom(request.getParameter("nom"));
        membres.setPrenom(request.getParameter("prenom"));
        membres.setMotdepasse(request.getParameter("motdepasse"));

        //creation d'un objet de d'inscription
        Inscription inscription = new Inscription();
        inscription.creerUtilisateur(membres);



        this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request,response);
    }
}
