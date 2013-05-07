<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Classes with attended Students</title>

	</head>
	<body>
	<table>
	   <thead>
	    <tr>
	        <td> Course Name </td>
	        <td> Class Name </td>
	        <td> Instructor Name </td>
	    </tr>
	   </thead>
	    <tbody>
	    <g:each in="${name}" var="c" >
	        <tr>
	            <td>${c.courseName}</td>
	            <td> ${c.className}</td>
	            <td>${c.instructorName}</td>
	        </tr>
	    </g:each >
	        </tbody>
	</table>

	</body>
</html>

