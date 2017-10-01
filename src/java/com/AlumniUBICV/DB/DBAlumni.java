/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.DB;

import static com.AlumniUBICV.DB.DBAccess.DB_URL;
import com.AlumniUBICV.Object.Alumni;
import com.AlumniUBICV.Object.Perfil;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author irina.m.lopes
 */
public class DBAlumni extends DBAccess{

    
   
        
        
        
    public int LoginAlumniValidate(String username, String password) {
        
       
        int count = -1;
        try {
            String sql = "SELECT id FROM alumni WHERE NUMERO = \"" + username + "\" and password= '" + password + "'";
            ResultSet r = OpenConnectionDB(sql);

            //STEP 5: Extract data from result set
            if (r != null){
            while (r.next()) {
                //Retrieve by column name
                count = r.getInt(1);
            }

            return count;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();
        }

        return count;
    }

    public ArrayList<Alumni> ListAlumni(String nome, String ano, String curso, String pais, String ilha) {
           
        DBAccess db = new DBAccess();
        ArrayList<Alumni> al = new ArrayList<Alumni>();
        try {
            String FNome, FAno, FCurso, FPais, FIlha;

            if (nome == null || "".equals(nome)) {
                FNome = " and a.nome like \"%%\"";
            } else {
                FNome = " and a.nome like \"%" + nome + "%\"";
            }

            if (ano == null || "".equals(ano)) {
                FAno = " and (a.Ano_Lec = a.Ano_Lec or a.Ano_Lec is null) ";
            } else {
                FAno = " and a.Ano_Lec = " + ano + " ";
            }

            if (pais == null || "".equals(pais)) {
                FPais = " and (a.pais = a.pais or a.pais is null) ";
            } else {
                FPais = " and a.pais = \"" + pais + "\"";
            }

            if (ilha == null || "".equals(ilha)) {
                FIlha = " and (a.ilha_id = a.ilha_id or a.ilha_id is null) ";
            } else {
                FIlha = " and a.ilha_id = " + ilha + " ";
            }

            if (curso == null || "".equals(curso)) {
                FCurso = " and a.curso_id = a.curso_id ";
            } else {
                FCurso = " and a.curso_id = " + curso + " ";
            }

            /*
                    
                    
                     
                     order by a.Nome
             */
            String sql = "SELECT a.ID, a.NUMERO, a.Nome, a.Ano_Lec, a.email_um, "
                    + "  a.Morada, a.Telefone_um, c.nome curso, "
                    + " CASE "
                    + " when a.ilha_id is NOT null THEN "
                    + " CONCAT(\"Cabo Verde - \", i.ilha) "
                    + " WHEN a.pais is not null then "
                    + " a.pais "
                    + " END local "
                    + " FROM alumni a LEFT JOIN ilha i ON (a.ilha_id = i.id) join curso c on a.curso_id = c.id "
                    + " where 1= 1"
                    + FNome
                    + FAno
                    + FPais
                    + FIlha
                    + FCurso
                    + " order by a.nome";
            
            ResultSet r = OpenConnectionDB(sql);
            
            while (r.next()) {
                //Retrieve by column name
                al.add(new Alumni(r.getInt("ID"),
                        r.getString("Nome"),
                        r.getString("Curso"),
                        r.getString("email_um"),
                        r.getString("local"),
                        r.getInt("NUMERO"), r.getInt("Ano_Lec"), r.getInt("Telefone_um")
                ));

            }
            return al;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return al;
    }

    
    public int loginAdminValidade(String user_mail, String pass){

        
        int id = -1;
        try {
            String sql = "SELECT id FROM admin WHERE PASSWORD = '"+pass+"' and email = '"+user_mail+"'";
            ResultSet r = OpenConnectionDB(sql);
            
            
            //STEP 5: Extract data from result set
            while (r.next()) {
                //Retrieve by column name
                id = r.getInt(1);
            }

            return id;

        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();
        }

        return id;
    }
  
        public Alumni DetAlumni(String id) {
            
         
        Alumni l = new Alumni();
        try {
            String sql = "SELECT a.ID, a.NUMERO, a.Nome, a.Ano_Lec, a.email_um, " +
                        " a.email_dois, a.Morada, a.Telefone_um, c.nome curso, a.curso_id, " +
                        "  i.ilha, a.ilha_id, a.instituicao, a.aniversario, " +
                        " Telefone_dois, a.profissao, a.morada, a.pais, " +
                        " CASE " +
                        " when a.ilha_id is NOT null THEN " +
                        " CONCAT(\"Cabo Verde - \", i.ilha) " +
                        " WHEN a.pais is not null then " +
                        " a.pais " +
                        " END local " +
                        " FROM alumni a " +
                        " LEFT JOIN ilha i ON (a.ilha_id = i.id) join curso c on a.curso_id = c.id " +
                        " WHERE a.ID= " + id;
            System.out.println("sql::::"+sql);
            ResultSet r = OpenConnectionDB(sql);
            DateFormat df = new SimpleDateFormat("dd/MM/yyyy"); 
            while (r.next()) {
                //Retrieve by column nameprivate String name, pass;
                    
                l.setAno_lec(r.getInt("Ano_Lec"));
                l.setCurse(r.getString("curso"));
                l.setCurse_id(r.getInt("curso_id"));
                l.setEmail_um(r.getString("email_um"));
                l.setEmail_dois(r.getString("email_dois"));
                l.setId(r.getInt("ID"));
                l.setIlha(r.getString("ilha"));
                l.setIlha_id(r.getInt("ilha_id"));
                l.setInstituicao(r.getString("instituicao"));
                l.setLocal(r.getString("local"));
                l.setTelefone_um(r.getInt("Telefone_um"));
                l.setTelefone_dois(r.getInt("Telefone_dois"));
                l.setProfissao(r.getString("profissao"));
                l.setMorada(r.getString("morada"));
                l.setPais(r.getString("pais"));
                l.setNumber(r.getInt("NUMERO"));
                l.setName(r.getString("Nome"));
                l.setAniversario(r.getDate("Aniversario"));

            }
            
            return l;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return l;
    }

    public boolean ValidatePass(String pass, int id) {
        

        Alumni l = new Alumni();
        try {
            String sql = "SELECT count(*) valide "
                    + " FROM alumni "
                    + " WHERE ID=" + id
                    + " and password = '" + pass + "'";

            ResultSet r = OpenConnectionDB(sql);
            int c = 0;
            while (r.next()) {
                //Retrieve by column nameprivate String name, pass;
                c = r.getInt("valide");
            }
            return c == 1;
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return false;
    }

    public boolean setAlumni(Alumni a) {
        

        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            
            // create the java mysql update preparedstatement
            String sql = "UPDATE alumni SET "
                    + "NUMERO=?," //1
                    + "Nome=?," //2
                    + "Ano_Lec=?," //3
                    + " email_um=?," //4
                    + "email_dois=?," //5
                    + "Instituicao=?," //6
                    + "profissao=?," //7
                    + "pais=?," //8
                    + "ilha_id=?," //9
                    + "Morada=?," //10
                    + "Telefone_um=?," //11
                    + "Telefone_dois=?," //12
                    + "curso_id=?, " //13
                    + "aniversario=? " //14
                    + " WHERE id = ?"; //15
            
            
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setInt(1, a.getNumber());
            preparedStmt.setString(2, a.getName());
            
            if (a.getAno_lec() == 0){
                preparedStmt.setNull(3, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(3, a.getAno_lec());
            }
            
            if ("".equals(a.getEmail_um())){
                preparedStmt.setNull(4, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(4, a.getEmail_um());
            }
                   
            if ("".equals(a.getEmail_dois())){
                preparedStmt.setNull(5, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(5, a.getEmail_dois());
            }
            
            if ("".equals(a.getInstituicao())){
                preparedStmt.setNull(6, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(6, a.getInstituicao());
            }
            
            if ("".equals(a.getProfissao())){
                preparedStmt.setNull(7, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(7, a.getProfissao());
            }
            
           
                preparedStmt.setString(8, a.getPais());
            
            
            if (a.getIlha_id() == 0){
                preparedStmt.setNull(9, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(9, a.getIlha_id());
            }
            
            if ("".equals(a.getMorada())){
                preparedStmt.setNull(10, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(10, a.getMorada());
            }
            
            if (a.getTelefone_um() == 0){
                preparedStmt.setNull(11, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(11, a.getTelefone_um());
            }
            
            
            if (a.getTelefone_dois() == 0){
                preparedStmt.setNull(12, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(12, a.getTelefone_dois());
            }
            
            if (a.getCurse_id() == 0){
                preparedStmt.setNull(13, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(13, a.getCurse_id());
            }
            
            if (a.getAniversario()== null){
                preparedStmt.setNull(14, java.sql.Types.DATE);
            }
            else{
                preparedStmt.setDate(14, a.getAniversario());
            }
            
            if (a.getId() == 0){
                preparedStmt.setNull(15, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(15, a.getId());
            }
  
            
            
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

    public boolean setAlumniPass(String pass, int id) {
        
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "UPDATE alumni SET "
                    + "password=?" //1
                    + " WHERE id = ?"; //2
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setString(1, pass);
            preparedStmt.setInt(2, id);
            
            

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
    
    public ArrayList<Perfil> getPerfilAlumni(int alumniID){
        
        ArrayList<Perfil> perfil = new ArrayList<Perfil>();
        
       
        try {
            String sql = "SELECT id, nome FROM perfil "
                    + "         WHERE id in (select perfil_id from alumni_perfil where allumni_id = "+alumniID+" )";
            ResultSet r = OpenConnectionDB(sql);

           
            if (r != null){
                while (r.next()) {
                    //Retrieve by column name
                    perfil.add(new Perfil(r.getInt(1), r.getString(2)));

                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();
        }
    
        return perfil;
    
    }
            
            
            
    public boolean regAlumni(Alumni a) {
        try {
            // create a java mysql database connection

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // create the java mysql update preparedstatement
            String sql = "UPDATE alumni SET "
                    + "NUMERO=?," //1
                    + "Nome=?," //2
                    + "Ano_Lec=?," //3
                    + " email_um=?," //4
                    + "email_dois=?," //5
                    + "Instituicao=?," //6
                    + "profissao=?," //7
                    + "pais=?," //8
                    + "ilha_id=?," //9
                    + "Morada=?," //10
                    + "Telefone_um=?," //11
                    + "Telefone_dois=?," //12
                    + "curso_id=? " //13
                    + " WHERE id = ?"; //14
            
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
            preparedStmt.setInt(1, a.getNumber());
            preparedStmt.setString(2, a.getName());
            
            if (a.getAno_lec() == 0){
                preparedStmt.setNull(3, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(3, a.getAno_lec());
            }
            
            if ("".equals(a.getEmail_um())){
                preparedStmt.setNull(4, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(4, a.getEmail_um());
            }
                   
            if ("".equals(a.getEmail_dois())){
                preparedStmt.setNull(5, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(5, a.getEmail_dois());
            }
            
            if ("".equals(a.getInstituicao())){
                preparedStmt.setNull(6, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(6, a.getInstituicao());
            }
            
            if ("".equals(a.getProfissao())){
                preparedStmt.setNull(7, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(7, a.getProfissao());
            }
            
           
                preparedStmt.setString(8, a.getPais());
            
            
            if (a.getIlha_id() == 0){
                preparedStmt.setNull(9, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(9, a.getIlha_id());
            }
            
            if ("".equals(a.getMorada())){
                preparedStmt.setNull(10, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setString(10, a.getMorada());
            }
            
            if (a.getTelefone_um() == 0){
                preparedStmt.setNull(11, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(11, a.getTelefone_um());
            }
            
            
            if (a.getTelefone_dois() == 0){
                preparedStmt.setNull(12, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(12, a.getTelefone_dois());
            }
            
            if (a.getCurse_id() == 0){
                preparedStmt.setNull(13, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(13, a.getCurse_id());
            }
            
            if (a.getId() == 0){
                preparedStmt.setNull(14, java.sql.Types.INTEGER);
            }
            else{
                preparedStmt.setInt(14, a.getId());
            }
  
            
            
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
    
    public ArrayList<String> getAniversarianteMes() {
        
    
        ArrayList<String> nomes = new ArrayList<String>();
        try {
            String sql = "select nome from alumni where month(aniversario) = month(CURDATE())";

            ResultSet r = OpenConnectionDB(sql);
            
            while (r.next()) {
                //Retrieve by column nameprivate String name, pass;
                nomes.add(r.getString("nome"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            CloseConnectionDB();

        }
        return nomes;
    }
    
}
