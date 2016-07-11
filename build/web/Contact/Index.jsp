<%-- 
    Document   : Index
    Created on : Jul 2, 2016, 11:52:39 AM
    Author     : William
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="../CSS/Main.css">
        <script type="text/javascript" src="../JS/JQuery/UI(uncompressed)/JQuery-ui.js"></script>
        <script type="text/javascript" src="../JS/Main.js"></script>
        <script type="text/javascript" src="../JS/String.js"></script>        
        <script type="text/javascript" src="../JS/Directory.js"></script>  
        <script type="text/javascript" src="../JS/JSONparse.js"></script>
    </head>
    <body>
        <div class="Page">
            <div class="Main-Menu">
                <div class="Main-Title" id="Title"></div>
                <nav class="Main-Select" name="nav">
                    <ul><button onclick="redirect(STRING.FILE_LOCATION[0].LOCATION)" id="navbtn1"></button></ul>
                    <ul><button onclick="redirect(STRING.FILE_LOCATION[1].LOCATION)" id="navbtn2"></button></ul>
                    <ul><button onclick="redirect(STRING.FILE_LOCATION[2].LOCATION)" id="navbtn3"></button></ul>
                    <ul><button onclick="redirect(STRING.FILE_LOCATION[3].LOCATION)" id="navbtn4"></button></ul>      
                </nav>
            </div>
        </div>
        <script type="text/javascript" src="../JS/JSONparse.js"></script>
        <script type="text/javascript" src="/WBender/JS/JQuery/UI(uncompressed)/JQuery-ui.js"></script>
    </body>
</html>
