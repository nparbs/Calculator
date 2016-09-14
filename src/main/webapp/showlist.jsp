<%-- 
    Document   : showlist
    Created on : Sep 12, 2016, 9:02:09 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
 <%
            Object obj = request.getAttribute("shoppingList");
            if(obj==null){
                response.sendRedirect("ListController");
            }
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>list</title>
    </head>
    <body>
        <h1>List!</h1>
        <ul>
        <c:forEach var="item" items="${shoppingList}">
        
            <li>${item}</li> 
        
        </c:forEach>
        </ul>
    </body>
</html>
