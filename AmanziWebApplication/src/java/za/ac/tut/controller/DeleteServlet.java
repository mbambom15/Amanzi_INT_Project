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
public class DeleteServlet extends HttpServlet {
@EJB ProductFacadeLocal pfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        //
        Product product = pfl.find(id);
        //
        pfl.remove(product);
        
        RequestDispatcher disp = request.getRequestDispatcher("delete_outcome.jsp");
        disp.forward(request, response);

    }

}
