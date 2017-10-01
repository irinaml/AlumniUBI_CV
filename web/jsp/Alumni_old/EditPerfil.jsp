<%-- 
    Document   : AlumniForma
    Created on : Mar 17, 2016, 11:58:43 AM
    Author     : irina.m.lopes
--%>


<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
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
        <script type="text/javascript">
            function openPage(pageURL)
            {
                window.location.href = pageURL;
            }
        </script>
        <script>
            function validate() {
                var name = document.formAlumni.nome.value;
                var number = document.formAlumni.numero.value;//numberloc
                var ano = document.formAlumni.ano_lec.value;//ano_lec //ano_lec_loc
                var email = document.formAlumni.email_u.value;//email_u email_loc
                var curso = document.formAlumni.Course.value;

                //var password = document.f1.password.value;
                //alert("curso = "+curso);
                var status = true;

                if (name.length < 1) {
                    document.getElementById("nomeloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o nome";
                    status = false;
                } else {
                    document.getElementById("nomeloc").innerHTML = "<img src='../../img/checked.gif'/>";
                    //status = true;
                }
                if (curso.length < 1 || curso === "null") {
                    document.getElementById("Courseloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o Curso";
                    status = false;
                } else {
                    document.getElementById("Courseloc").innerHTML = "<img src='../../img/checked.gif'/>";
                    //status = true;
                }

                if (number.length < 1) {
                    document.getElementById("numberloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o número";
                    status = false;
                } else {
                    document.getElementById("numberloc").innerHTML = "<img src='../../img/checked.gif'/>";
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

                return status;
            }

            function matchpass() {
                var firstpassword = document.formPass.pass_u.value;
                var secondpassword = document.formPass.pass_d.value;
                
                //alert ("firstpassword= "+firstpassword+" secondpassword="+secondpassword);
                if (firstpassword < 6){
                    document.getElementById("pass_u_loc").innerHTML =
                 "<img src='../../img/unchecked.gif'/> Password tem de ter pelo menos 6 carateres";
                    return false;
                }
                
                
                if (firstpassword === secondpassword) {
                    
                    document.getElementById("pass_u_loc").innerHTML = "<img src='../../img/checked.gif'/>";
                    document.getElementById("pass_d_loc").innerHTML = "<img src='../../img/checked.gif'/>";
                    return true;
                } else {
                    
                    document.getElementById("pass_u_loc").innerHTML =
                 "<img src='../../img/unchecked.gif'/>";
                    document.getElementById("pass_d_loc").innerHTML =
                 "<img src='../../img/unchecked.gif'/> Password devem ser iguais";
                    return false;
                }
                return false;
            }
            
        </script>  
    </head>
    <body>
        <%  int userId = (Integer) session.getAttribute("userId");
            Alumni a = new DBAccess().DetAlumni(Integer.toString(userId));%>


        <h1>Dados de <%=a.getName()%></h1>

        <form name ="formAlumni" id="formAlumni" action="ProcessPerfil.jsp" onsubmit="return validate()">

            <input type="hidden" name="id" value="<%=a.getId()%>" />

            <table>
                <tr>
                    <td><label for="nome">Nome*</label>
                        <% String nome = a.getName();
                            if (nome == null || nome == "") {
                        %>
                        <input type="text" name="nome" value="" size=""/>
                        <%
                        } else {
                        %>
                        <input type="text" name="nome" value="<%=nome%>" />
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <span id="nomeloc"></span>
                    </td>

                </tr>
                <tr>
                    <td><label for="bDate">Aniversário</label>
                        <% Date aniv = a.getAniversario();
                            if (aniv == null) {
                        %>
                        <input type="text" name="bDate" placeholder="dd/mm/yyyy" onkeyup=" var v = this.value;
                                if (v.match(/^\d{2}$/) !== null) {
                                    this.value = v + '/';
                                } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
                                    this.value = v + '/';
                                }"
                                maxlength="10"
                         >                   
                        <%
                        } else {
                              DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                              String anivTxt = df.format(aniv);
                        %>
                        <input type="text" name="bDate" placeholder="dd/mm/yyyy" value ="<%=anivTxt%>" onkeyup=" var v = this.value;;
                                if (v.match(/^\d{2}$/) !== null) {
                                    this.value = v + '/';
                                } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
                                    this.value = v + '/';
                                }"
                                maxlength="10"
                         >
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <span id="nomeloc"></span>
                    </td>

                </tr>
                <tr>
                    <td>
                        <label for="numero">Número*</label>
                        <% int numero = a.getNumber();
                            if (numero == 0) {
                        %>
                        <input type="number" name="numero" value="" />
                        <%
                        } else {
                        %>
                        <input type="number" name="numero" value="<%=numero%>" />
                        <%
                            }
                        %>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="ano_lec">Ano*</label>
                        <% int ano = a.getAno_lec();
                            if (ano == 0) {
                        %>
                        <input type="number" name="ano_lec" value="" />
                        <%
                        } else {
                        %>
                        <input type="number" name="ano_lec" value="<%=ano%>" />
                        <%
                            }
                        %>
                    </td>
                    <td><span id="ano_lec_loc"></span></td>
                </tr>


                <tr>
                    <td>
                        <label for="Course">Curso*</label>
                        <select name="Course" style="padding-left: 2em" >

                            <option value="null">Curso</option>
                            <%
                                for (Curso c : (ArrayList<Curso>) new DBAccess().ListCurso("")) {
                                    if (c.getId() == a.getCurse_id()) {

                            %>

                            <option selected value=<%=c.getId()%>><%=c.getNome()%></option>
                            <%

                            } else {

                            %>
                            <option value=<%=c.getId()%>><%=c.getNome()%></option>
                            <%
                                    }
                                }
                            %>

                        </select>
                    </td>
                    <td><span id="Courseloc"></span></td>
                </tr>

                <tr>

                    <td>
                        <label for="Country">Pais</label>
                        <% String pais = a.getPais();
                            if (pais == null || pais == "") {
                        %>
                            <input type="text" name="Country" value="" />
                        <%
                        } else {
                        %>
                        <input type="text" name="Country" value="<%=pais%>" />
                        <%
                            }
                        %>    
                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="Island">Ilha</label>
                        <select name="Island" style="padding-left: 2em" >
                            <option value="null">Ilha</option>
                            <%
                                for (Ilha p : (ArrayList<Ilha>) new DBAccess().ListIlha()) {
                                    if (p.getId() == a.getIlha_id()) {
                            %>
                            <option selected value=<%=p.getId()%>><%=p.getIlha()%></option>
                            <%
                            } else {
                            %>
                            <option value=<%=p.getId()%>><%=p.getIlha()%></option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <label for="email_u">E-mail Pricipal*</label>
                        <% String email_u = a.getEmail_um();
                            if (email_u == null || email_u == "") {
                        %>
                        <input type="text" name="email_u" value="" />
                        <%
                        } else {
                        %>
                        <input type="text" name="email_u" value="<%=email_u%>" />
                        <%
                            }
                        %>
                    </td>
                    <td><span id="email_loc"></span></td>  
                </tr>

                <tr>
                    <td>
                        <label for="email_d">E-mail Secundário</label>
                        <% String email_d = a.getEmail_dois();
                            if (email_d == null || email_d == "") {
                        %>
                        <input type="text" name="email_d" value="" />
                        <%
                        } else {
                        %>
                        <input type="text" name="email_d" value="<%=email_d%>" />
                        <%
                            }
                        %>
                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="tele_u">Telefone Principal</label>
                        <% int tele_u = a.getTelefone_um();
                       
                            if (tele_u == 0) {
                        %>
                        <input type="number" name="tele_u" value="" />
                        <%
                        } else {
                        %>
                        <input type="number" name="tele_u" value="<%=tele_u%>" />
                        <%
                            }
                        %>
                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="tele_d">Telefone Secundário</label>
                        <% int tele_d = a.getTelefone_dois();
                            if (tele_d == 0) {
                        %>
                        <input type="number" name="tele_d" value="" />
                        <%
                        } else {
                        %>
                        <input type="number" name="tele_d" value="<%=tele_d%>" />
                        <%
                            }
                        %>
                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="morada">Morada</label>
                        <% String morada = a.getMorada();
                            if (morada == null || morada == "") {
                        %>
                        <textarea form ="formAlumni" name="morada" id="morada" cols="35" wrap="soft"></textarea>

                        <%
                        } else {
                        %>
                        <textarea form ="formAlumni" name="morada" id="morada" cols="35" wrap="soft"><%=morada%></textarea>
                        <%
                            }
                        %>
                        <br>

                        <label for="profissao">Profissão</label>
                        <% String profissao = a.getProfissao();
                            if (profissao == null || profissao == "") {
                        %>
                        <input type="text" name="profissao" value="" />
                        <%
                        } else {
                        %>
                        <input type="text" name="profissao" value="<%=profissao%>" />
                        <%
                            }
                        %>
                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        <label for="instituicao">Instituição</label>
                        <% String instituicao = a.getInstituicao();
                            if (instituicao == null || instituicao == "") {
                        %>
                        <input type="text" name="instituicao" value="" />
                        <%
                        } else {
                        %>
                        <input type="text" name="instituicao" value="<%=instituicao%>" />
                        <%
                            }
                        %>
                    </td>
                    <td></td>
                </tr>


                <tr><td>
                        <div style="color: #33cc33;">${successMessage}</div>
                        <div style="color: #FF0000;">${erroMessage}</div>
                    </td></tr>

                <tr>
                    <td><input type="submit" value="Gravar" name="Gravar"/>
                        <input type="button" value="Alterar Password" name=altPass"
                               onclick="openPage('AlterPass.jsp')"/>
                        <input type="button" value="Cancelar" name=Cancelar"
                               onclick="openPage('ListaAlumni.jsp')"/></td>

            </table>
        </form>
        <form name ="formPass" id="formPass" action="ProcessAlterPass.jsp" onsubmit="return matchpass()">
            <input type="hidden" name="id1" value="<%=a.getId()%>" />
            <table border="0">

                <tr>
                    <td>
                        <label for="pass_old">Password Antigo*</label>
                        <input type="password" name="pass_old" value="" size=""/>
                    </td>
                    <td><span id="pass_old_loc"></span></td>
                </tr>

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
                    <td>
                        <div style="color: #33cc33;">${successMessagePass}</div>
                        <div style="color: #FF0000;">${erroMessagePass}</div>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Gravar" name="Gravar"/></td>
               
                </tr>

            </table>


        </form>
    </body>
</html>
