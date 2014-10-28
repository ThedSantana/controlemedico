<%@page import="com.sample.controller.LoginController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Listagem de Usuários" /></title>
<link rel="StyleSheet" type="text/css" href="css/estilos.css"
	media="screen">
	</head>
	<body>
		<%
			if (LoginController.deslogado()) {
					response.sendRedirect("/controlemedico/login.faces");
				}
		%>
		<div id="topo">
			<%@include file='/template/basicheader.jsp'%>
		</div>
		<div id="middle">
			<div class="left">
				<%@include file='/template/basicleft.jsp'%>
			</div>
			<div class="center">
				<h:form>
					<h:commandButton styleClass="button" value="Novo Usuário"
						action="usuario?faces-redirect=true" />
				</h:form>
				<h:form>
					<h:dataTable value="#{usuarioController.usuarios}"
						rendered="#{not empty usuarioController.usuarios}" var="u"
						styleClass="order-table" headerClass="order-table-header"
						rowClasses="order-table-odd-row,order-table-even-row">
						<h:column>
							<f:facet name="header">
								<h:outputText value="Nome" />
							</f:facet>
							<h:outputText value="#{u.nome}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Data Nascimento" />
							</f:facet>
							<h:outputText value="#{u.dtNascimento}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="CPF" />
							</f:facet>
							<h:outputText value="#{u.cpf}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="RG" />
							</f:facet>
							<h:outputText value="#{u.rg}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Telefone" />
							</f:facet>
							<h:outputText value="#{u.telefone}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Email" />
							</f:facet>
							<h:outputText value="#{u.email}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Sexo" />
							</f:facet>
							<h:outputText value="#{u.sexo}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Estado Civil" />
							</f:facet>
							<h:outputText value="#{u.estadoCivil}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Escolaridade" />
							</f:facet>
							<h:outputText value="#{u.escolaridade}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Profissão" />
							</f:facet>
							<h:outputText value="#{u.profissao}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Cidade" />
							</f:facet>
							<h:outputText value="#{u.cidade}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Endereco" />
							</f:facet>
							<h:outputText value="#{u.endereco}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Login" />
							</f:facet>
							<h:outputText value="#{u.login}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Excluir" />
							</f:facet>
							<h:commandLink value="excluir"
								action="#{usuarioController.delete}">
								<f:param name="id" value="#{u.id}" />
							</h:commandLink>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Editar" />
							</f:facet>
							<h:commandLink value="editar" action="#{usuarioController.edit}">
								<f:param name="id" value="#{u.id}" />
							</h:commandLink>
						</h:column>
					</h:dataTable>
				</h:form>
			</div>
		</div>
	</body>
</f:view>
</html>