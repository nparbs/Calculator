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
        <link rel="stylesheet" href="https://bootswatch.com/cyborg/bootstrap.min.css">
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
        <link href="main.css" rel="stylesheet" type="text/css"/>
        <title>Lab #2 Calculator</title>
    </head>
    <body>
        <%
            Object obj = request.getAttribute("answer");
            Object typeObj = request.getAttribute("type");
            String answer = "";
            String type = "";
            if (obj != null && typeObj != null) {
                answer = obj.toString();
                type = typeObj.toString();
            }
        %>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>Lab #2 Calculator</h1>
                    <img src="https://qph.ec.quoracdn.net/main-qimg-3fc26c9a5ece68ddb1789314fd46242f" style="width:400px; height:200px;"/>


                    <h2>Area of Rectangle</h2>
                    <form id="rectangleForm" name="rectangleForm" method="POST" action="lab2calc">
                        Width: <input type="text" name="val1" value=""/><br>
                        Length <input type="text" name="val2" value=""/><br>
                        <input type="hidden" name="type" value="RECT"/>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                    <%
                        if (type.equalsIgnoreCase(CalcType.RECT.toString())) {
                            //    out.println("The Area of the rectangle is " + msg);
                    %>
                    <br><div class="alert alert-success">
                        <p>The Area of the rectangle is ${answer}</p>
                    </div>
                    <%
                        }
                    %>



                    <br><img src="http://www.tutornext.com/system/files/u21/cir.JPG" style="width:300px; height:200px;"/>
                    <h2>Area of Circle</h2>
                    <form id="circleForm" name="circleForm" method="POST" action="lab2calc">
                        Width: <input type="text" name="val1" value=""/><br>
                        <input type="hidden" name="val2" value="0"/>
                        <input type="hidden" name="type" value="CIRCLE"/>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                    <%
                        if (type.equalsIgnoreCase(CalcType.CIRCLE.toString())) {
                            //    out.println("The Area of the cirlce is " + msg);
                    %>
                    <br><div class="alert alert-success">
                        The Area of the Circle is ${answer}
                    </div>

                    <%
                        }
                    %>
                    <br><img src="https://www.findtutorsnearme.com/wp-content/uploads/right-triangles-on-gmat-test.jpg" style="width:300px; height:200px;"/>
                    <h2>Length of hypotenuse </h2>
                    <form id="triForm" name="triForm" method="POST" action="lab2calc">
                        Width: <input type="text" name="val1" value=""/><br>
                        Height: <input type="text" name="val2" value=""/><br>
                        <input type="hidden" name="type" value="TRI"/>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                    <%
                        if (type.equalsIgnoreCase(CalcType.TRI.toString())) {
                            //    out.println("The length of the hypotenuse is " + msg);
                    %>
                    <br><div class="alert alert-success">
                        <p>The length of the hypotenuse is  ${answer}</p>
                    </div>
                    <%
                        }
                    %>

                    <p><a href="index.jsp">Back to Home</a></p>
                </div>
            </div>
        </div>
    </body>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>
