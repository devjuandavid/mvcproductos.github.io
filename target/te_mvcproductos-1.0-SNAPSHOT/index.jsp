<%@page import="java.util.ArrayList"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#5D6D7E">
        <h1>Listado de Productos</h1>
        
        <a href="MainController?op=nuevo">Nuevo</a>
        
        <table border="1"  bordercolor="black" cellspacing="0">
            
            <tr>
                <th height="50" width="150"  bgcolor="#2471A3">Id</th>
                <th height="50" width="150"  bgcolor="#2471A3">Descripción</th>
                <th height="50" width="150"  bgcolor="#2471A3">Cantidad</th>
                <th height="50" width="150"  bgcolor="#2471A3">Precio</th>
                <th height="50" width="150"  bgcolor="#2471A3"></th>
                <th height="50" width="150"  bgcolor="#2471A3"></th>
            </tr>
            <%
                if (lista != null) {
                        
                    for (Producto item : lista) {
                            
                        
                %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de Eliminar?')">Eliminar</a></td>
            </tr>
            
            <%
                }
             }
                %>
        </table>
    </body>
</html>
