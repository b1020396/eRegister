
<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registerEntry.label', default: 'RegisterEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registerEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registerEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registerEntry">
			
				<g:if test="${registerEntryInstance?.class_registrationSheet}">
				<li class="fieldcontain">
					<span id="class_registrationSheet-label" class="property-label"><g:message code="registerEntry.class_registrationSheet.label" default="Classregistration Sheet" /></span>
					
						<span class="property-value" aria-labelledby="class_registrationSheet-label"><g:link controller="registrationSheet" action="show" id="${registerEntryInstance?.class_registrationSheet?.id}">${registerEntryInstance?.class_registrationSheet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.class_student}">
				<li class="fieldcontain">
					<span id="class_student-label" class="property-label"><g:message code="registerEntry.class_student.label" default="Classstudent" /></span>
					
						<span class="property-value" aria-labelledby="class_student-label"><g:link controller="student" action="show" id="${registerEntryInstance?.class_student?.id}">${registerEntryInstance?.class_student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.courseID}">
				<li class="fieldcontain">
					<span id="courseID-label" class="property-label"><g:message code="registerEntry.courseID.label" default="Course ID" /></span>
					
						<span class="property-value" aria-labelledby="courseID-label"><g:fieldValue bean="${registerEntryInstance}" field="courseID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="registerEntry.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${registerEntryInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.studentName}">
				<li class="fieldcontain">
					<span id="studentName-label" class="property-label"><g:message code="registerEntry.studentName.label" default="Student Name" /></span>
					
						<span class="property-value" aria-labelledby="studentName-label"><g:fieldValue bean="${registerEntryInstance}" field="studentName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registerEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${registerEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
