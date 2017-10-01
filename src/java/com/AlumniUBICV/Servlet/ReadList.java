/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.Servlet;

import com.AlumniUBICV.Object.Alumni;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;


/**
 *
 * @author irina.m.lopes
 */
public class ReadList {
    
   // ArrayList<Alumni> ListaAlumni;

    
    
    
    /*public ReadList() {
        
        this.ListaAlumni = new ArrayList<Alumni>();
    }*/
    
    
    
   public static void main(String[] args) {
        
        ArrayList<Alumni> l = new ArrayList<Alumni>();
        l = readBD();
        
         for (Alumni a : l) {
            
            System.out.println(a.toStringSimple());
        }
        
    }
    

    
    public static ArrayList<Alumni> readBD() {

        /*NUM;Nome;Curso;Ano_Lec;eMail principal;email professional;Instituição;profissao;Morada;Telefone;Telemovel*/
        ArrayList<Alumni> ListaAlumni = new ArrayList<Alumni>();
        String csvFile ="/BD/BD_Alumni.csv";
       //String filePath =Thread.currentThread().getContextClassLoader().getResource("../resources/data/test.csv").getFile();
//File file = new File(filePath);
        //String csvFile = "BD/BD_Alumni.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        
        try {
            
            br = new BufferedReader(new FileReader(csvFile));
            
            br = new BufferedReader(new FileReader(csvFile));
            int n_l = 0;
            while ((line = br.readLine()) != null ) 
            {
                
                if (n_l != 0) {
                 
                    ArrayList<String> alumniCSV = new ArrayList<String>(Arrays.asList(line.split(cvsSplitBy)));
                    //System.out.println ("Print"+alumniCSV.size());
               
                    if (alumniCSV.size() != 12) {
                        for (int i = alumniCSV.size(); i < 12; i++ )
                        alumniCSV.add(i, null);
                    }
                    
                    /*for (int j=0; j < alumniCSV.size(); j++){
                        System.out.println(j+": "+alumniCSV.get(j));
                    }*/
                    /*System.out.println();*/
                    //System.out.println("SIZE: "+alumniCSV.size());
                    Alumni a = new Alumni();
                    
                    a.setName(BasicFunction.emptyToNull(alumniCSV.get(1)));
                    
                    a.setEmail_um(BasicFunction.emptyToNull(alumniCSV.get(4)));
                    a.setEmail_dois(BasicFunction.emptyToNull(alumniCSV.get(5)));
                    a.setInstituicao(BasicFunction.emptyToNull(alumniCSV.get(6)));
                    a.setProfissao(BasicFunction.emptyToNull(alumniCSV.get(7)));
                    a.setCurse(BasicFunction.emptyToNull(alumniCSV.get(2)));
                    a.setMorada(BasicFunction.emptyToNull(alumniCSV.get(8)));
                    //a.setAno_lec(BasicFunction.emptyToNull(alumniCSV.get(3)));
                    a.setPass(BasicFunction.emptyToNull(alumniCSV.get(11)));
                    
                     
                    if (BasicFunction.CheckStringIsNumber(alumniCSV.get(0))) {
                       
                        a.setNumber(Integer.parseInt(alumniCSV.get(0)));
                    }
                    
                    if (BasicFunction.CheckStringIsNumber(alumniCSV.get(9))) {
                        a.setTelefone_dois(Integer.parseInt(alumniCSV.get(9)));
                    }

                    if ( BasicFunction.CheckStringIsNumber(alumniCSV.get(10)) ) {
                        a.setTelefone_um(Integer.parseInt(alumniCSV.get(10)));
                    }         
                    
                    ListaAlumni.add(a);
                    
                }
                n_l += 1 ; 
            }
        } catch (FileNotFoundException e) {
        } catch (IOException e) {
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                }
            }
        }
        
        return ListaAlumni;
        //System.out.println("Done");
    }
    
   /* public void printList() {
        
        for (Alumni a : ListaAlumni) {
            
            System.out.println(a.toStringSimple());
        }
    }*/
    
}
