<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
<f:view>
	<head>
	<title><h:outputText value="Cadastro de Usuario" /></title>
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
		<table>
			<tr>
				<td><h:outputText value="Nome" />:</td>
				<td><h:inputText value="#{usuarioController.usuario.nome}" /></td>
			</tr>
			<tr>
				<td><h:outputText value="Login" />:</td>
				<td><h:inputText value="#{usuarioController.usuario.login}" /></td>
			</tr>
			<tr>
				<td><h:outputText value="Senha" />:</td>
				<td><h:inputSecret value="#{usuarioController.usuario.senha}" /></td>
			</tr>
			<tr>
				<td><h:commandButton value="salvar"	action="#{usuarioController.save}" /></td>
			</tr>
		</table>
		<h:dataTable value="#{usuarioController.usuarios}" var="u" rendered="#{not empty usuarioController.usuarios}" border="1">
			<h:column>
				<f:facet name="header">
					<h:outputText value="Nome" />
				</f:facet>
				<h:commandLink value="#{u.nome}" action="#{usuarioController.edit}">
					<f:param name="id" value="#{u.id}" />					
				</h:commandLink>				
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Login" />
				</f:facet>
				<h:commandLink value="#{u.login}" action="#{usuarioController.edit}">
					<f:param name="id" value="#{u.id}" />					
				</h:commandLink>			
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Excluir" />
				</f:facet>				
				<h:commandLink value="excluir" action="#{usuarioController.delete}">
					<f:param name="id" value="#{u.id}" />
				</h:commandLink>			
			</h:column>
		</h:dataTable>
	</h:form>	</td>
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