/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.OrderFacadeLocal;
import za.ac.tut.entities.Order;

/**
 *
 * @author nhlak
 */
public class ViewServlet extends HttpServlet {
    @EJB OrderFacadeLocal ofl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Order> orders = new ArrayList<>();
        orders = ofl.findAll();
        
        String message = "";
        if(orders != null){
            message = "Customer orders found.";
            
            request.setAttribute("message", message);
            
            request.setAttribute("orders", orders);
            
            RequestDispatcher disp = request.getRequestDispatcher("view_outcome.jsp");
            
            disp.forward(request, response);
            
        }else{
            message = "No orders found!";
            request.setAttribute("message", message);
            RequestDispatcher disp = request.getRequestDispatcher("view_orders.jsp");
            disp.forward(request, response);
        }
        
    }

}
