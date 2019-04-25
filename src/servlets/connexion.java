package servlets;

import beans.Membres;
import models.Connexion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "connexion")
public class connexion extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //recuperation du nom et du mot de passe a stocker dans le beans
        Membres membres = new Membres();
        membres.setEmail(request.getParameter("email"));
        membres.setMotdepasse(request.getParameter("motdepasse"));


        // verification
        Connexion connexion = new Connexion();
        String redirection = connexion.verifierIndentification(membres);
        //redirection
        System.out.println(redirection);

        //creation de la session

        if (redirection.equals("administrateur")) {
            HttpSession session = request.getSession();
            session.setAttribute("email", membres.getEmail());
            session.setAttribute("nom", membres.getNom());

            response.sendRedirect("administrateur");

        } else
            response.sendRedirect("connexion");

        //this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*        HttpSession session = request.getSession();
        String email = session.getAttribute("email").toString();*/
        this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
    }
}
