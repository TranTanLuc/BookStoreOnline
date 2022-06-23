package businesslogic.orderDAO;

import model.customer.Customer;
import model.order.Order;


public interface OrderDAOInterface {
    public boolean addOrder(Order order, Customer customer);
    
}
