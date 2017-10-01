/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.Object;

import java.sql.Date;
import java.util.ArrayList;





/**
 *
 * @author irina.m.lopes
 */
public class Alumni {

    private String name, pass;
    private String curse;
    private String email_um, email_dois;
    private String profissao, instituicao;
    private String morada, ilha, pais, local;
    private String status;
    private int number;
    private int ano_lec;
    private int telefone_dois, telefone_um;
  
    private int id, curse_id, ilha_id;
    private Date aniversario;
    
    private ArrayList<Perfil> perfil;

    
    public Alumni(String name, String email_um, 
                  String email_dois, String profissao, String instituicao, 
                  String morada, int number, int ano_lec, 
                  int telefone_dois, int telefone_um, int id, 
                  int curse_id, int ilha_id, String pais, String status,
                  ArrayList<Perfil> perfil) {
        this.name = name;
        
        this.email_um = email_um;
        this.email_dois = email_dois;
        this.profissao = profissao;
        this.instituicao = instituicao;
        this.morada = morada;
        this.number = number;
        this.ano_lec = ano_lec;
        this.telefone_dois = telefone_dois;
        this.telefone_um = telefone_um;
        this.id = id;
        this.curse_id = curse_id;
        this.ilha_id = ilha_id;
        this.status = status;
        this.perfil = perfil;
       
    }
    
    public Alumni(String name, String email_um, 
                  String email_dois, String profissao, String instituicao, 
                  String morada, int id) {
        this.name = name;
        
        this.email_um = email_um;
        this.email_dois = email_dois;
        this.profissao = profissao;
        this.instituicao = instituicao;
        this.morada = morada;
        this.number = number;
        this.ano_lec = ano_lec;
        this.telefone_dois = telefone_dois;
        this.telefone_um = telefone_um;
        this.id = id;
        this.curse_id = curse_id;
        this.ilha_id = ilha_id;
  
    }
    
    
    
    public Alumni(int id, String name, String curse, String email_um, String local, int number, int ano_lec, int telefone_um) {

        this.name = name;
        this.curse = curse;
        this.email_um = email_um;
        this.local = local;
        this.number = number;
        this.ano_lec = ano_lec;
        this.telefone_um = telefone_um;
        this.id = id;
    }
    
    public Alumni(String name, int number) {
        this.name = name;
        this.number = number;
    }

    public Alumni() {
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the curse
     */
    public String getCurse() {
        return curse;
    }

    /**
     * @param curse the curse to set
     */
    public void setCurse(String curse) {
        this.curse = curse;
    }

    /**
     * @return the email_um
     */
    public String getEmail_um() {
        return email_um;
    }

    /**
     * @param email_um the email_um to set
     */
    public void setEmail_um(String email_um) {
        this.email_um = email_um;
    }

    /**
     * @return the email_dois
     */
    public String getEmail_dois() {
        return email_dois;
    }

    /**
     * @param email_dois the email_dois to set
     */
    public void setEmail_dois(String email_dois) {
        this.email_dois = email_dois;
    }

    /**
     * @return the instituicao
     */
    public String getInstituicao() {
        return instituicao;
    }

    /**
     * @param instituicao the instituicao to set
     */
    public void setInstituicao(String instituicao) {
        this.instituicao = instituicao;
    }

    /**
     * @return the profissao
     */
    public String getProfissao() {
        return profissao;
    }

    /**
     * @param profissao the profissao to set
     */
    public void setProfissao(String profissao) {
        this.profissao = profissao;
    }

    /**
     * @return the morada
     */
    public String getMorada() {
        return morada;
    }

    /**
     * @param morada the morada to set
     */
    public void setMorada(String morada) {
        this.morada = morada;
    }

    /**
     * @return the number
     */
    public int getNumber() {
        return number;
    }

    /**
     * @param number the number to set
     */
    public void setNumber(int number) {
        this.number = number;
    }

    /**
     * @return the ano_lec
     */
    public int getAno_lec() {
        return ano_lec;
    }

    /**
     * @param ano_lec the ano_lec to set
     */
    public void setAno_lec(int ano_lec) {
        this.ano_lec = ano_lec;
    }

    /**
     * @return the telefone_dois
     */
    public int getTelefone_dois() {
        return telefone_dois;
    }

    /**
     * @param telefone_dois the telefone_dois to set
     */
    public void setTelefone_dois(int telefone_dois) {
        this.telefone_dois = telefone_dois;
    }

    /**
     * @return the telefone_um
     */
    public int getTelefone_um() {
        return telefone_um;
    }

    /**
     * @param telefone_um the telefone_um to set
     */
    public void setTelefone_um(int telefone_um) {
        this.telefone_um = telefone_um;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIlha() {
        return ilha;
    }

    public void setIlha(String ilha) {
        this.ilha = ilha;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getCurse_id() {
        return curse_id;
    }

    public void setCurse_id(int curse_id) {
        this.curse_id = curse_id;
    }

    public int getIlha_id() {
        return ilha_id;
    }

    public void setIlha_id(int ilha_id) {
        this.ilha_id = ilha_id;
    }

   
    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }
    
     public Date getAniversario() {
        return aniversario;
    }

    public void setAniversario(Date aniversario) {
        this.aniversario = aniversario;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
    @Override
    public String toString() {
        return "Alumni{" + "name=" + name + ", curse=" + curse + ", email=" + email_um + ", email_work=" + email_dois + ", instituicao=" + instituicao + ", profissao=" + profissao + ", morada=" + morada + ", number=" + number + ", year=" + ano_lec + ", phone=" + telefone_dois + ", mobile=" + telefone_um + '}';
    }

    public String toStringSimple() {
        return "Alumni{" + "name=" + name + ", curse=" + curse + '}';
    }
    
    public boolean isPerfil(int perfilID){
        for (Perfil aux: perfil){
            if (aux.getId() == perfilID){
                return true;
            }
        }
        return false;
    }

}
