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
import za.ac.tut.bl.OrderFacadeLocal;
import za.ac.tut.entities.CustomerProfile;

/**
 *
 * @author nhlak
 */
public class customersmorethanservlet extends HttpServlet {

    @EJB
    OrderFacadeLocal ofl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //
        List<CustomerProfile> customer = ofl.getCustomersWithMoreThanOneOrder();
        //
        request.setAttribute("customer", customer);
        
        RequestDispatcher disp = request.getRequestDispatcher("customersmorethan.jsp");
        disp.forward(request, response);

    }

}
