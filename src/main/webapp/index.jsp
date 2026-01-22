<%@ page import="java.util.List" %>
<%@ page import="com.serveletFirst.User" %>

<html>
<head>
    <title>User Management</title>
    <link rel="stylesheet" href="./CSS/Style.css">
</head>
<body>

<div class="container">

    <h2>User Management Dashboard</h2>

    <div class="dashboard">

        <!-- LEFT: FORM -->
        <div class="form-container">
            <h3>Add User</h3>
            <form action="Mainservlet" method="post" class="user-form">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="userName" placeholder="Enter full name" required>
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="mail" placeholder="Enter email" required>
                </div>

                <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="date" name="date">
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Enter password">
                </div>

                <button type="submit">Add User</button>
            </form>
        </div>

        <!-- RIGHT: TABLE -->
        <div class="table-container">
            <h3>User List</h3>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Date</th>
                            <th>Password</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
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
                            <td>
    <form action="Mainservlet" method="post" style="display:inline;">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="email" value="<%= u.getEmail() %>">
        <button type="submit">Delete</button>
    </form>
</td>
                        </tr>
                    <%
                            }
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>

</body>
</html>
