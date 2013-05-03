<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Register online</title>

	</head>
	<body>
		<p> Sign in to SHU Register </p>
		<g:form name="Register" id="registration" action="processAttendance"  >

		<p>Student Number:</p><g:textField name="student" value="${studentNumber}"/>
		<p>Class Name:</p><g:textField name="class" value="${courseName}" />
		<p><g:submitButton name="Register" value="Register" /></p>
		<br>
		</g:form>
	</body>
</html>

