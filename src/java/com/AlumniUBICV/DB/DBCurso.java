/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.DB;

import static com.AlumniUBICV.DB.DBAccess.DB_URL;
import com.AlumniUBICV.Object.Curso;
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
public class DBCurso extends DBAccess{
    
    
    public ArrayList<Curso> ListCurso(String nome) {

        ArrayList<Curso> curse = new ArrayList<Curso>();
        String FNome;
        if (nome == null || "".equals(nome)) {
                FNome = " and nome like \"%%\"";
            } else {
                FNome = " and nome like \"%" + nome + "%\"";
            }
        try {
            String sql = "SELECT id, nome, descricao FROM curso "+
                    " where 1 = 1 "+
                     FNome +
                    " order by nome";
            ResultSet r = OpenConnectionDB(sql);

            while (r.next()) {
                //Retrieve by column name
                curse.add(new Curso(r.getInt("ID"),
                        r.getString("nome"),
                        r.getString("descricao")
                ));

            }

            return curse;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return curse;
    }

    public boolean InsertCurse (String nome, String desc){
    
        if (nome == null || nome.equals("")){
            return false;
        }
        
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "INSERT INTO curso(nome, descricao) VALUES (?, ?)"; 
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setString(1, nome);
            if (desc == null || desc.equals("")){
                preparedStmt.setNull(2, java.sql.Types.VARCHAR);
            }else{
                preparedStmt.setString(2, desc);
            }
            
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
    
    public Curso GetCurso(String id) {

        Curso curse = new Curso();
      
        
        
        try {
            
            String sql = "SELECT id, nome, descricao FROM curso where id = "+id;
            

            ResultSet r = OpenConnectionDB(sql);

            while (r.next()) {
                //Retrieve by column name
                curse.setId(r.getInt("id"));
                curse.setNome(r.getString("nome"));
                curse.setDescricao(r.getString("descricao"));
            }

            return curse;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return curse;
    }
    
    public boolean EdtCurse (String nome, String desc, String id){
    
        if (nome == null || nome.equals("")){
            return false;
        }
        
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "update curso set nome = ?, descricao = ? where id = ?"; 
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setString(1, nome);
            if (desc == null || desc.equals("")){
                preparedStmt.setNull(2, java.sql.Types.VARCHAR);
            }else{
                preparedStmt.setString(2, desc);
            }
            preparedStmt.setInt(3, Integer.parseInt(id));
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
    
    public int CanDelCurso(String id){
        int c = 0;
        try {
            
            String sql = "select count(*) c from alumni where curso_id ="+id;
            

            ResultSet r = OpenConnectionDB(sql);
            
            while (r.next()) {
                //Retrieve by column name
                c = r.getInt("c");
            }

    
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return c;
    }
    
    public boolean DelCurse (String id){
    
        
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "DELETE FROM curso where id = ?"; 
            
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            
            preparedStmt.setString(1, id);
            
            
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
}
