<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>

<head>
<title></title>
<link rel="StyleSheet" type="text/css" href="css/estilos.css"
	media="screen">
</head>
<body>
	<h:form>
		<h:commandButton styleClass="myButton" value="Home" action="home?faces-redirect=true" />
	</h:form>
	<h:form>
		<h:commandButton styleClass="myButton" value="List Usuários"
			action="listusuario?faces-redirect=true" />
	</h:form>
	<h:form>
		<h:commandButton styleClass="myButton" value="List Medicos"
			action="listmedico?faces-redirect=true" />
	</h:form>
	<h:form>
		<h:commandButton styleClass="myButton" value="List Consultas"
			action="listconsulta?faces-redirect=true" />
	</h:form>
</body>
</html>

