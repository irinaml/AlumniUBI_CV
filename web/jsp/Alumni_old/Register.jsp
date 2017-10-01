<%-- 
    Document   : Register
    Created on : Mar 30, 2016, 8:15:52 AM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.Object.Curso"%>
<%@page import="com.AlumniUBICV.Object.Ilha"%>
<%@page import="com.AlumniUBICV.Object.Pais"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="com.AlumniUBICV.Object.Alumni"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumni Formulário</title>
       
        <script>
             function openPage(pageURL)
            {
                window.location.href = pageURL;
            }
            </script>
     <script>       
            function val(){
                
                var name = "iwiina";//document.formAlumniReg.nome.value;
                /*var ano = document.formAlumniReg.ano_lec.value;//ano_lec //ano_lec_loc
                var email = document.formAlumniReg.email_u.value;//email_u email_loc
                var curso = document.formAlumniReg.Course.value;
                var curso_out = document.formAlumniReg.curso_outro.value;*/
                
                alert("name Validate register AEUUUU=="+name);
                
                
                /*var firstpassword = document.formPass.pass_u.value;
                var secondpassword = document.formPass.pass_d.value;
                
                var status = false;*/
                
                alert("name Validate register AEUUUU=="+name);
                
                if (name.length < 1) {
                    document.getElementById("nomeloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o nome";
                    status = false;
                } else {
                    document.getElementById("nomeloc").innerHTML = "<img src='../../img/checked.gif'/>";
                    //status = true;
                }
                
                if ((curso.length < 1 || curso === "null") && firstpassword.length < 1) {
                    document.getElementById("Courseloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o Curso";
                    status = false;
                } else {
                    document.getElementById("Courseloc").innerHTML = "<img src='../../img/checked.gif'/>";
                    //status = true;
                }

                if (ano.length < 1) {
                    document.getElementById("ano_lec_loc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o ano em que entrou";
                    status = false;
                } else {
                    document.getElementById("ano_lec_loc").innerHTML = "<img src='../../img/checked.gif'/>";
                    //status = true;
                }

                if (email.length < 1) {
                    document.getElementById("email_loc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o email";
                    status = false;
                } else {
                    document.getElementById("email_loc").innerHTML = "<img src='../../img/checked.gif'/>";
                    //status = true;
                }
                
                 if (firstpassword < 6) {
                    document.getElementById("pass_u_loc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Password tem de ter pelo menos 6 carateres";
                    status= false;
                }


               /* if (firstpassword === secondpassword) {

                    document.getElementById("pass_u_loc").innerHTML = "<img src='../../img/checked.gif'/>";
                    document.getElementById("pass_d_loc").innerHTML = "<img src='../../img/checked.gif'/>";
                    status = true;
                } else {

                    document.getElementById("pass_u_loc").innerHTML =
                            "<img src='../../img/unchecked.gif'/>";
                    document.getElementById("pass_d_loc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Password devem ser iguais";
                    status = false;
                }*/

                //return status;
                return false;
            }

        </script>  
    </head>
    <body>



        <h1>Pedido de Registo</h1>

        <form name ="formAlumniReg" id="formAlumniReg" action="ProcessReg.jsp" onsubmit="return val()">


            <table>
                <tr>
                    <td><label for="nome">Nome*</label>                    
                        <input type="text" name="nome" value="" size=""/>
                    </td>
                    <td>
                        <span id="nomeloc"></span>
                    </td>

                </tr>
                <tr>
                    <td>
                        <label for="numero">Número</label>

                        <input type="number" name="numero" value="" />

                    </td>
                    <td>
                        <span id="numberloc"></span>
                    </td>

                </tr>

                <tr>
                    <td>
                        <label for="ano_lec">Ano*</label>

                        <input type="number" name="ano_lec" value="" />

                    </td>
                    <td><span id="ano_lec_loc"></span></td>
                </tr>


                <tr>
                    <td>
                        <label for="Course">Curso*</label>
                        <select name="Course" style="padding-left: 2em" >

                            <option selected value="null">Curso</option>
                            <%
                                for (Curso c : (ArrayList<Curso>) new DBAccess().ListCurso("")) {
                            %>

                            <option value=<%=c.getId()%>><%=c.getNome()%></option>
                            <%
                                }
                            %>

                        </select>
                        &ensp;&ensp;
                        <input type="text" id ="curso_outro" name="curso_outro" value="" />

                    </td>
                    <td><span id="Courseloc"></span></td>
                </tr>

                <tr>

                    <td>
                        <label for="Country">Pais</label>
                        <input type="text" name="Country" value="" />

                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="Island">Ilha</label>
                        <select name="Island" style="padding-left: 2em" >
                            <option selected value="null">Ilha</option>
                            <%
                                for (Ilha p : (ArrayList<Ilha>) new DBAccess().ListIlha()) {

                            %>
                            <option value=<%=p.getId()%>><%=p.getIlha()%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <label for="email_u">E-mail Pricipal*</label> 
                        <input type="text" name="email_u" value="" />

                    </td>
                    <td><span id="email_loc"></span></td>  
                </tr>

                <tr>
                    <td>
                        <label for="email_d">E-mail Secundário</label>
                        <input type="text" name="email_d" value="" />

                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="tele_u">Telefone Principal</label>

                        <input type="number" name="tele_u" value="" />

                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="tele_d">Telefone Secundário</label>

                        <input type="number" name="tele_d" value="" />

                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="morada">Morada</label>                        
                        <textarea form ="formAlumni" name="morada" id="morada" cols="35" wrap="soft"></textarea>

                        <br>

                        <label for="profissao">Profissão</label>
                        <input type="text" name="profissao" value="" />

                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="instituicao">Instituição</label>
                        <input type="text" name="instituicao" value="" />
                    </td>
                    <td></td>
                </tr>


                <tr><td>
                        <div style="color: #33cc33;">${successMessage}</div>
                        <div style="color: #FF0000;">${erroMessage}</div>
                    </td></tr>
                <tr>
                    <td>
                        <label for="pass_u">Password*</label>
                        <input type="password" name="pass_u" value="" size=""/>
                    </td>
                    <td><span id="pass_u_loc"></span></td>
                </tr>

                <tr>
                    <td>
                        <label for="pass_d">Confirmar Password*</label>
                        <input type="password" name="pass_d" value="" size=""/>
                    </td>
                    <td><span id="pass_d_loc"></span></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Gravar" name="Gravar"/>
                        <input type="button" value="Cancelar" name=Cancelar"
                               onclick="openPage('../../index.jsp')"/></td>
               
                <tr>

            </table>
        </form>
        
    </body>
</html>
