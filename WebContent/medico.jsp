<%@page import="com.sample.controller.LoginController"%>
<%@page import="com.sample.controller.MedicoController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Cadastrar Médico" /></title>
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
	
						<h:outputText value="Nome" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.nome}">
						</h:inputText>

						<h:outputText value="CRM" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.crm}" />

						<h:outputText value="Especialidade" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.especialidade}" />

						<h:outputText value="Cidade" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.cidade}" />
							
						<h:outputText value="Endereço" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.endereco}"/>
														
						<h:outputText value="Telefone" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.telefone}" />	
						
						<h:outputText value="Email" />
						<h:inputText styleClass="inputText"
							value="#{medicoController.medico.email}" />
							
						<h:outputText value="Atende no Plano" />
						<h:selectBooleanCheckbox
							value="#{medicoController.medico.atendeNoPlano}" />
							
						<h:outputText value="Cobertura" />
						<h:selectOneMenu styleClass="inputText"
							value="#{medicoController.medico.cobertura}" >
							<f:selectItem itemValue="Nenhuma" itemLabel="Nenhuma" />
							<f:selectItem itemValue="Parcial" itemLabel="Parcial" />
							<f:selectItem itemValue="Total" itemLabel="Total" />
							</h:selectOneMenu>		

						<h:commandButton styleClass="button" value="salvar"
							action="#{medicoController.save}" />

					</h:panelGrid>
				</h:form>
			</div>
		</div>
	</body>
</f:view>
</html>