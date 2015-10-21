<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImpJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImpJDBC();
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findAll();
%>
[
<%
    int contador = 0;
    for (EntidadBancaria entidadBancaria: entidadesBancarias){
        
        contador++;
%>
{
    "idEntidadBancaria":<%=entidadBancaria.getIdEntidadBancaria()%>,
    "nombre":"<%=entidadBancaria.getNombre()%>",
    "codigoEntidad":"<%=entidadBancaria.getCodigoEntidad()%>",
    "fechaCreacion":"<%=entidadBancaria.getFechaCreacion()%>",
    "direccion":"<%=entidadBancaria.getDireccion()%>",
    "cif":"<%=entidadBancaria.getCIF()%>"
}
<%if(contador < entidadesBancarias.size()){%>
,
<% } %>
<% } %>
]