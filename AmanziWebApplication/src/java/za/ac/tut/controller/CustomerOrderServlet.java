/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.CustomerProfileFacadeLocal;
import za.ac.tut.bl.OrderFacadeLocal;
import za.ac.tut.entities.CustomerProfile;
import za.ac.tut.entities.Order;

/**
 *
 * @author nhlak
 */
public class CustomerOrderServlet extends HttpServlet {
    @EJB CustomerProfileFacadeLocal cpl;
    @EJB OrderFacadeLocal ofl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //use a session here for everytime after login.
        Long id = 52L;
        CustomerProfile customer = cpl.find(id);
        //
        List<Order> orders = ofl.findOrdersByCustomer(customer);
        //
        Integer countOrders = orders.size();
        //
        request.setAttribute("orders", orders);
        request.setAttribute("countOrders", countOrders);
        //
        RequestDispatcher disp = request.getRequestDispatcher("customer_orders.jsp");
        disp.forward(request, response);
        

    }

}
