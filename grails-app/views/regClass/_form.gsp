<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'class_course', 'error')} required">
	<label for="class_course">
		<g:message code="regClass.class_course.label" default="Classcourse" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_course" name="class_course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${regClassInstance?.class_course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'class_instructor', 'error')} required">
	<label for="class_instructor">
		<g:message code="regClass.class_instructor.label" default="Classinstructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_instructor" name="class_instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.class_instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classes_to_regristration_sheets', 'error')} ">
	<label for="classes_to_regristration_sheets">
		<g:message code="regClass.classes_to_regristration_sheets.label" default="Classestoregristrationsheets" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.classes_to_regristration_sheets?}" var="c">
    <li><g:link controller="registrationSheet" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registrationSheet" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registrationSheet.label', default: 'RegistrationSheet')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="regClass.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${regClassInstance?.name}"/>
</div>

