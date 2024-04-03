<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.primerparcialtem2.estudiante"%>
<%
    if(session.getAttribute("lista")== null){
        ArrayList<String> lis =new ArrayList<String>();
        session.setAttribute("lista",lis);
    }
   ArrayList<estudiante> lista=(ArrayList<estudiante>) session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO DE CALIFICACIONES</title>
    </head>
    <body>
        <center>
        <h3>Primer Parcial TEM-742</h3>
        <h3>Nombre : Katherine Alejandra Santos Quiñones</h3>
        <h3>Carnet : 11078438 L.P.</h3>
        <h1>REGISTRO DE CALIFICACIONES</h1>
        <a href="MainServlet?op=nuevo">NUEVO</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if("lista" !=null){
                for(estudiante item: lista){
                
            %>         
            <tr>    
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getP1()%></td>
                <td><%= item.getP2()%></td>
                <td><%= item.getEf()%></td>
                <td><a href="MainServlet?op=modificar&id=<%= item.getId()%>">EDITAR</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return(confirm('esta seguro de eliminar el registro?'))"
                       >ELIMINAR</a></td>
            </tr>
            <%
                }                    }
            %>
        </table>
        <center>
    </body>
</html>
