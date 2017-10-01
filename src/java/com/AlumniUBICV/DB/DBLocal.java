/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.DB;

import com.AlumniUBICV.Object.Ilha;
import com.AlumniUBICV.Object.Pais;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author irina.m.lopes
 */
public class DBLocal extends DBAccess{
    
    public ArrayList<Pais> ListPais() {

        ArrayList<Pais> l = new ArrayList<Pais>();
        try {

            String sql = "SELECT distinct(pais) pais FROM alumni where pais is not null order by pais";
            ResultSet r = OpenConnectionDB(sql);
            int c = 0;
            while (r.next()) {
                //Retrieve by column name
                l.add(new Pais(r.getString("pais")
                 
                ));
                        c+=1;
            }

            return l;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return l;
    }

    public ArrayList<Ilha> ListIlha() {

        ArrayList<Ilha> l = new ArrayList<Ilha>();
        try {
            String sql = "SELECT id, ilha FROM ilha order by ilha";
            ResultSet r = OpenConnectionDB(sql);

            while (r.next()) {
                //Retrieve by column name
                l.add(new Ilha(r.getInt("ID"),
                        r.getString("ilha")
                ));

            }
            return l;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return l;
    }

    
}
