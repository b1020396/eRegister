
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'RegistrationSheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registrationSheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="registrationSheet.class_regclass.label" default="Classregclass" /></th>
					
						<g:sortableColumn property="courseID" title="${message(code: 'registrationSheet.courseID.label', default: 'Course ID')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'registrationSheet.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="studentID" title="${message(code: 'registrationSheet.studentID.label', default: 'Student ID')}" />
					
						<g:sortableColumn property="studentNumber" title="${message(code: 'registrationSheet.studentNumber.label', default: 'Student Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationSheetInstanceList}" status="i" var="registrationSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationSheetInstance.id}">${fieldValue(bean: registrationSheetInstance, field: "class_regclass")}</g:link></td>
					
						<td>${fieldValue(bean: registrationSheetInstance, field: "courseID")}</td>
					
						<td>${fieldValue(bean: registrationSheetInstance, field: "date")}</td>
					
						<td>${fieldValue(bean: registrationSheetInstance, field: "studentID")}</td>
					
						<td>${fieldValue(bean: registrationSheetInstance, field: "studentNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationSheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
