<%-- 
    Document   : processCurso
    Created on : Mar 29, 2016, 8:16:37 AM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //String msgID =  request.getParameter("identMSG");
    //String nome = request.getParameterValues("nmCurso");
    //String desc = request.getParameterValues("desCurso");
    
    String nomec = request.getParameter("nmCurso");
    String descc = request.getParameter("desCurso");
    String id = request.getParameter("idCEdt");

    if (id == null || id == "" || id == "-1"){
        boolean b = new DBAccess().InsertCurse(nomec, descc);

        if (b){
            request.setAttribute("successMessage", "Curso Adicionado com Sucesso");
            request.removeAttribute("erroMessage");
        }else{
            request.setAttribute("erroMessage", "Erro ao adicionar Curso. Tente novamente");
            request.removeAttribute("successMessage");
        }
    }else{
        boolean b = new DBAccess().EdtCurse( nomec,  descc,  id);

        if (b){
            request.setAttribute("successMessage", "Curso Editado com Sucesso");
            request.removeAttribute("erroMessage");
        }else{
            request.setAttribute("erroMessage", "Erro ao editar Curso. Tente novamente");
            request.removeAttribute("successMessage");
        }
    }
        
    
            request.getRequestDispatcher("ListaCurso.jsp").forward(request, response);
%>

