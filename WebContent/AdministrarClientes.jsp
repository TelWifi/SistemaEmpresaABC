<%@page import="java.sql.ResultSet"%>
<%@page import="Controllador.CGenerica"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clientes</title>
</head>
<body>

<%
	CGenerica cg = new CGenerica();
	cg.conectar("bdEmpresaABC");
	ResultSet rs = cg.consultar("select * from cliente");
	if(rs.first()){
		out.print("<table border=1><tr><th>Codigo</th><th>Nombre</th><th>Direccion</th><th>Saldo Adeudado</th><th>Estado</th><th>Operaciones</th></tr>");
		while(rs.next()){
			out.print("<tr><td>"+rs.getString("codigo")+"</td><td>"+rs.getString("nombre")+"</td><td>"+rs.getString("direccion")
			+"</td><td>"+rs.getString("saldoAdeudado")+"</td><td>"+rs.getString("estado")+"</td><td>"
			+"<a href=\"./ConfirmarEliminar.jsp?codigo="+rs.getString("codigo")+"\">Eliminar</a> / <a href=\"./ModificarCliente.jsp?codigo="+rs.getString("codigo")+"\">Modificar</a>"
			+"</td></tr>");
		}
		out.print("</tabla>");
	}else{
		out.print("No Existen clientes");
	}
	cg.cerrarConexion();

%>

</body>
</html>