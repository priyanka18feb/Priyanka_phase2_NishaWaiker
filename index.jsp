<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <div class="container">
        <div class="row">
            <div class="col">
                <img src="img/favicon.png" class="img-fluid" alt="image">
                <a class="btn btn-primary" href="login.jsp" role="button">Admin Login</a>
                <br>
            </div>
            <div class="col">
                <h1>FlyAway Airlines - Ticket Booking </h1>
                <br>
            </div>
        </div>

    </div>


    <div class="container">
        <form action="search">
            <div class="form-group">
                <label for="date">Date</label>
                <input type="date"  class="form-control" id="date" name="date" placeholder="Travel Date..">
            </div>
            <div class="form-group">
                <label for="source">Source</label>
                <select  class="form-control" id="source" name="source">
                    <option value="india">India</option>
                    <option value="canada">Canada</option>
                    <option value="usa">USA</option>
                    <option value="russia">Russia</option>
                    <option value="china">China</option>
                </select>
            </div>
            <div class="form-group">
                <label for="destination">Destination</label>
                <select  class="form-control" id="destination" name="destination">
                    <option value="india">India</option>
                    <option value="canada">Canada</option>
                    <option value="usa">USA</option>
                    <option value="russia">Russia</option>
                    <option value="china">China</option>
                </select>
            </div>
            <div>
                <label for="persons">No of Persons</label>
                <select class="form-control" id="persons" name="persons">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            <br>
            <button type="submit" class="btn btn-success" value="Submit">Submit</button>
        </form>
    </div>

</body>
</html>