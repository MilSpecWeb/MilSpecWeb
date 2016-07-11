<%-- 
    Document   : Index
    Created on : Jul 2, 2016, 11:52:39 AM
    Author     : William
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Register</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../bootstrap/css/work-around.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../bootstrap/css/work-around.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../bootstrap/js/assets/workaround.js"></script>
    <script src="../JS/String.js" type="text/javascript"></script>
    <script src="../JS/Directory.js" type="text/javascript"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<script>
            function validate(form) {
                var myform = form.elements;
                        isValid = false,
                        errSp = "err",
                        errMsg = "";

                for (var i = 0; i < myform.length; i++) {
                    if (isEmpty(myform[i].value)) {
                        errMsg = "*Field Required: Please enter a value";
                        document.getElementById(errSp + (i + 1)).innerHTML = errMsg;
                        isValid = false;
                    }
                    if (!match(myform["passowrd"].value, myform["cpassword"].value)) {
                        errMsg = "*Error: Passwords do not match";
                        document.getElementById("err4").innerHTML = errMsg;
                        document.getElementById("err5").innerHTML = errMsg;
                        isValid = false;
                    }
                    if(!length(myform["password"].value.length,7)){
                        errMsg = "*Error: Password is to short";
                        document.getElementById("err4").innerHTML = errMsg;
                        isValid = false;
                    }
                    if (!isEmpty(myform[i].value) || match(myform["password"].value, myform["cpassword"].value)) {
                        errMsg = "Complete";
                        document.getElementById(errSp + (i + 1)).innerHTML = errMsg;
                        isValid = true;
                    }
                }
                alert(isValid);
                return false;
             //   return isValid;
            }
            function isEmpty(a) {
                return a === "" || a === null;
            }
            function match(a, b) {
                return a === b;
            }
            function length(a,b){
                return a > b;
            }
        </script>
    <div class="container">

        <form class="form-signin" name="myform" method="post" onsubmit="return validate()" action="../Forms/Register/Process.jsp">
            <h2 class="form-signin-heading">Please Register</h2>
            <label for="inputFName" class="sr-only">First Name</label>
            <input type="text" name="fname" id="inputFName" class="form-control" placeholder="First Name" autofocus><span id="err1"></span>
            <label for="inputLName" class="sr-only">Last Name</label>
            <input type="text" name="lname" id="inputLName" class="form-control" placeholder="Last Name"><span id="err2"></span>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address"><span id="err3"></span>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password"><span id="err4"></span>
            <label for="inputCPassword" class="sr-only">Confirm Password</label>
            <input type="password" name="cpassword" id="inputCPassword" class="form-control" placeholder="CPassword"><span id="err5"></span>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            

        </form>
                <button onclick="validate()">Test</button>
        
    </div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src = "../bootstrap/js/assets/workaround.js" ></script>
</html>
