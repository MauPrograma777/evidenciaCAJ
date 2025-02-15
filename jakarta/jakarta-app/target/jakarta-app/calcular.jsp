<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
</head>
<body>
    <h2>Resultado de la Operación</h2>

    <%
    try {
        double num1 = Double.parseDouble(request.getParameter("num1"));
        String operacion = request.getParameter("operacion");
        double resultado = 0;

        // Intentar leer num2 solo si la operación lo requiere
        Double num2 = null;
        if (request.getParameter("num2") != null && !request.getParameter("num2").isEmpty()) {
            num2 = Double.parseDouble(request.getParameter("num2"));
        }

        switch (operacion) {
            case "sumar":
                resultado = num1 + num2;
                break;
            case "restar":
                resultado = num1 - num2;
                break;
            case "multiplicar":
                resultado = num1 * num2;
                break;
            case "dividir":
                if (num2 != 0) {
                    resultado = num1 / num2;
                } else {
                    throw new Exception("No se puede dividir por cero.");
                }
                break;
            case "modulo":
                resultado = num1 % num2;
                break;
            case "potencia":
                resultado = Math.pow(num1, num2);
                break;
            case "raiz":
                if (num1 < 0) {
                    throw new Exception("No se puede calcular la raíz cuadrada de un número negativo.");
                }
                resultado = Math.sqrt(num1);
                break;
            case "factorial":
                if (num1 < 0) {
                    throw new Exception("No se puede calcular el factorial de un número negativo.");
                }
                int fact = 1;
                for (int i = 1; i <= (int) num1; i++) {
                    fact *= i;
                }
                resultado = fact;
                break;
            case "logaritmo":
                if (num1 <= 0) {
                    throw new Exception("El logaritmo natural solo se puede calcular para números positivos.");
                }
                resultado = Math.log(num1);
                break;
            case "absoluto":
                resultado = Math.abs(num1);
                break;
            default:
                throw new Exception("Operación inválida");
        }
    %>

    <p>El resultado de <strong><%= num1 %></strong> 
    con la operación <strong><%= operacion %></strong> 
    <% if (num2 != null) { %> y <strong><%= num2 %></strong> <% } %>
    es: <strong><%= resultado %></strong></p>

    <%
    } catch (Exception e) {
    %>
        <p style="color: red;">Error en la operación: <%= e.getMessage() %></p>
    <%
    }
    %>

    <a href="index.jsp">Volver</a>
</body>
</html>
