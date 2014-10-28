<%@page import="com.sample.controller.LoginController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Cadastrar Consulta" /></title>
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
					<h:panelGrid columns="2" columnClasses="panelColumn1,panelColumn2"
						styleClass="panelCadastro">

						<h:outputText value="Data" />
						<h:inputText styleClass="inputText"
							value="#{consultaController.consulta.data}">
							<f:convertDateTime pattern="d/M/yyyy" />
						</h:inputText>

						<h:outputText value="Diagnóstico" />
						<h:inputText styleClass="inputText"
							value="#{consultaController.consulta.diagnosticoHipotese}" />


						<h:outputText value="Orientações" />
						<h:inputText styleClass="inputText"
							value="#{consultaController.consulta.orientacoes}" />

						<h:outputText value="Custo" />
						<h:inputText styleClass="inputText"
							value="#{consultaController.consulta.custo}" />

						<h:outputText value="Médico" />
						<h:selectOneMenu styleClass="inputText"
							value="#{consultaController.medico_id}">
							<f:selectItems value="#{medicoController.medicosmap}" />
							<f:selectItem />
						</h:selectOneMenu>

						<h:outputText />
						<h:commandButton styleClass="button" value="salvar"
							action="#{consultaController.save}" />
					</h:panelGrid>
				</h:form>
				<h:form rendered="#{not empty consultaController.consulta.id}">
					<h:commandButton styleClass="button" value="Adicionar Exame"
						action="#{exameController.novoExame}">
						<f:param name="consulta_id" value="#{consultaController.consulta.id}" />

					</h:commandButton>

					<h:commandButton styleClass="button" value="Adicionar Receita" />

					<h:commandButton styleClass="button" value="Adicionar Cirugia" />

				</h:form>
			</div>
		</div>
	</body>
</f:view>
</html>