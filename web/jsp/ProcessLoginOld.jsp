<%-- 
    Document   : login
    Created on : Feb 29, 2016, 2:16:45 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>

<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    String admin = request.getParameter("admin");

    /*Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "dbpass");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }*/
    //out.println(l);
    //BasicFunction.debugHere("ADMIN="+admin);
    if (admin != null) {
        int id = 11116;//new DBAccess().loginAdminValidade(userid, pwd);
        if (id > 0) {
            session.setAttribute("admin", "Y");
            session.setAttribute("userId", id);
            session.setAttribute("userEmail", userid);
            response.sendRedirect("Admin/ListaMensagem.jsp");
        } else {

            out.println("PASS: " + pwd + " USER: " + userid + " Invalid password <a href='../index.jsp'>try again</a>");
        }
        

    } else {
        int id = 18116;//new DBAccess().LoginAlumniValidate(userid, pwd);
        if (id > 0) {
            //HttpSession session = request.getSession(true);
            session.setAttribute("userId", id);
            session.setAttribute("userNum", userid);
            response.sendRedirect("Alumni/ListaAlumni.jsp");
        } else {

            out.println("PASS: " + pwd + " USER: " + userid + " Invalid password <a href='../index.jsp'>try again</a>");
        }
    }

%>