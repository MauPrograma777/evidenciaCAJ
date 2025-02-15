<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Calculadora JSP</title>
    <script>
        function actualizarFormulario() {
            let operacion = document.getElementById("operacion").value;
            let num2 = document.getElementById("num2");

            
            let operacionesConUno = ["raiz", "factorial", "logaritmo", "absoluto"];

            num2.disabled = operacionesConUno.includes(operacion);
            if (num2.disabled) num2.value = ""; 
        }
    </script>
</head>
<body>
    <h2>Calculadora en JSP</h2>
    <form action="calcular.jsp" method="post">
        <input type="number" name="num1" required />

        <select id="operacion" name="operacion" onchange="actualizarFormulario()">
            <option value="sumar">+</option>
            <option value="restar">-</option>
            <option value="multiplicar">*</option>
            <option value="dividir">/</option>
            <option value="modulo">Módulo</option>
            <option value="potencia">Potencia</option>
            <option value="raiz">Raíz cuadrada</option>
            <option value="factorial">Factorial</option>
            <option value="logaritmo">Logaritmo natural</option>
            <option value="absoluto">Valor absoluto</option>
        </select>

        <input type="number" id="num2" name="num2" required />

        <button type="submit">Calcular</button>
    </form>
</body>
</html>
