<%@page import="com.sample.controller.LoginController"%>
<%@page import="com.sample.controller.ExameController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Cadastrar Exame" /></title>
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
	
						<h:outputText value="Descrição" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.descricao}">
						</h:inputText>

						<h:outputText value="Tipo" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.tipo}" />

						<h:outputText value="Local" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.local}" />

						<h:outputText value="Orientações" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.orientacoes}" />
							
						<h:outputText value="Data Realização" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.dtRealizacao}">
							<f:convertDateTime pattern="d/M/yyyy" />
							
						<h:outputText value="Endereço Arquivo" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.pathArquivo}" />	
						</h:inputText>
						
						<h:outputText value="Custo" />
						<h:inputText styleClass="inputText"
							value="#{exameController.exame.custo}" />

						<h:outputText />
						<h:commandButton styleClass="button" value="salvar"
							action="#{exameController.save}" />

					</h:panelGrid>
				</h:form>
			</div>
		</div>
	</body>
</f:view>
</html>