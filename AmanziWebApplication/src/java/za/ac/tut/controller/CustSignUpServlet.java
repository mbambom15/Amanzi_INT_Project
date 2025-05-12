/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.CustomerProfileFacadeLocal;
import za.ac.tut.bl.UserFacadeLocal;
import za.ac.tut.entities.CustomerProfile;
import za.ac.tut.entities.User;

/**
 *
 * @author nhlak
 */
public class CustSignUpServlet extends HttpServlet {

    @EJB
    CustomerProfileFacadeLocal cpfl;
    
    @EJB
    UserFacadeLocal ufl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String username = request.getParameter("username");
        String password = request.getParameter("pswd");
        String role = request.getParameter("role");
        //
        User user = new User(username, password, role);
        ufl.create(user);
        //
        CustomerProfile customer = new CustomerProfile(user, name, contact, address);
        //
        cpfl.create(customer);
        RequestDispatcher disp = request.getRequestDispatcher("login_cust.jsp");
        disp.forward(request, response);

    }

}
