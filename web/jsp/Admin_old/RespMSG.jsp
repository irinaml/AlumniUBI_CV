<%-- 
    Document   : RespMSG
    Created on : Mar 23, 2016, 9:52:59 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String msgID =  request.getParameter("identMSG");
   
    int admin_id = (Integer) session.getAttribute("userId");
    int id = Integer.parseInt(msgID);
    boolean b = new DBAccess().RespMsg(id, admin_id);
   
    
    //BasicFunction.debugHere("msgID="+msgID+" admin_id="+admin_id);//
    if (b) {
        request.setAttribute("successMessage", "Mensagem eMarcada Como Respondida");
        request.removeAttribute("erroMessage");
    } else {
        request.setAttribute("erroMessage", "Erro ao marcar mensagem. Tente novamente");
        request.removeAttribute("successMessage");
    }
    
    request.getRequestDispatcher("ListaMensagem.jsp").forward(request, response);
%>
