
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AgeColorServlet")
public class AgeColorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String ageParam = request.getParameter("age");
        String color = request.getParameter("color");

        String message;
        String colorMessage;

        if (firstName == null || firstName.trim().isEmpty()
                || lastName == null || lastName.trim().isEmpty()) {
            message = "Please enter your full name.";
            colorMessage = "";
        } else {
            int age = Integer.parseInt(ageParam);
            if (age < 18) {
                message = "Hello " + firstName + " " + lastName + ", you are still a minor.";
            } else {
                message = "Hello " + firstName + " " + lastName + ", you are an adult.";
            }
            colorMessage = "Your favorite color is " + color + ".";
        }

        request.setAttribute("message", message);
        request.setAttribute("colorMessage", colorMessage);

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
