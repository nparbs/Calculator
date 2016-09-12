<%-- 
    Document   : calcAnswer
    Created on : Sep 7, 2016, 9:27:04 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer page</title>
    </head>
    <body>
        <h2>Lab #1 Answer</h2>
        <%
            Object obj = request.getAttribute("msg");
            String msg = "";
            if(obj != null){
                msg = obj.toString();
            }
        %>
        <p>The answer is <%= msg %></p>
        
        <p><a href="index.jsp">Back to Home</a></p>
</html>
