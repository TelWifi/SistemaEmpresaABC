<%@page import="Controllador.CGenerica"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String codigo=request.getParameter("codigo");
	CGenerica cg = new CGenerica();
	cg.conectar("bdEmpresaABC");
	ResultSet rset =  cg.consultar("select * from cliente where codigo='"+codigo+"'");
	if(rset.first()){
		out.println("Datos del Cliente<br><br>");
		out.println("Codigo: "+rset.getString("codigo")+" <br> ");
		out.println("Nombre: "+rset.getString("nombre")+" <br>");
		out.println("Direccion: "+rset.getString("direccion")+" <br> ");
		out.println("Saldo Adeudado: "+rset.getString("saldoAdeudado")+" <br> ");
		out.println("Estado: "+rset.getString("estado")+"<br>");
	}else{
		out.println("El cliente no existe");
		
	}
	out.println("<a href=\"./FormBuscar.jsp\">Regresar</a>");
	cg.cerrarConexion();

%>
</body>
</html>