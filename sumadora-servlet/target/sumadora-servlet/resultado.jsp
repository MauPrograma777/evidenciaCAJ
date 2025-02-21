<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado de la operación</title>
</head>
<body>
    <h2>Resultado de la operación</h2>
    <p>El resultado de la operación es: <strong><%= request.getAttribute("resultado") %></strong></p>
    <a href="index.jsp">Volver a sumar</a>
</body>
</html>