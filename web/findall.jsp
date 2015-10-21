<%-- 
    Document   : findall
    Created on : 30-sep-2015, 8:40:53
    Author     : alumno
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImpJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImpJDBC();
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findAll();

    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find All</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <!--<td>ID</td>-->
                <td>Nombre</td>
                <td>CodigoEntidad</td>
                <!--<td>FechaCreacion</td>
                <td>Direccion</td>
                <td>CIF</td>-->
            </tr>
            <%                for (EntidadBancaria entidadBancaria : entidadesBancarias) {
            %>
            <tr>
                <!--<td><//%=entidadBancaria.getIdEntidadBancaria()%></td>-->
                <td><a href="http://localhost:8084/WebApplication1/get.jsp?idEntidadBancaria=<%=entidadBancaria.getIdEntidadBancaria() %>"><%=entidadBancaria.getNombre()%></a></td>
                <td><%=entidadBancaria.getCodigoEntidad()%></td>
                <!--<td><//%=simpleDateFormat.format(entidadBancaria.getFechaCreacion())%></td>-->
                <!--td><//%=entidadBancaria.getDireccion()%></td>-->
                <!--<td><//%=entidadBancaria.getCIF()%></td>-->

                <td><a href="http://localhost:8084/WebApplication1/delete.jsp?idEntidadBancaria=<%=entidadBancaria.getIdEntidadBancaria()%>">Borrar</a></td>
            </tr>
            <% }%>
        </table>
        <div>
            <button>Insertar</button>
        </div>
    </body>
</html>
