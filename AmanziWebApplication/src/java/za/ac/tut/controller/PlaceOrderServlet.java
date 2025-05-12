package za.ac.tut.controller;

import java.io.IOException;
import java.util.*;
import javax.ejb.EJB;
import javax.servlet.*;
import javax.servlet.http.*;
import za.ac.tut.bl.CustomerProfileFacadeLocal;
import za.ac.tut.bl.OrderFacadeLocal;
import za.ac.tut.bl.ProductFacadeLocal;
import za.ac.tut.entities.*;

public class PlaceOrderServlet extends HttpServlet {

    @EJB
    private OrderFacadeLocal orderFacade;

    @EJB
    private ProductFacadeLocal productFacade;

    @EJB
    private CustomerProfileFacadeLocal ccfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String[] selectedProductIds = request.getParameterValues("productIds");

        if (selectedProductIds == null || selectedProductIds.length == 0) {
            request.setAttribute("message", "No products selected.");
            request.getRequestDispatcher("order_summary.jsp").forward(request, response);
            return;
        }

        List<OrderItem> orderItems = new ArrayList<>();
        double totalOrderPrice = 0.0;

        for (String idStr : selectedProductIds) {
            Long productId = Long.parseLong(idStr);
            Product product = productFacade.find(productId);

            String qtyParam = request.getParameter("orderQty_" + productId);
            int quantity = Integer.parseInt(qtyParam);

            // Deduct from stock
            int newStock = product.getStockQuantity() - quantity;
            product.setStockQuantity(newStock);
            productFacade.edit(product);  // update stock in DB

            double itemTotal = quantity * product.getUnitPrice();

            OrderItem item = new OrderItem();
            item.setProduct(product);
            item.setQuantity(quantity);
            item.setTotalprice(itemTotal);

            orderItems.add(item);
            totalOrderPrice += itemTotal;
        }

        HttpSession session = request.getSession(false);
        CustomerProfile customer = (CustomerProfile) session.getAttribute("customer");
        if (customer == null) {
            request.setAttribute("message", "Session expired. Please log in again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        Order order = new Order();
        order.setOrderDate(new Date());
        order.setDeliveryMethod("Standard");
        order.setTotalPrice(totalOrderPrice);
        order.setCustomer(customer);
        order.setOrderItems(orderItems);

        for (OrderItem item : orderItems) {
            item.setOrder(order);
        }

        orderFacade.create(order);

        request.setAttribute("orderItems", orderItems);
        request.setAttribute("total", totalOrderPrice);
        request.setAttribute("message", "Order placed successfully!");

        RequestDispatcher dispatcher = request.getRequestDispatcher("order_summary.jsp");
        dispatcher.forward(request, response);
    }
}
