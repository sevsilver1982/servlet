<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>

        <!-- Title -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>AJAX</title>
    </head>
    <script>
        function sendGreeting() {
            $.ajax({
                type: 'GET',
                url: 'http://localhost:8080/myajax/greet',
                data: 'name=' + $('#inputEmail').val(),
                dataType: 'text'
            }).done(function(data) {
                document.getElementById("labelUserName").textContent = data;
            }).fail(function(err){
                alert(err);
            });
        }
    </script>
    <body>
        <div class="container">
            <h1>
                <label id="labelUserName">User name</label>
            </h1>
            <hr>
            <form>
                <div class="form-group">
                    <div class="form-group">
                        <label for="inputEmail">Email address</label>
                        <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                </div>
                <hr>
                <button type="button" class="btn btn-primary" onclick="sendGreeting()">Submit</button>
            </form>
        </div>
    </body>
</html>