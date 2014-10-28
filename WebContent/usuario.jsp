<%@page import="com.sample.controller.LoginController"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
<f:view>
	<head>
<title><h:outputText value="Cadastrar Usuário" /></title>
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
					<h:panelGrid columns="2" columnClasses="panelColumn1,panelColumn2" styleClass="panelCadastro">

						<h:outputText value="Nome" />
						<h:inputText styleClass="inputText" value="#{usuarioController.usuario.nome}" />

						<h:outputText value="Data de Nascimento" />
						<h:inputText styleClass="inputText" value="#{usuarioController.usuario.dtNascimento}">
							<f:convertDateTime pattern="d/M/yyyy" />
						</h:inputText>

						<h:outputText value="CPF" />
						<h:inputText styleClass="inputText" value="#{usuarioController.usuario.cpf}" />

						<h:outputText value="RG" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.rg}" />

						<h:outputText value="Telefone" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.telefone}" />

						<h:outputText value="Email" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.email}" />

						<h:outputText value="Sexo" />
						<h:selectOneMenu  styleClass="inputText" value="#{usuarioController.usuario.sexo}">
							<f:selectItem itemValue="Feminino" itemLabel="Feminino" />
							<f:selectItem itemValue="Masculino" itemLabel="Masculino" />
						</h:selectOneMenu>

						<h:outputText value="Estado Civil" />
						<h:selectOneMenu  styleClass="inputText" value="#{usuarioController.usuario.estadoCivil}">
							<f:selectItem itemValue="Solteiro" itemLabel="Solteiro" />
							<f:selectItem itemValue="Casado" itemLabel="Casado" />
							<f:selectItem itemValue="Divorciado" itemLabel="Divorciado" />
							<f:selectItem itemValue="União Estável" itemLabel="União Estável" />
							<f:selectItem itemValue="Viúvo" itemLabel="Viúvo" />
						</h:selectOneMenu>

						<h:outputText value="Escolaridade" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.escolaridade}" />
						
						<h:outputText value="Profissão" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.profissao}" />

						<h:outputText value="Cidade" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.cidade}" />

						<h:outputText value="Endereço" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.endereco}" />

						<h:outputText value="Login" />
						<h:inputText  styleClass="inputText" value="#{usuarioController.usuario.login}" />

						<h:outputText value="Senha" />
						<h:inputSecret  styleClass="inputText" value="#{usuarioController.usuario.senha}" />

						<h:outputText />
						<h:commandButton styleClass="button" value="salvar"
							action="#{usuarioController.save}" />



					</h:panelGrid>
				</h:form>
			</div>
		</div>
	</body>
</f:view>
</html>
