<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
<f:view>
	<head>
<title><h:outputText value="Layout" /></title>
<link rel="StyleSheet" type="text/css" href="css/estilos.css"
	media="screen">
	<link rel="StyleSheet" type="text/css" href="css/estilos.css" media="screen">

	</head>
	<body>
		<table>
			<tr valign='top'>
				<td><%@include file='/template/basicleft.jsp'%></td>
				<td>
					<table>
						<tr>
							<td><%@include file='/template/basicheader.jsp'%></td>
						</tr>
						<tr>
							<td>COLOCAR AQUI O CONTEÚDO</td>
						</tr>
						<tr>
							<td><%@include file='/template/basicfooter.jsp'%></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

	</body>
</f:view>
</html>