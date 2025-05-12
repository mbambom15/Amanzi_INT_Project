package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.CustomerProfile;
import za.ac.tut.entities.OrderItem;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T11:37:25")
@StaticMetamodel(Order.class)
public class Order_ { 

    public static volatile SingularAttribute<Order, String> deliveryMethod;
    public static volatile SingularAttribute<Order, Double> totalPrice;
    public static volatile SingularAttribute<Order, Long> id;
    public static volatile SingularAttribute<Order, Date> orderDate;
    public static volatile ListAttribute<Order, OrderItem> orderItems;
    public static volatile SingularAttribute<Order, CustomerProfile> customer;

}