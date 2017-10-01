<%-- 
    Document   : ListaMensagem
    Created on : Mar 23, 2016, 2:26:33 PM
    Author     : irina.m.lopes
--%>

<%@page import="com.AlumniUBICV.DB.DBAccess"%>
<%@page import="com.AlumniUBICV.Object.Mensagem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.AlumniUBICV.Object.Alumni"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../../JS/jquery-2.0.2.js" type="text/javascript"></script>
        <script src="../../JS/bootstrap.min.js" type="text/javascript"></script>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='ListaMensagem.jsp'>Mensagem</a></li>
                <li><a href="ListaCurso.jsp">Curso</a></li>
                <li><a href='#'>Registos</a></li>
            </ul>
        </div>
        <%
            // Create an ArrayList with test data
            //(String nome, String ano, String curso, String pais, String ilha)

            ArrayList<Mensagem> list = new DBAccess().ListMsg();
            pageContext.setAttribute("msg", list);
        %>
        
        <h1>Mensagem Por Responder</h1>
        
        <form name="listResp" id ="listResp" action ="RespLstMSG.jsp">
            <input type="submit" value="Respondido" />
            <br>
            <br>
        <table id="myTable" class="table table-hover">
            <thead>
                <tr>
                    <th>De</th>
                    <th>Email Resposta</th>
                    <th>Assunto</th>
                    <th>Data</th>
                    <th>Mensagem</th>
                    <th>Escolher</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Mensagem m : (ArrayList<Mensagem>) pageContext.getAttribute("msg")) {
                %>
                <tr>
                    <td id="<%=m.getId()%>"><%=m.getAlumniName()%></td>
                    <td id="<%=m.getId()%>"><%=m.getAlumniEmail()%></td>
                    <td id="<%=m.getId()%>"><%=m.getAssunto()%></td>
                    <td id="<%=m.getId()%>"><%=m.getDt_msg()%></td>
                    <td id="<%=m.getId()%>"><%=m.getMsg()%></td>
                    <td id="<%=m.getId()%>"><input type="checkbox" name="respSec" value="<%=m.getId()%>" /></td>
                </tr>
                <%}%>
                <tr>
                    <td><div style="color: #33cc33;">${successMessage}</div>
                        <div style="color: #FF0000;">${erroMessage}</div>
                        <div style="color: #FAAF2E;">${warnMessage}</div></td>
                </tr>
            </tbody>
        </table>
        </form>
                
        <ul id="contextMenu" class="dropdown-menu" role="menu" style="display:none" >
            <li><a tabindex="-1" href="#">Respondido</a></li>

            <li class="divider"></li>
            <!--<li><a tabindex="-1" href="#">Separated link</a></li>-->
        </ul>
                
        <form id ="respMSG" action="RespMSG.jsp" method="post">
            <input type="hidden" id="identMSG" name="identMSG" value="">

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
                    var id = invokedOn.attr('id');

                    $("#identMSG").val(id);
                    //alert("msg="+invokedOn.attr('id'));
                    $("#respMSG").submit();
                }
            });
        </script>
    </body>
</html>
