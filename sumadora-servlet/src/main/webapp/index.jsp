<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sumadora con Servlets</title>
</head>
<body>
    <h2>Calculadora de Suma</h2>
    <form action="sumar" method="post">
        Número 1: <input type="text" name="num1" required><br/><br/>
        Número 2: <input type="text" name="num2" required><br/><br/>
        <input type="submit" value="Calcular Suma">
    </form>
 
    <% if (request.getAttribute("error") != null) { %>
        <p style="color:red;"><%= request.getAttribute("error") %></p>
    <% } %>
</body>
</html>