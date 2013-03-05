<%@ page import="uk.ac.shu.webarch.eregister.Enrolment" %>



<div class="fieldcontain ${hasErrors(bean: enrolmentInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="enrolment.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${enrolmentInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrolmentInstance, field: 'studentID', 'error')} ">
	<label for="studentID">
		<g:message code="enrolment.studentID.label" default="Student ID" />
		
	</label>
	<g:textField name="studentID" value="${enrolmentInstance?.studentID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrolmentInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="enrolment.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${enrolmentInstance?.studentNumber}"/>
</div>

