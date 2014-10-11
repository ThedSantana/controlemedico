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
		<table>
			<tr valign='top'>
				<td><%@include file='/template/basicleft.jsp'%></td>
				<td>
					<table>
						<tr>
							<td><%@include file='/template/basicheader.jsp'%></td>
						</tr>
						<tr>
							<td><h:form>

									<h:panelGrid columns="2"
										rendered="#{!loginController.loggedIn}">

										<h:outputLabel for="username">Login:</h:outputLabel>

										<h:inputText id="username" value="#{loginController.login}" />

										<h:outputLabel for="password">Senha:</h:outputLabel>

										<h:inputSecret id="password" value="#{loginController.senha}" />

									</h:panelGrid>

									<h:commandButton value="Entrar"
										action="#{loginController.login}"
										rendered="#{!loginController.loggedIn}" />

									<h:commandButton value="Sair"
										action="#{loginController.logout}"
										rendered="#{loginController.loggedIn}" />

								</h:form></td>
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