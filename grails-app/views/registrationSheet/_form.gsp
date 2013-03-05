<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'class_regclass', 'error')} required">
	<label for="class_regclass">
		<g:message code="registrationSheet.class_regclass.label" default="Classregclass" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_regclass" name="class_regclass.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${registrationSheetInstance?.class_regclass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="registrationSheet.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${registrationSheetInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="registrationSheet.date.label" default="Date" />
		
	</label>
	<g:textField name="date" value="${registrationSheetInstance?.date}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'registrationSheets_have_registerEntry', 'error')} ">
	<label for="registrationSheets_have_registerEntry">
		<g:message code="registrationSheet.registrationSheets_have_registerEntry.label" default="Registration Sheetshaveregister Entry" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.registrationSheets_have_registerEntry?}" var="r">
    <li><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentID', 'error')} ">
	<label for="studentID">
		<g:message code="registrationSheet.studentID.label" default="Student ID" />
		
	</label>
	<g:textField name="studentID" value="${registrationSheetInstance?.studentID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="registrationSheet.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${registrationSheetInstance?.studentNumber}"/>
</div>

