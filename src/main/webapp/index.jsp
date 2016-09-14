<%-- 
    Document   : index
    Created on : Sep 7, 2016, 8:57:58 PM
    Author     : Nick
<%@page import="model.CalcType"%>
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="main.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://bootswatch.com/cyborg/bootstrap.min.css">
       <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Lab #1 Calculator</h1>

        <h2>Area of Rectangle</h2>
        <form id="rectangleForm" name="rectangleForm" method="POST" action="Calc1">
            Width: <input type="text" name="val1" value=""/><br>
            Length <input type="text" name="val2" value=""/><br>
            <input type="hidden" name="type" value="RECT"/>
            <input type="submit" name="submit" value="submit"/>
        </form>
        <p><a href="lab2calc.jsp">Lab #2</a></p> 
        
    </body>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>
