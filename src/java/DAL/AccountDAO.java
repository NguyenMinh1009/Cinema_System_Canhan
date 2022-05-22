/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Quan
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String email, String password) {
        try {
            String sql = "select AccountId,Email,Password,Fullname,Gender,DateOfBirth,Address,Phone,Image,Role,Status from Account where email=? and Password=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setAccId(rs.getInt("AccountId"));
                account.setEmail(rs.getString("Email"));
                account.setPassword(rs.getString("Password"));
                account.setFullname(rs.getString("Fullname"));
                account.setGender(rs.getBoolean("Gender"));
                account.setDob(rs.getString("DateOfBirth"));
                account.setAddress(rs.getString("Address"));
                return account;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(Account a) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([Email]\n"
                + "           ,[Password]\n"
                + "           ,[Fullname]\n"
                + "           ,[Gender]\n"
                + "           ,[DateOfBirth]\n"
                + "           ,[Address]\n"
                + "           ,[Phone]\n"
                + "           ,[Image]\n"
                + "           ,[Role]\n"
                + "           ,[Status])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);

            stm.setString(1, a.getEmail());
            stm.setString(2, a.getPassword());
            stm.setString(3, a.getFullname());
            stm.setBoolean(4, a.getGender());
            stm.setString(5, a.getDob());
            stm.setString(6, a.getAddress());
            stm.setString(7, a.getPhone());
            stm.setString(8, a.getImg());
            stm.setString(9, a.getRole());
            stm.setBoolean(10, a.getStatus());

            stm.executeUpdate(); //INSERT UPDATE DELETE
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public String getExistEmail(String email) {
        String sql = "select Email from Account where Email = ?";
        PreparedStatement stm;
//        String existEmail = "";
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return  rs.getString("Email");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public static void main(String[] args) {
//        new AccountDAO().insertAccount(new Account("minhnndfsd@fpt.edu.vn", "1234", "Ngoc Minh", Boolean.TRUE, "2001-03-23", "HP", "324214332", "fgfdsgsdfgdsfg", "45435", Boolean.TRUE));
       System.out.println(new AccountDAO().getExistEmail("minhnnm1009@gmail.com"));
    
    }
}
