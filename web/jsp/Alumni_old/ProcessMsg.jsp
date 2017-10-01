<%-- 
    Document   : ProcessMsg
    Created on : Mar 21, 2016, 6:21:55 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int alumni_id = (Integer) session.getAttribute("userId");
    String msg = request.getParameter("mensagem");
    String ass = request.getParameter("assunto");
    
    boolean b = new DBAccess().insertMsg(msg, ass, alumni_id);
    
    
    if (b) {
        request.setAttribute("successMessage", "Mensagem enviada com sucesso");
        request.removeAttribute("erroMessage");
    } else {
        request.setAttribute("erroMessage", "Erro ao eviar mensagem. Tente novamente");
        request.removeAttribute("successMessage");
    }
    
    request.getRequestDispatcher("Mensagem.jsp").forward(request, response);
%>

