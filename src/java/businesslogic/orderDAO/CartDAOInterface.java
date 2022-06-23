package businesslogic.orderDAO;

import model.customer.Customer;
import model.order.Order;


public interface CartDAOInterface {
    public boolean addCart(Order order, Customer customer);
}
