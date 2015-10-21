<%-- 
    Document   : insert
    Created on : 01-oct-2015, 12:11:21
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImpJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImpJDBC();
    EntidadBancaria entidadBancaria = new EntidadBancaria();
    
    entidadBancaria.setNombre(request.getParameter("Nombre"));
    
    //CONTINUAR AQUI---->
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        
    </body>
</html>
