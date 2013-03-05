<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>



<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'class_registrationSheet', 'error')} required">
	<label for="class_registrationSheet">
		<g:message code="registerEntry.class_registrationSheet.label" default="Classregistration Sheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_registrationSheet" name="class_registrationSheet.id" from="${uk.ac.shu.webarch.eregister.RegistrationSheet.list()}" optionKey="id" required="" value="${registerEntryInstance?.class_registrationSheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'class_student', 'error')} required">
	<label for="class_student">
		<g:message code="registerEntry.class_student.label" default="Classstudent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_student" name="class_student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${registerEntryInstance?.class_student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="registerEntry.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${registerEntryInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'studentId', 'error')} ">
	<label for="studentId">
		<g:message code="registerEntry.studentId.label" default="Student Id" />
		
	</label>
	<g:textField name="studentId" value="${registerEntryInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="registerEntry.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${registerEntryInstance?.studentName}"/>
</div>

