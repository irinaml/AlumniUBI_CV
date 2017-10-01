<%-- 
    Document   : processDelCurso
    Created on : Mar 29, 2016, 8:52:00 AM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%
    //String msgID =  request.getParameter("identMSG");
    //String nome = request.getParameterValues("nmCurso");
    //String desc = request.getParameterValues("desCurso");

    String id = request.getParameter("identCursoDel");
    
    
    if (id != null || id != "" || id != "-1") {
        int c = new DBAccess().CanDelCurso(id);
        BasicFunction.debugHere("IDENTIFICADOR CURSO ===" + id);
        BasicFunction.debugHere("Contador CURSO ===" + c);
        if (c == 0) {
            boolean b = new DBAccess().DelCurse(id);

            if (b) {
                request.setAttribute("successDelMessage", "Curso Eliminado com Sucesso");
                request.removeAttribute("erroDelMessage");
            } else {
                request.setAttribute("erroDelMessage", "Erro ao eliminar Curso. Tente novamente");
                request.removeAttribute("successDelMessage");
            }

        } else {
            request.setAttribute("erroDelMessage", "Curso associado a alunos");
            request.removeAttribute("successDelMessage");
        }
        

    }

    request.getRequestDispatcher("ListaCurso.jsp").forward(request, response);
%>

