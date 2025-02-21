package sumadora;
 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
 
@WebServlet("/factorial")
public class SumadoraServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int num = Integer.parseInt(request.getParameter("num1"));

            if (num < 0) {
                request.setAttribute("error", "No se puede calcular el factorial de un número negativo.");
            } else {
                long resultado = factorial(num);
                request.setAttribute("resultado", resultado);
            }

            request.getRequestDispatcher("resultado.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Por favor ingresa un número entero válido.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    private long factorial(int n) {
        long fact = 1;
        for (int i = 2; i <= n; i++) {
            fact *= i;
        }
        return fact;
    }
}