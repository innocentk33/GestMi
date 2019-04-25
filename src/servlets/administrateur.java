package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "administrateur")
@MultipartConfig(maxFileSize = 20971520, maxRequestSize = 52428800)// taille max d'upload
public class administrateur extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //this.getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
        this.getServletContext().getRequestDispatcher("/administrateur.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  /*      //get session
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        // tuer une session
        session.invalidate();
        response.sendRedirect("index");*/
        this.getServletContext().getRequestDispatcher("/administrateur.jsp").forward(request, response);
    }
}
