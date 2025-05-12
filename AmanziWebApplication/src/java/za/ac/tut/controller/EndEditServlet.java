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
 * @author nhlak
 */
public class EndEditServlet extends HttpServlet {

    @EJB
    ProductFacadeLocal pfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Double price = Double.parseDouble(request.getParameter("price"));
        Integer qty = Integer.parseInt(request.getParameter("qty"));
        
        //
        Product product = pfl.find(id);
        product.setUnitPrice(price);
        product.setStockQuantity(qty);
        //
        pfl.edit(product);
        
        request.setAttribute("product", product);
        RequestDispatcher disp = request.getRequestDispatcher("edit_outcome.jsp");
        disp.forward(request, response);

    }

}
