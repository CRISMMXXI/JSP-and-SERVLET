<%-- 
    Document   : verPersonas
    Created on : 20 jul. 2022, 19:32:54
    Author     : crisl
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Personas</title>
    </head>
    <body>
        <h1>Lista de Personas</h1>
        <% 
            List<Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
            
            for (Persona per : listaPersonas) {
        %>
            <p> <b>Dni: </b> <%=per.getDni()%></p>
            <p> <b>Nombre: </b> <%=per.getNombre()%></p>
            <p> <b>Apellido: </b> <%=per.getApellido()%></p>
            <p> <b>Teléfono: </b> <%=per.getTelefono()%></p>
            <br>
        <%
            }
        %>
    </body>
</html>
