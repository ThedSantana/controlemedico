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
	<h2 id="title">Controle Médico</h2>
	<h:form id="sair">

		<h:commandLink styleClass="myLink" value="Sair" action="#{loginController.logout}"
			rendered="#{loginController.loggedIn}" />

	</h:form>
</body>

</html>

