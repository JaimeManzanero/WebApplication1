
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImpJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%
EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImpJDBC();

EntidadBancaria entidadBancaria = entidadBancariaDAO.get(Integer.parseInt(request.getParameter("idEntidadBancaria")));
%>

{
"idEntidadBancaria":<%=entidadBancaria.getIdEntidadBancaria()%>,
"nombre":"<%=entidadBancaria.getNombre()%>",
"codigoEntidad":"<%=entidadBancaria.getCodigoEntidad()%>",
"fechaCreacion":"<%=entidadBancaria.getFechaCreacion()%>",
"direccion":"<%=entidadBancaria.getDireccion()%>",
"cif":"<%=entidadBancaria.getCIF()%>"
}
