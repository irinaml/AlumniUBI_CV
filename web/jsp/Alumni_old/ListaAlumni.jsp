<%-- 
    Document   : Lista
    Created on : Feb 29, 2016, 12:58:38 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.Object.Ilha"%>
<%@page import="com.AlumniUBICV.Object.Pais"%>
<%@page import="com.AlumniUBICV.Object.Curso"%>
<%@page import="com.AlumniUBICV.Object.Alumni"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>



    <%
        // Create an ArrayList with test data
    //(String nome, String ano, String curso, String pais, String ilha)

        ArrayList<Alumni> list = new DBAccess().ListAlumni(request.getParameter("nome"),
                request.getParameter("ano_ent"),
                request.getParameter("Course"),
                request.getParameter("Country"),
                request.getParameter("Island"));
        pageContext.setAttribute("alumni", list);
    %>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../../JS/jquery-2.0.2.js" type="text/javascript"></script>
        <script src="../../JS/bootstrap.min.js" type="text/javascript"></script>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
       
        <script type="text/javascript">
            function openPage(pageURL)
            {
                window.location.href = pageURL;
            }
        </script>
    </head>
    <body>

        <h1>Lista Alumni</h1><table border="1">
            <h3>Aniversariantes</h3>
            <%
                ArrayList<String> aniversa = new DBAccess().getAniversarianteMes();
                
                for (String a:  aniversa){
                    %>
                    <%=a%><br>
                <%}
                
            %>
            <form action="perfil">

                <input type="button" value="Editar Perfil" name=EdtPerfil"
                       onclick="openPage('EditPerfil.jsp')"/>
                &nbsp;&nbsp;
                <input type="submit" value="LogOut" />
                &nbsp;&nbsp;
                <input type="button" value="Enviar Mensagem" name=EdtPerfil"
                       onclick="openPage('Mensagem.jsp')"/>
            </form>
            <br>
            <br>
            <br>

            <form method="post" action="ListaAlumni.jsp">
                <label for="nome">Nome</label>
                <% String nome = request.getParameter("nome");
                    if (nome == null || nome == "") {
                %>
                <input type="text" name="nome" value="" />
                <%
                } else {
                %>
                <input type="text" name="nome" value=<%=nome%> />
                <%
                    }
                %>

                <label for="Course">Curso</label>
                <select name="Course" style="padding-left: 2em" >

                    <option value="">Curso</option>
                    <%
                        for (Curso c : (ArrayList<Curso>) new DBAccess().ListCurso("")) {
                            if (Integer.toString(c.getId()).equals(request.getParameter("Course"))) {

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
                <label for="ano_ent">Ano</label>
                <% String ano = request.getParameter("ano_ent");
                    if (ano == null || ano == "") {
                %>
                <input type="number" name="ano_ent" value="" />
                <%
                } else {
                %>
                <input type="number" name="ano_ent" value=<%=ano%> />
                <%
                    }
                %>

                <label for="Country">Pais</label>
                <select name="Country" style="padding-left: 2em" >
                    <option value="">Pais</option>
                    <%
                        
                        ArrayList<Pais> paises = new DBAccess().ListPais();
                        
                        for (Pais p : paises ) {
                            if (p.getPais().equals(request.getParameter("Country"))) {
                    %>
                        <option selected value=<%=p.getPais()%>><%=p.getPais()%></option>
                    <%
                    } else {
                    %>
                        <option value=<%=p.getPais()%>><%=p.getPais()%></option>
                    <%
                            }
                        }
                    %>
                </select>

                <label for="Island">Ilha</label>
                <select name="Island" style="padding-left: 2em" >
                    <option value="">Ilha</option>
                    <%
                        for (Ilha p : (ArrayList<Ilha>) new DBAccess().ListIlha()) {
                            if (Integer.toString(p.getId()).equals(request.getParameter("Island"))) {
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

                <input type="submit" value="Pesquisar" name="search" />
            </form>


            <br>
            <br>
            <br>
            <br> 
            <table id="myTable" class="table table-hover">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Numero</th>
                        <th>curso</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Ano letivo</th>
                        <th>Ilha/Pais</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Alumni a : (ArrayList<Alumni>) pageContext.getAttribute("alumni")) {
                    %>
                    <tr>                    
                        <td id ="<%=a.getId()%>"><%=a.getName()%></td>
                        <td id ="<%=a.getId()%>"><%=a.getNumber()%></td>
                        <td id ="<%=a.getId()%>"><%=a.getCurse()%></td>

                        <% if (a.getEmail_um()== null) {%>
                        <td id ="<%=a.getId()%>"></td>
                        <%
                        } else {
                        %>
                        <td id ="<%=a.getId()%>"><%=a.getEmail_um()%></td>
                        <%
                            }
                        %>

                        <% if (a.getTelefone_um()== 0) {%>
                        <td id ="<%=a.getId()%>"></td>
                        <%
                        } else {
                        %>
                        <td id ="<%=a.getId()%>"><%=a.getTelefone_um()%></td>
                        <%
                            }
                        %>

                        <% if (a.getAno_lec() == 0) {%>
                        <td id ="<%=a.getId()%>"></td>
                        <%
                        } else {
                        %>
                        <td id ="<%=a.getId()%>"><%=a.getAno_lec()%></td>
                        <%
                            }
                        %>

                        <% if (a.getLocal() == null) {%>
                        <td id ="<%=a.getId()%>"></td>
                        <%
                        } else {
                        %>
                        <td id ="<%=a.getId()%>"><%=a.getLocal()%></td>
                        <%
                            }
                        %>

                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

            <ul id="contextMenu" class="dropdown-menu" role="menu" style="display:none" >
                <li><a tabindex="-1" href="#">Detalhes</a></li>

                <li class="divider"></li>
                <!--<li><a tabindex="-1" href="#">Separated link</a></li>-->
            </ul>
            <form id ="detalheAlumni" action="DetalheAlumni.jsp" method="post">
                <input type="hidden" id="identAlumni" name="identAlumni" value="hiddenValue">

            </form>

            <script type='text/javascript'>//<![CDATA[ 
                (function ($, window) {

                    $.fn.contextMenu = function (settings) {

                        return this.each(function () {

                            // Open context menu
                            $(this).on("contextmenu", function (e) {
                                // return native menu if pressing control
                                if (e.ctrlKey)
                                    return;

                                //open menu
                                var $menu = $(settings.menuSelector)
                                        .data("invokedOn", $(e.target))
                                        .show()
                                        .css({
                                            position: "absolute",
                                            left: getMenuPosition(e.clientX, 'width', 'scrollLeft'),
                                            top: getMenuPosition(e.clientY, 'height', 'scrollTop')
                                        })
                                        .off('click')
                                        .on('click', 'a', function (e) {
                                            $menu.hide();

                                            var $invokedOn = $menu.data("invokedOn");
                                            var $selectedMenu = $(e.target);

                                            settings.menuSelected.call(this, $invokedOn, $selectedMenu);
                                        });

                                return false;
                            });

                            //make sure menu closes on any click
                            $('body').click(function () {
                                $(settings.menuSelector).hide();
                            });
                        });

                        function getMenuPosition(mouse, direction, scrollDir) {
                            var win = $(window)[direction](),
                                    scroll = $(window)[scrollDir](),
                                    menu = $(settings.menuSelector)[direction](),
                                    position = mouse + scroll;

                            // opening menu would pass the side of the page
                            if (mouse + menu > win && menu < mouse)
                                position -= menu;

                            return position;
                        }

                    };
                })(jQuery, window);

                $("#myTable td").contextMenu({
                    menuSelector: "#contextMenu",
                    menuSelected: function (invokedOn, selectedMenu) {
                        /*var msg = "You selected the menu item '" + selectedMenu.text() +
                         "' on the value '" + invokedOn.text() + "'";*/
                        $("#identAlumni").val(invokedOn.attr('id'));
                        //alert("msg="+invokedOn.attr('id'));
                        $("#detalheAlumni").submit();
                    }
                });
            </script>
    </body>
</html>