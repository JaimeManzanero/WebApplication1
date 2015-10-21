<%-- 
    Document   : delete
    Created on : 30-sep-2015, 9:52:19
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImpJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImpJDBC();
    
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    boolean borrado = entidadBancariaDAO.delete(idEntidadBancaria);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%if (borrado){ %>
        <p>Se ha borrado la entidad <%=idEntidadBancaria%></p>
        <%}else{%>
        <p>No se ha podido borrar la entidad <%=idEntidadBancaria%></p>
        <%}%>
    </body>
</html>
