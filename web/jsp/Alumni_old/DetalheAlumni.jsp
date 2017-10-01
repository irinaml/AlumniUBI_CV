<%-- 
    Document   : DetalheAlumni
    Created on : Mar 16, 2016, 11:53:54 AM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="com.AlumniUBICV.Object.Alumni"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Alumni a = new DBAccess().DetAlumni(request.getParameter("identAlumni")); %>
        
        <h1>Detalhe de <%=a.getName()%></h1>
        
          
         <br>
         Numero = <%=a.getNumber()%>
         <br>
         Curso = <%=a.getCurse()%>
         <br>
         Ano Lectivo Entrada = <%if(a.getAno_lec()==0 ){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getAno_lec()%>
                                      <%} %>
         <br>
         Email Principal = <%if(a.getEmail_um()==null ||  a.getEmail_um().equals("")){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getEmail_um()%>
                                      <%} %>
          <br>
         Email Secundario = <%if(a.getEmail_dois()==null ||  a.getEmail_dois().equals("")){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getEmail_dois()%>
                                      <%} %>
        
         <br>
         Telefone principal = <%if(a.getTelefone_um()==0 ){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getTelefone_um()%>
                                      <%} %>
          <br>
         Telefone Secundario = <%if(a.getTelefone_dois()==0 ){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getTelefone_dois()%>
                                      <%} %>
         <br>
         Pais = <%if(a.getPais()==null ||  a.getPais().equals("")){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getPais()%>
                                      <%} %>
        
         <br>
         Ilha = <%if(a.getIlha()==null ||  a.getIlha().equals("")){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getIlha()%>
                                      <%} %>
         <br>
         Intituicao trabalha = <%if(a.getInstituicao()==null ||  a.getInstituicao().equals("")){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getInstituicao()%>
                                      <%} %>
                                    
         <br>
         Profissão = <%if(a.getProfissao()==null ||  a.getProfissao().equals("")){%>
                                      N/D  
                                    <%} else{%>
                                    <%=a.getProfissao()%>
                                      <%} %>
        
               
    </body>
</html>
