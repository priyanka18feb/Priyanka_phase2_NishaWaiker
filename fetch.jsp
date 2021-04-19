<%@page import="java.sql.*"%>
<%@page import="servlets.Login"%>

<%
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "flyaway";
    String userId = "root";
    String password = "admin";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=2">
    <title>FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<h2 align="center"><span><strong>Flight Database</strong></span></h2><br><br>
<div class="container">
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th scope="col">Flight ID</th>
            <th scope="col">Name</th>
            <th scope="col">Source</th>
            <th scope="col">Destination</th>
            <th scope="col">Day</th>
        </tr>
        </thead>
        <tbody>
        <%
            if (Login.isLoggedIn) {
                try{
                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM flight";

                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
        %>
        <tr bgcolor="#F5F5F5">
            <th scope="row"><%=resultSet.getString("flight_id") %></th>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=resultSet.getString("days") %></td>

        </tr>
        <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            else {
                out.print("You have to Login as Admin");
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>

