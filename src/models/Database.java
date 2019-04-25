package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    public Connection connection;
    private String url = "jdbc:mysql://localhost:3306/kacoujee";
    private String user = "root";
    private String pass = "";

    public void loadDatabase() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException c) {
            c.printStackTrace();
        }

        try {
            connection = DriverManager.getConnection(url, user, pass);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        {

        }
    }
}
