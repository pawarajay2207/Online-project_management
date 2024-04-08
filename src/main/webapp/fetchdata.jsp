<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Data</title>
</head>
<body>
	<table border="2">

		<tr>
			<th>Project Name</th>
			<th>Reason</th>
			<th>Type</th>
			<th>Division</th>
			<th>Categary</th>
			<th>priority</th>
			<th>Depart.</th>
			<th>Location</th>
			<th>Status</th>
			
		</tr>
		

		<c:forEach var="emp" items="${e_data }">
			<tr>
				<td>${emp.ProjectName}</td>
				<td>${emp.Reason}</td>
				<td>${emp.Type}</td>
				<td>${emp.Division}</td>
				<td>${emp.Category}</td>
				<td>${emp.Priority}</td>
				<td>${emp.Department}</td>
				<td>${emp.Location}</td>
				<td>${emp.Status}</td>
				
				 <td><a href="<c:url value='/Start/${emp.Reason}'/>">Start</a></td>
				<td><a href="<c:url value='/update/${emp.p_id}'/>">close</a></td>
				<td><a href="<c:url value='/delete/${emp.P_id}'/>">Cancel</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>