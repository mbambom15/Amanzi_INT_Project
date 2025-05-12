package za.ac.tut.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.User;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T11:37:25")
@StaticMetamodel(CustomerProfile.class)
public class CustomerProfile_ { 

    public static volatile SingularAttribute<CustomerProfile, String> address;
    public static volatile SingularAttribute<CustomerProfile, String> name;
    public static volatile SingularAttribute<CustomerProfile, String> contactNumber;
    public static volatile SingularAttribute<CustomerProfile, Long> id;
    public static volatile SingularAttribute<CustomerProfile, User> user;

}