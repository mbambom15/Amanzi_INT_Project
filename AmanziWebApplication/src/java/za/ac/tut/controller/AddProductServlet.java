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
import za.ac.tut.bl.ProductFacadeLocal;
import za.ac.tut.entities.Product;

/**
 *
 * @author khuts
 */
public class AddProductServlet extends HttpServlet {

    @EJB
    ProductFacadeLocal pfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        Integer qty = Integer.parseInt(request.getParameter("qty"));
        //create a product
        Product p1 = new Product(name, price, qty);
        //
        pfl.create(p1);
        //
        request.setAttribute("p1", p1);
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
    }
}
