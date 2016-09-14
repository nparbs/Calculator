<%-- 
    Document   : calcAnswer
    Created on : Sep 7, 2016, 9:27:04 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="main.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://bootswatch.com/cyborg/bootstrap.min.css">
       <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer page</title>
    </head>
    <body>
        <h2>Lab #1 Answer</h2>
        <%
            Object obj = request.getAttribute("answer");
            String answer = "";
            if(obj != null){
                answer = obj.toString();
            }
        %>
        <p>The answer is <%= answer %></p>
        
        <p><a href="index.jsp">Back to Home</a></p>
    </body>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>
