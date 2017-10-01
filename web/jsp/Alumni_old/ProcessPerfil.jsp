<%-- 
    Document   : ProcessPerfil
    Created on : Mar 17, 2016, 3:38:35 PM
    Author     : irina.m.lopes
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="com.mysql.jdbc.StringUtils"%>
<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.Object.Alumni"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    /*String , String pass, String , 
                  String , String , String , 
                  String , int , int , 
                  int , int , int , 
                  int , int , int */
    
    String nome = request.getParameter("nome");
    

            // Convert from String to Date
            
    String aniv = request.getParameter("bDate");
    /*String old_pass = request.getParameter("old_pass");
    String pass_u = request.getParameter("pass_u");
    String pass_d = request.getParameter("pass_d");*/
    String email_um = request.getParameter("email_u");
    String email_dois = request.getParameter("email_d");
    String profissao = request.getParameter("profissao");
    String instituicao = request.getParameter("instituicao");
    String morada = request.getParameter("morada");
    int id  = Integer.parseInt(request.getParameter("id"));
    
    Alumni a = new Alumni(nome, email_um, 
                                  email_dois, profissao, 
                                  instituicao, morada,
                                  id);
    
    String prov = request.getParameter("numero");
    if (BasicFunction.CheckStringIsNumber(prov)){
        int number = Integer.parseInt(prov);
        a.setNumber(number);
    }
    
    prov = request.getParameter("ano_lec");
    if (BasicFunction.CheckStringIsNumber(prov)){
        int ano_lec = Integer.parseInt(prov);
        a.setAno_lec(ano_lec);
    }
    
    prov = request.getParameter("telefone_d");
    if (BasicFunction.CheckStringIsNumber(prov)){
        int telefone_dois = Integer.parseInt(prov);
        a.setTelefone_dois(telefone_dois);
    }
    
    prov = request.getParameter("telefone_u");
    if (BasicFunction.CheckStringIsNumber(prov)){
        int telefone_um = Integer.parseInt(prov);
        a.setTelefone_um(telefone_um);
    }
    
    prov = request.getParameter("Course");

    if (BasicFunction.CheckStringIsNumber(prov)){
        int curse_id = Integer.parseInt(prov);
        a.setCurse_id(curse_id);
    }
    
    prov = request.getParameter("Island");
    if (BasicFunction.CheckStringIsNumber(prov)){
        int ilha_id = Integer.parseInt(prov);
        a.setIlha_id(ilha_id);
    }
    
    if(aniv != null || aniv !=""){
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
         
        //Date startDate = df.parse(aniv);
        a.setAniversario(new java.sql.Date(df.parse(aniv).getTime()));
    }
    
    a.setPais(request.getParameter("Country"));
    
    
   //BasicFunction.debugHere("PROCESS PERFIL NUMBER ="+request.getParameter("numero"));
   
    boolean r = new DBAccess().setAlumni(a);
    if (r) {
        request.setAttribute("successMessage", "Perfil Alterado com sucesso");
        request.removeAttribute("erroMessage");
    } else {
        request.setAttribute("erroMessage", "Erro ao editar perfil. Tente novamente");
        request.removeAttribute("successMessage");
    }

    request.getRequestDispatcher("EditPerfil.jsp").forward(request, response);


%>
