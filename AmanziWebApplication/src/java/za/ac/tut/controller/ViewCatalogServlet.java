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
import za.ac.tut.bl.ProductFacadeLocal;
import za.ac.tut.entities.Product;

/**
 *
 * @author khuts
 */
public class ViewCatalogServlet extends HttpServlet {
    @EJB ProductFacadeLocal pfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Product> allProducts =pfl.findAll();
        
        //
        request.setAttribute("allProducts", allProducts);
        //
        PrintWriter out = response.getWriter();
        for(int x = 0; x < allProducts.size();x++){
            out.print(allProducts.get(x).getId());
        }
        RequestDispatcher disp = request.getRequestDispatcher("catalog.jsp");
        disp.forward(request, response);
       
    }

}
