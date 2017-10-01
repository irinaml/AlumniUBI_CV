<%-- 
    Document   : ProcessReg
    Created on : Mar 30, 2016, 10:51:09 AM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.Object.Alumni"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String nome = request.getParameter("nome");
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
    
    
    a.setPais(request.getParameter("Country"));
    
    
   //BasicFunction.debugHere("PROCESS PERFIL NUMBER ="+request.getParameter("numero"));
   
    /*boolean r = new DBAccess().setAlumni(a);
    if (r) {
        request.setAttribute("successMessage", "Perfil Alterado com sucesso");
        request.removeAttribute("erroMessage");
    } else {
        request.setAttribute("erroMessage", "Erro ao editar perfil. Tente novamente");
        request.removeAttribute("successMessage");
    }

    request.getRequestDispatcher("EditPerfil.jsp").forward(request, response);*/


%>