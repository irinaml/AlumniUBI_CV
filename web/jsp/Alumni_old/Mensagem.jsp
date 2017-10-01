<%-- 
    Document   : message
    Created on : Mar 21, 2016, 5:02:35 PM
    Author     : irina.m.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensagem</title>
        <script>
             function validate() {
                var assunto = document.msg.assunto.value;//assuntoloc
                var msg = document.msg.mensagem.value;//mensagemloc
                
                //var password = document.f1.password.value;
                var status = true;
                
                if (assunto.length < 1) {
                    
                    document.getElementById("assuntoloc").innerHTML =
                            "<img src='../../img/unchecked.gif'/> Introduza o Assunto";
                    status = false;
                } 
                else{
                    
                    document.getElementById("assuntoloc").innerHTML =
                            "<img src='../../img/checked.gif'/>";
                }
                if(msg.length < 1){
                    document.getElementById("mensagemloc").innerHTML = "<img src='../img/unchecked.gif'/>Introduza a Mensagem";
                    status = false;
                }else{
                    document.getElementById("mensagemloc").innerHTML =
                            "<img src='../../img/checked.gif'/> Introduza o Assunto";
                }

                //alert("assunto="+assunto+" msg="+msg+" status="+status);
                
                return status;
            }
            
            function openPage(pageURL)
            {
                window.location.href = pageURL;
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name ="msg" id ="msg" action="ProcessMsg.jsp" onsubmit="return validate()">
            <table>
                
               
                    <tr>
                        <td><label for="assunto">Assunto*</label>
                            <input type="text" name="assunto" value="" /></td>
                        <td><span id="assuntoloc"></span></td>
                    </tr>
                    <tr>
                        <td><label for="mensagem">Mensagem*</label></td>
                            
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <textarea name="mensagem" id="mensagem" rows="20" cols="30"></textarea>
                        </td>
                        <td><span id="mensagemloc"></span></td>
                    </tr>
                    
                    <tr>
                        <td><div style="color: #33cc33;">${successMessage}</div>
                        <div style="color: #FF0000;">${erroMessage}</div></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar" />
                        <input type="button" value="Cancelar" name=Cancelar"
                               onclick="openPage('ListaAlumni.jsp')"/></td>
                    </tr>
            
            </table>

           
            
        </form>
    </body>
</html>
