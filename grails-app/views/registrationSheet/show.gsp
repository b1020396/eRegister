
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'RegistrationSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registrationSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationSheet">
			
				<g:if test="${registrationSheetInstance?.class_regclass}">
				<li class="fieldcontain">
					<span id="class_regclass-label" class="property-label"><g:message code="registrationSheet.class_regclass.label" default="Classregclass" /></span>
					
						<span class="property-value" aria-labelledby="class_regclass-label"><g:link controller="regClass" action="show" id="${registrationSheetInstance?.class_regclass?.id}">${registrationSheetInstance?.class_regclass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.courseID}">
				<li class="fieldcontain">
					<span id="courseID-label" class="property-label"><g:message code="registrationSheet.courseID.label" default="Course ID" /></span>
					
						<span class="property-value" aria-labelledby="courseID-label"><g:fieldValue bean="${registrationSheetInstance}" field="courseID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="registrationSheet.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:fieldValue bean="${registrationSheetInstance}" field="date"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.registrationSheets_have_registerEntry}">
				<li class="fieldcontain">
					<span id="registrationSheets_have_registerEntry-label" class="property-label"><g:message code="registrationSheet.registrationSheets_have_registerEntry.label" default="Registration Sheetshaveregister Entry" /></span>
					
						<g:each in="${registrationSheetInstance.registrationSheets_have_registerEntry}" var="r">
						<span class="property-value" aria-labelledby="registrationSheets_have_registerEntry-label"><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.studentID}">
				<li class="fieldcontain">
					<span id="studentID-label" class="property-label"><g:message code="registrationSheet.studentID.label" default="Student ID" /></span>
					
						<span class="property-value" aria-labelledby="studentID-label"><g:fieldValue bean="${registrationSheetInstance}" field="studentID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.studentNumber}">
				<li class="fieldcontain">
					<span id="studentNumber-label" class="property-label"><g:message code="registrationSheet.studentNumber.label" default="Student Number" /></span>
					
						<span class="property-value" aria-labelledby="studentNumber-label"><g:fieldValue bean="${registrationSheetInstance}" field="studentNumber"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registrationSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${registrationSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
