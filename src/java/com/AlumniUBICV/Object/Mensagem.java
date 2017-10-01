/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.Object;

import java.sql.Date;

/**
 *
 * @author irina.m.lopes
 */
public class Mensagem {
    
    String assunto, msg;
    int id, alumni_num, admin_id;
    String alumniName, alumniEmail, AdminName;
    Date dt_msg;

    public Mensagem(String assunto, String msg, int id, int alumni_num, String alumniEmail, Date dt_msg, String alumniName) {
        this.assunto = assunto;
        this.msg = msg;
        this.id = id;
        this.alumni_num = alumni_num;
        this.alumniEmail = alumniEmail;
        this.dt_msg = dt_msg;
        this.alumniName = alumniName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getAlumni_num() {
        return alumni_num;
    }

    public void setAlumni_num(int alumni_num) {
        this.alumni_num = alumni_num;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getAlumniName() {
        return alumniName;
    }

    public void setAlumniName(String alumniName) {
        this.alumniName = alumniName;
    }

    public String getAdminName() {
        return AdminName;
    }

    public void setAdminName(String AdminName) {
        this.AdminName = AdminName;
    }

    public String getAlumniEmail() {
        return alumniEmail;
    }

    public void setAlumniEmail(String alumniEmail) {
        this.alumniEmail = alumniEmail;
    }

    public Date getDt_msg() {
        return dt_msg;
    }

    public void setDt_msg(Date dt_msg) {
        this.dt_msg = dt_msg;
    }
    
    
    
}
