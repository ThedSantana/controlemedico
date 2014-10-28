<%@page import="com.sample.controller.LoginController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Listagem de Medicos" /></title>
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
					<h:commandButton styleClass="button" value="Novo Médico"
						action="medico?faces-redirect=true" />
				</h:form>
				<h:form>
					<h:dataTable value="#{medicoController.medicos}"
						rendered="#{not empty medicoController.medicos}" var="u"
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
								<h:outputText value="CRM" />
							</f:facet>
							<h:outputText value="#{u.crm}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Especialidade" />
							</f:facet>
							<h:outputText value="#{u.especialidade}" />
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
								<h:outputText value="Telefone" />
							</f:facet>
							<h:outputText value="#{u.telefone}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Atende no plano" />
							</f:facet>
							<h:outputText value="#{u.atendeNoPlano}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Cobertura" />
							</f:facet>
							<h:outputText value="#{u.cobertura}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Excluir" />
							</f:facet>
							<h:commandLink value="excluir"
								action="#{medicoController.delete}">
								<f:param name="id" value="#{u.id}" />
							</h:commandLink>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Editar" />
							</f:facet>
							<h:commandLink value="editar" action="#{medicoController.edit}">
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