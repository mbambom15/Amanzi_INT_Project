package za.ac.tut.controller;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.CustomerProfileFacadeLocal;
import za.ac.tut.entities.CustomerProfile;

public class LoginCustServlet extends HttpServlet {

    @EJB
    CustomerProfileFacadeLocal cpfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("pswd");

        List<CustomerProfile> customers = cpfl.findAll();
        boolean isFound = false;
        CustomerProfile matchedProfile = null;

        for (CustomerProfile customer : customers) {
            
            if (customer.getUser().getUsername().equals(username) &&
                customer.getUser().getPassword().equals(password)) {
                matchedProfile = customer;
                isFound = true;
                break;
            }
        }

        if (isFound) {
            HttpSession session = request.getSession(true);
            session.setAttribute("customer", matchedProfile);
            // Redirect or forward to a dashboard or welcome page
            RequestDispatcher disp = request.getRequestDispatcher("customer_menu.jsp");
            disp.forward(request, response);
        } else {
            
            request.setAttribute("message", "Invalid login creditanls");
            RequestDispatcher disp = request.getRequestDispatcher("login_cust.jsp");
            disp.forward(request, response);
        }
    }
}
