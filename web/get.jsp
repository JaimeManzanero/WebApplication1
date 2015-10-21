<%-- 
    Document   : getByNombre
    Created on : 01-oct-2015, 11:44:59
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
    
    EntidadBancaria entidadBancaria = entidadBancariaDAO.get(Integer.parseInt(request.getParameter("idEntidadBancaria")));
    
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>Nombre</td>
                <td>CodigoEntidad</td>
                <td>FechaCreacion</td>
                <td>Direccion</td>
                <td>CIF</td>
            </tr>
            <tr>
                <td><%=entidadBancaria.getIdEntidadBancaria()%></td>
                <td><%=entidadBancaria.getNombre()%></td>
                <td><%=entidadBancaria.getCodigoEntidad()%></td>
                <td><%=simpleDateFormat.format(entidadBancaria.getFechaCreacion())%></td>
                <td><%=entidadBancaria.getDireccion()%></td>
                <td><%=entidadBancaria.getCIF()%></td>

            </tr>
        </table>
    </body>
</html>
