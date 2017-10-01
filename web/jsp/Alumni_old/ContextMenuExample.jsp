<%-- 
    Document   : EditPerfil
    Created on : Mar 16, 2016, 12:15:40 PM
    Author     : irina.m.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <script src="../JS/jquery-2.0.2.js" type="text/javascript"></script>
        <script src="../JS/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!--<script type='text/javascript'
          src='http://code.jquery.com/jquery-2.0.2.js'></script><script type='text/javascript'
          src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script><link rel="stylesheet" type="text/css"
          href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css"
          href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">-->


    </head>
    <body>

        <table id="myTable" class="table table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                </tr>
            </thead>
            <tbody>
                <tr id='l1'>
                    <td id='r1'>1</td>
                    <td id='r21'>Mark</td>
                    <td id='r21'>Otto</td>
                    <td id='2r1'>@mdo</td>
                </tr>
                <tr id ="2">
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr id="3">
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                </tr>
            </tbody>
        </table>

        <ul id="contextMenu" class="dropdown-menu" role="menu" style="display:none" >
            <li><a tabindex="-1" href="#">Action</a></li>
            <li><a tabindex="-1" href="#">Another action</a></li>
            <li><a tabindex="-1" href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a tabindex="-1" href="#">Separated link</a></li>
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
                    var msg = "IRINA You selected the menu item '" + selectedMenu.text() +
                            "' on the value '" + invokedOn.text() + "' id="+invokedOn.attr('id');
                    alert(msg);
                }
            });
        </script>
    </body>
</html>