<%@page import="com.emergente.modelo.Producto"%>
<%
    Producto item = (Producto)request.getAttribute("miProducto");
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#5D6D7E">
        <h1><%= (item.getId()==0)?"Nuevo Producto":"Editar Producto "%></h1>
        
        <form action ="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>">
            
            <table  border="1"  bordercolor="#212F3C" cellspacing="0">
                <tr>
                    <td>Descripción</td>
                    <td><input type="text" name="descripcion" value="<%=  item.getDescripcion() %>"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="<%=  item.getCantidad() %>"></td>
                </tr>
                
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="<%= item.getPrecio() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
