package businesslogic.customerDAO;

import java.util.List;
import model.customer.Account;
import model.customer.Customer;


public interface CustomerDAOInterface{
    public Customer getCustomerByAccount(Account account);
    public boolean checkLogin(Customer customer);
    public boolean register(Customer customer);
    public boolean register2(Account account, Customer customer);
    public List<Customer> getAllCustomer();
    
}
