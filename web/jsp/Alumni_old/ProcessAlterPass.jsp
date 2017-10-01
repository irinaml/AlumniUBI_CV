<%-- 
    Document   : ProcessAlterPass
    Created on : Mar 18, 2016, 12:47:11 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    
    
    String old_pass = request.getParameter("pass_old");
    String pass_u = request.getParameter("pass_u");
    String pass_d = request.getParameter("pass_d");
   
    
    int id  = Integer.parseInt(request.getParameter("id1"));
    
    String msgErr ="";
    String msgSucc ="";
    
    if (!pass_u.equals(pass_d)){
        
        msgErr = "Password não são iguais";
    }
    
    
    if(new DBAccess().ValidatePass(old_pass, id)){
        boolean p = new DBAccess().setAlumniPass(pass_u,id );
        if (p){
            msgSucc = "Passwor Alterado com sucesso";
        }
        else{
            msgErr = msgErr + "Erro ao Editar Password";
            
        }
        
    }else{
        msgErr = msgErr + "Password Não é valido";
    }
    
    BasicFunction.debugHere("msgErr="+msgErr+" msgSucc="+msgSucc);
    
     if (msgErr.length() > 1) {
        request.setAttribute("erroMessagePass", msgErr);
        request.removeAttribute("successMessagePass");
    } 
     if (msgSucc!= ""){
        request.setAttribute("successMessagePass", msgSucc);
        request.removeAttribute("erroMessagePass");
    }

    request.getRequestDispatcher("EditPerfil.jsp").forward(request, response);

            
        
   
%>
