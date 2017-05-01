package Intercept;

/**
 * Created by caesar on 4/30/17.
 */
import Login_Sources.Login;
import Login_Sources.Login_Approvals;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** * Servlet implementation class LoginServlet */
public class Intercept extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        try {
            Login user = new Login(request.getParameter("username"), request.getParameter("password"));

            boolean trueLogin = Login_Approvals.validate(user);

            if (trueLogin) {
                response.sendRedirect("LocalUser.jsp");
            } else
                response.sendRedirect("invalidLogin.jsp");
        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
}