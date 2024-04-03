<%@page import="com.emergentes.primerparcialtem2.estudiante"%>
<%
 estudiante reg=(estudiante) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRO DE CALIFICACIONES</h1>
        <center>
        <h3>Primer Parcial TEM-742</h3>
        <h3>Nombre : Katherine Alejandra Santos Quiñones</h3>
        <h3>Carnet : 11078438 L.P.</h3>
        <h1>REGISTRO DE CALIFICACIONES</h1>
        <form action="MainServlet?op=nuevo" method="post">
            <table border="1">
                <tr>
                    <td>id</td>
                    <td> <input type="number" name="id" value="<%= reg.getId() %>"></td>
                </tr>
                <tr>
                    <td>Nombre del estudiante:</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre() %>">
                </tr>
                <tr>
                    <td>Primer Pracial(sobre 30 puntos):</td>
                    <td><input type="number" name="p1" value="<%= reg.getP1() %>">
                </tr>
                <tr>
                    <td>Segundo Parcial(sobre 30 puntos)</td>
                    <td><input type="number" name="p2" value="<%= reg.getP2() %>">
                </tr>
                <tr>
                    <td>Examen Final(sobre 40 puntos)</td>
                    <td><input type="number" name="ef" value="<%= reg.getEf() %>">
                </tr>
            </table>
            <input type="submit" value="ENVIAR">  
        </form>
        <center>
    </body>
</html>
