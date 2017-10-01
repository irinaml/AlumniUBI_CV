/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.DB;

import static com.AlumniUBICV.DB.DBAccess.DB_URL;
import com.AlumniUBICV.Object.Mensagem;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author irina.m.lopes
 */
public class DBMsg extends DBAccess{
    
    public boolean insertMsg (String msg, String ass,  int alumni_id){
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "INSERT INTO mensagem(alumni_id, assunto, msg) VALUES (?, ?, ?)"; //2
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setInt(1, alumni_id);
            preparedStmt.setString(2, ass);
            preparedStmt.setString(3, msg);
            
            // execute the java preparedstatement
            preparedStmt.execute();

            conn.close();
            return true;
        } catch (ClassNotFoundException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        } catch (SQLException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }
        
    }

    
    public ArrayList<Mensagem> ListMsg(){
        ArrayList<Mensagem> msg = new ArrayList<Mensagem>();
        
         
        try {
            String sql = "select m.id, a.NUMERO, m.assunto, m.dt_msg, m.msg, a.Nome, a.email_um " +
                        " from mensagem m,\n" +
                            " alumni a " +
                        " WHERE a.ID = m.alumni_id"
                        + " and dt_resp is null";
            ResultSet r = OpenConnectionDB(sql);

            //STEP 5: Extract data from result set
            while (r.next()) {
                //Retrieve by column name
                
                msg.add(new Mensagem(r.getString("assunto"), 
                        r.getString("msg"), 
                        r.getInt("id"), 
                        r.getInt("NUMERO"), 
                        r.getString("email_um"), 
                        r.getDate("dt_msg"),
                        r.getString("Nome")));
            }

          

        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();
        }

        return msg;
    }
    
    public boolean RespMsg(int idMSG, int adminID){
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "UPDATE mensagem SET dt_resp = now(), admin_id_resp = ? WHERE id = ?"; //2
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setInt(1, adminID);
            preparedStmt.setInt(2, idMSG);
            
            
            

            // execute the java preparedstatement
            preparedStmt.executeUpdate();

            conn.close();
            return true;
        } catch (ClassNotFoundException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        } catch (SQLException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }
}
