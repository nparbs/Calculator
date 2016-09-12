<%-- 
    Document   : lab2calc
    Created on : Sep 12, 2016, 1:45:34 PM
    Author     : Nick

        <p>The answer is <%= msg %></p>
--%>

<%@page import="model.CalcType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="main.css" rel="stylesheet" type="text/css"/>
        <title>Lab #2 Calculator</title>
    </head>
    <body>
        <h2>Lab #2 Answer</h2>
        <%
            Object obj = request.getAttribute("msg");
            Object typeObj = request.getAttribute("type");
            String msg = "";
            String type = "";
            if(obj != null && typeObj != null){
                msg = obj.toString();
                type = typeObj.toString();
            }
        %>

        
        
        <h1>Lab #2 Calculator</h1>
        
        <h2>Area of Rectangle</h2>
        <form id="rectangleForm" name="rectangleForm" method="POST" action="lab2calc">
            Width: <input type="text" name="val1" value=""/><br>
            Length <input type="text" name="val2" value=""/><br>
            <input type="hidden" name="type" value="RECT"/>
            <input type="submit" name="submit" value="submit"/>
        </form>
        <%  
            if(type.equalsIgnoreCase(CalcType.RECT.toString())) { 
                out.println("The Area of the rectangle is " + msg);
            }
        %>
        
        <h2>Area of Circle</h2>
        <form id="circleForm" name="circleForm" method="POST" action="lab2calc">
            Width: <input type="text" name="val1" value=""/><br>
            <input type="hidden" name="val2" value="0"/>
            <input type="hidden" name="type" value="CIRCLE"/>
            <input type="submit" name="submit" value="submit"/>
        </form>
         <%  
            if(type.equalsIgnoreCase(CalcType.CIRCLE.toString())){
                out.println("The Area of the cirlce is " + msg);
            }
        %>
        
        <h2>Length of hypotenuse </h2>
        <form id="triForm" name="triForm" method="POST" action="lab2calc">
            Width: <input type="text" name="val1" value=""/><br>
            Height: <input type="text" name="val2" value=""/><br>
            <input type="hidden" name="type" value="TRI"/>
            <input type="submit" name="submit" value="submit"/>
        </form>
         <%  
            if(type.equalsIgnoreCase(CalcType.TRI.toString())){
                out.println("The length of the hypotenuse is " + msg);
            }
        %>
        
        <p><a href="index.jsp">Back to Home</a></p>
    </body>
</html>
