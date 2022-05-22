/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI
 */
public class DBContext {
    public Connection connection;
    public DBContext()
    {
        try {
           String url = "jdbc:sqlserver://localhost:1433;databaseName=Nhom5-QuanLyRapChieuPhim";
           String username = "sa";
           String password = "12345";
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           connection = DriverManager.getConnection(url, username, password);
       } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
    public static void main(String[] args) {
        System.out.println(new DBContext().connection);
    }
}
