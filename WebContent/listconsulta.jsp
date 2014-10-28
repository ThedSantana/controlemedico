<%@page import="com.sample.controller.LoginController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Listagem de Consultas" /></title>
<link rel="StyleSheet" type="text/css" href="css/estilos.css"
	media="screen">
	</head>
	<body>
		<%
			if (LoginController.deslogado()) {
					response.sendRedirect("/controleconsulta/login.faces");
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
					<h:commandButton styleClass="button" value="Nova Consulta"
						action="#{consultaController.novaConsulta}" />
				</h:form>
				<h:form>
					<h:dataTable value="#{consultaController.consultas}"
						rendered="#{not empty consultaController.consultas}" var="u"
						styleClass="order-table" headerClass="order-table-header"
						rowClasses="order-table-odd-row,order-table-even-row">
						<h:column>
							<f:facet name="header">
								<h:outputText value="Data" />
							</f:facet>
							<h:outputText value="#{u.data}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Diagnóstico" />
							</f:facet>
							<h:outputText value="#{u.diagnosticoHipotese}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Orientações" />
							</f:facet>
							<h:outputText value="#{u.orientacoes}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Custo" />
							</f:facet>
							<h:outputText value="#{u.custo}" />
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Excluir" />
							</f:facet>
							<h:commandLink value="excluir"
								action="#{consultaController.delete}">
								<f:param name="id" value="#{u.id}" />
							</h:commandLink>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="Editar" />
							</f:facet>
							<h:commandLink value="editar" action="#{consultaController.edit}">
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