
<%@ page import="uk.ac.shu.webarch.eregister.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-course" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list course">
			
				<g:if test="${courseInstance?.classes_on_course}">
				<li class="fieldcontain">
					<span id="classes_on_course-label" class="property-label"><g:message code="course.classes_on_course.label" default="Classesoncourse" /></span>
					
						<g:each in="${courseInstance.classes_on_course}" var="c">
						<span class="property-value" aria-labelledby="classes_on_course-label"><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.courseID}">
				<li class="fieldcontain">
					<span id="courseID-label" class="property-label"><g:message code="course.courseID.label" default="Course ID" /></span>
					
						<span class="property-value" aria-labelledby="courseID-label"><g:fieldValue bean="${courseInstance}" field="courseID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.courseName}">
				<li class="fieldcontain">
					<span id="courseName-label" class="property-label"><g:message code="course.courseName.label" default="Course Name" /></span>
					
						<span class="property-value" aria-labelledby="courseName-label"><g:fieldValue bean="${courseInstance}" field="courseName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.instructorID}">
				<li class="fieldcontain">
					<span id="instructorID-label" class="property-label"><g:message code="course.instructorID.label" default="Instructor ID" /></span>
					
						<span class="property-value" aria-labelledby="instructorID-label"><g:fieldValue bean="${courseInstance}" field="instructorID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.instructorName}">
				<li class="fieldcontain">
					<span id="instructorName-label" class="property-label"><g:message code="course.instructorName.label" default="Instructor Name" /></span>
					
						<span class="property-value" aria-labelledby="instructorName-label"><g:fieldValue bean="${courseInstance}" field="instructorName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${courseInstance?.id}" />
					<g:link class="edit" action="edit" id="${courseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
