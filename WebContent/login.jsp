<%@page import="com.sample.controller.LoginController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
<f:view>
	<head>
<title><h:outputText value="Login" /></title>
<link rel="StyleSheet" type="text/css" href="css/estilos.css"
	media="screen">
	</head>
	<body>
		<%
			if (!LoginController.deslogado()) {
				 response.sendRedirect("/controlemedico/home.faces");
			}
		%>
		<div id="topo">
			<%@include file='/template/basicheader.jsp'%>
		</div>
		<div id="middle">
			<div class="center">
				<h:form>

					<h:panelGrid columns="2" columnClasses="panelColumn"
						styleClass="panelLogin" rendered="#{!loginController.loggedIn}">

						<h:outputLabel for="username">Login:</h:outputLabel>

						<h:inputText id="username" value="#{loginController.login}" />

						<h:outputLabel for="password">Senha:</h:outputLabel>

						<h:inputSecret id="password" value="#{loginController.senha}" />

						<h:outputLabel></h:outputLabel>

						<h:commandButton styleClass="button" value="Entrar"
							action="#{loginController.login}"
							rendered="#{!loginController.loggedIn}" />
					</h:panelGrid>
				</h:form>
			</div>
		</div>
	</body>
</f:view>
</html>