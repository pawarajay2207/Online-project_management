<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
</head>
<body>
    <form action="/updateData" method="post">
        <table border="2">
            <tr>
                <th>Project Name</th>
                <th>Reason</th>
                <th>Type</th>
                <th>Division</th>
                <th>Category</th>
                <th>Priority</th>
                <th>Department</th>
                <th>Location</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="emp" items="${e_data}">
                <tr>
                    <td><input type="text" name="ProjectName" value="${emp.ProjectName}" /></td>
                    <td><input type="text" name="Reason" value="${emp.Reason}" /></td>
                    <td><input type="text" name="Type" value="${emp.Type}" /></td>
                    <td><input type="text" name="Division" value="${emp.Division}" /></td>
                    <td><input type="text" name="Category" value="${emp.Category}" /></td>
                    <td><input type="text" name="Priority" value="${emp.Priority}" /></td>
                    <td><input type="text" name="Department" value="${emp.Department}" /></td>
                    <td><input type="text" name="Location" value="${emp.Location}" /></td>
                    <td><input type="text" name="Status" value="${emp.Status}" /></td>
                    <td>
                        <input type="submit" value="Update" />
                        <a href="<c:url value='/delete/${emp.P_id}'/>">Cancel</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</body>
</html>
