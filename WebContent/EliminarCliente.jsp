<%@page import="Controllador.CGenerica"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% CGenerica cg = new CGenerica();
	cg.conectar("bdEmpresaABC");
	String codigo = request.getParameter("codigo");
	
	cg.eliminar("Delete from cliente where codigo='"+codigo+"';");
	out.print("Cliente Eliminado");
	cg.cerrarConexion();
	out.print("<a href=\"./AdministrarClientes.jsp\">Regresar<a>");
%>
</body>
</html>