package za.ac.tut.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Order;
import za.ac.tut.entities.Product;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T11:37:25")
@StaticMetamodel(OrderItem.class)
public class OrderItem_ { 

    public static volatile SingularAttribute<OrderItem, Product> product;
    public static volatile SingularAttribute<OrderItem, Integer> quantity;
    public static volatile SingularAttribute<OrderItem, Double> totalprice;
    public static volatile SingularAttribute<OrderItem, Long> id;
    public static volatile SingularAttribute<OrderItem, Order> order;

}