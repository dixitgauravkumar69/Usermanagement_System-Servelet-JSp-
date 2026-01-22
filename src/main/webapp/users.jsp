<%@ page import="java.util.List" %>
<%@ page import="com.serveletFirst.User" %>

<html>
<head>
    <title>User List</title>
</head>
<body>

<h2>User Table</h2>

<table border="1" cellpadding="10">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Date</th>
        <th>Password</th>
    </tr>

<%
    List<User> list = (List<User>) request.getAttribute("userList");

    if (list != null) {
        for (User u : list) {
%>
    <tr>
        <td><%= u.getName() %></td>
        <td><%= u.getEmail() %></td>
        <td><%= u.getDate() %></td>
        <td><%= u.getPassword() %></td>
    </tr>
<%
        }
    }
%>

</table>

</body>
</html>
