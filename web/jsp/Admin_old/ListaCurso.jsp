<%-- 
    Document   : ListaCurso
    Created on : Mar 23, 2016, 10:56:52 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.Servlet.BasicFunction"%>
<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.AlumniUBICV.Object.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    // Create an ArrayList with test data
    //(String nome, String ano, String curso, String pais, String ilha)

    ArrayList<Curso> list = new DBAccess().ListCurso(request.getParameter("FiltroNM"));
    
    pageContext.setAttribute("lstCurso", list);
    

    String ident =request.getParameter("identCursoEdt");
    String nomeCurso = "";
    String desc = "";
    int id = -1;

    if (ident != null && ident != ""){

       Curso cEDT = new DBAccess().GetCurso(ident);
       if (cEDT.getId() != -1){

            nomeCurso = cEDT.getNome();
            
            if (cEDT.getDescricao() != null){
                desc = cEDT.getDescricao();
            }
            id = cEDT.getId();
       }
    }

            
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../../JS/jquery-2.0.2.js" type="text/javascript"></script>
        <script src="../../JS/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../JS/clearForm.js" type="text/javascript"></script>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/styles.css" rel="stylesheet" type="text/css"/>
        
        <script>
            function validate() {
                var nome = document.curso.nmCurso.value;//assuntoloc
                //var desc = document.curso.desCurso.value;//mensagemloc

                //var password = document.f1.password.value;


                if (nome.length < 1) {

                    document.getElementById("nomeloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o Nome do Curso";
                    return false;
                }


                return true;
            }


        </script>
    </head>
    <body>
        
       
        
        <div id='cssmenu'>
            <ul>
                <li ><a href='ListaMensagem.jsp'>Mensagem</a></li>
                <li class='active'><a href="ListaCurso.jsp">Curso</a></li>
                <li><a href='#'>Registos</a></li>
            </ul>
        </div>
        
         <h1>Cursos</h1>
        <br>
        <br>
        <br>
        <form id="curso" name="curso" action="processCurso.jsp" onsubmit="return validate()">
            
            <%
                if (id != -1){
            %>
                <input type="hidden" id="idCEdt" name="idCEdt" value="<%=id%>">
            <%
                } else{
            %>
                <input type="hidden" id="idCEdt" name="idCEdt" value="">
            <%
            }
            %>
            
            
            <table>
                <tr>
                    <td> 
                        <label for="nmCurso">Novo Curso*</label>

                        <input type="text" name="nmCurso" value="<%=nomeCurso%>" />
                    </td>
                    <td>
                        <label for="desCurso">Descrição</label>
                        <textarea name="desCurso" id = "desCurso" rows="4" cols="20"><%=desc%></textarea>
                    </td>
                </tr>
                <tr>
                    <td><span id="nomeloc"></span></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div style="color: #33cc33;">${successMessage}</div>
                        <div style="color: #FF0000;">${erroMessage}</div>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Gravar" /></td>
                    <td><input type="button" name="clear" value="Cancelar" onclick="this.form.reset();"></td>
                    <td></td>
                </tr>
            </table>  
        </form>

        

        <form name="lstCurso" id ="lstCurso" action="ListaCurso.jsp">
            <%
                if (id != -1){
            %>
                <input type="hidden" id="identCursoEdt" name="identCursoEdt" value="<%=id%>">
            <%
                } else{
            %>
                <input type="hidden" id="identCursoEdt" name="identCursoEdt" value="">
            <%
            }
            %>
            <label for="FiltroNM">Nome Filtro</label>
            <% String nomeFL = request.getParameter("FiltroNM");
                if (nomeFL == null || nomeFL == "") {
            %>
            <input type="text" name="FiltroNM" value="" />
            <%
            } else {
            %>
            <input type="text" name="nome" value=<%=nomeFL%> />
            <%
                }
            %>
            <br>
            <br>
            <table id="myTable" class="table table-hover">
                <thead>
                    <tr>
                        <th>Curso</th>
                    </tr>
                </thead>
                <tbody>
                    <%                    
                        for (Curso c : (ArrayList<Curso>) pageContext.getAttribute("lstCurso")) {
                    %>
                    <tr>
                        <td id="<%=c.getId()%>"><%=c.getNome()%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td><div style="color: #33cc33;">${successDelMessage}</div>
                <div style="color: #FF0000;">${erroDelMessage}</div></td>
                    </tr>
                </tbody>
            </table>
                
        </form>
        
          <form name="delCurso" id ="delCurso" action="processDelCurso.jsp">
            
                <input type="hidden" id="identCursoDel" name="identCursoDel" value="">
           
         </form>   

        <ul id="contextMenu" class="dropdown-menu" role="menu" style="display:none" >
            <li><a tabindex="-1" href="#">Editar</a></li>
            <li><a tabindex="-1" href="#">Eliminar</a></li>
        </ul>

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
                    var id = invokedOn.attr('id');
                    $("#identCursoEdt").val(id);
                    $("#identCursoDel").val(id);
                    if (selectedMenu.text() === "Editar"){
                      
                        $("#lstCurso").submit();
                    }
                    if (selectedMenu.text() === "Eliminar"){
                      
                        $("#delCurso").submit();
                    }
                    
                    //alert("msg="+invokedOn.attr('id'));
                   //$("#respMSG").submit();
                }
            });
        </script>
    </body>
</html>
