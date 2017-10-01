/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.DB;


import com.AlumniUBICV.Object.Curso;
import com.AlumniUBICV.Object.Ilha;
import com.AlumniUBICV.Object.Mensagem;
import com.AlumniUBICV.Object.Pais;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author irina.m.lopes
 */

public class DBAccess {

    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/caboubi"; //"jdbc:mysql://mysql2397-aaubicv.techequity.solutions:3306/caboubi";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "password";//"XoCqkSoQUj";
    Connection conn;
    Statement stmt = null;
    ResultSet rs = null;

    
    public ResultSet OpenConnectionDB(String sql) {

        conn = null;
        stmt = null;
        rs = null;

        try {

            //System.out.println("STEP 2: Register JDBC driver");
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //System.out.println("STEP 3: Open a connection");
            //STEP 3: Open a connection
            //System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            stmt = conn.createStatement();

            rs = stmt.executeQuery(sql);

        } catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
    System.out.println("SQLState: " + ex.getSQLState());
    System.out.println("VendorError: " + ex.getErrorCode());
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
          
    

            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        /*finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }//end finally try
        }*/
        return rs;
    }

    public void CloseConnectionDB() {
        
        try {
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
