<%-- 
    Document   : RespLstMSG
    Created on : Mar 24, 2016, 9:58:44 AM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //String msgID =  request.getParameter("identMSG");
    String[] ids=request.getParameterValues("respSec");
    int admin_id = (Integer) session.getAttribute("userId");
   
    boolean b = true;
    int countErr = 0;
    int countSucc = 0;
    int countTotal = 0;
    for(String a: ids){
        int id = Integer.parseInt(a);
        b = new DBAccess().RespMsg(id, admin_id);
        countTotal +=1;
        
        if (b){
                countSucc += countSucc;
        }else{
            countErr += countErr;
        }
    
    //BasicFunction.debugHere("msgID="+msgID+" admin_id="+admin_id);//
        
    }
    if (countErr==0) {
            request.setAttribute("successMessage", "Mensagens Marcadas Como Respondidas");
            request.removeAttribute("erroMessage");
            request.removeAttribute("warnMessage");
        } else if (countSucc == 0){
            request.setAttribute("erroMessage", "Erro ao marcar mensagem. Tente novamente");
            request.removeAttribute("successMessage");
            request.removeAttribute("warnMessage");
        }else{
            request.setAttribute("warnMessage", countSucc+" marcadas com sucesso e "+countErr+ "com erro. Tente novamente");
            request.removeAttribute("successMessage");
            request.removeAttribute("erroMessage");
        }
    request.getRequestDispatcher("ListaMensagem.jsp").forward(request, response);
%>
