<%@page import="model.item.Book"%>
<%@page import="model.order.Order"%>
<%@page import="businesslogic.orderDAO.PaymentDAO"%>
<%@page import="model.order.Payment"%>
<%@page import="businesslogic.orderDAO.ShipmentDAO"%>
<%@page import="model.order.Shipment"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
int totalAmout = 0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Book Store</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
            <%@include file="header.jsp" %>
            <div class="center_content">
                    <div class="title cart_title">My cart</div>
                    <table class="cart_table">
                    	<tr style="height: 100px; font-size: 20px;">
						    <th style="width:10%">Product</th>
						    <th style="width:20%">Name</th>
						    <th>Price</th>
						    <th>Quantity</th>
						    <th>Total</th>
					  	</tr>
                        <%	
                            Order order2 = (Order) session.getAttribute("ORDER");
                            if (order2 != null && order2.getListBook().size() > 0) {
                                for (Book book : order2.getListBook()) {
                                	if(book.getName() == null){
                                		continue;
                                	}
			                        %>
			                        <tr class="cart_title" style="font-size: 15px">
			                            <td style="width:10%">
			                                <img src="<%=book.getPicture()%>" alt="Ảnh"></img>
			                            </td>
			                            <td style="width:20%"><%=book.getName()%></td>
			                            <td><%=book.getPrice()%></td>
			                            <td>1</td>
			                            <% totalAmout += book.getPrice(); %>
			                            <td><%=book.getPrice()%></td>
			                        </tr>                            
			                        <%
		                        }
                            }             
                        %>
                    </table>
                    <div class="cart_total">
                    	<label for="payment">Choose Payment: </label>
							<select name="payment" id="payment">
		                    	<%
			                        ArrayList<Payment> listPayment = null;
		                    		PaymentDAO paymentDao = new PaymentDAO();
			                    	listPayment = paymentDao.getPayment();
			                        for (int i = 0; i < listPayment.size(); i++) {
			                    %>
									  <option value="<%= listPayment.get(i).getName() %>"><%= listPayment.get(i).getName() %></option>
		
			                    <% 
			                    	} 
			                    %>

							</select>
                    </div>
                    <div class="cart_total">
                    	<label for="shipment">Choose Shipment: </label>

						<select name="shipment" id="shipment">
						  	<%
		                        ArrayList<Shipment> listShipment = null;
						  		ShipmentDAO shipmentDao = new ShipmentDAO();
		                    	listShipment = shipmentDao.getShipment();
		                        for (int i = 0; i < listShipment.size(); i++) {
		                    %>
								  <option value="<%= listShipment.get(i).getName() %>"><%= listShipment.get(i).getName()%> - <%= listShipment.get(i).getPrice()%>đ</option>
	
		                    <% 
		                    	} 
		                    %>
						</select>
                    </div>
                    <div class="cart_total">
                    	<div class="cart_total-text">Subtotal</div>
                    	<div class="cart_total-price"><%=totalAmout %>đ</div>
                    </div>
                    <div class="cart_button">
                    	<a href="index.jsp" class="cart_btn">Continue Shopping</a>
                    	<a href="ApprovalOrder" class="cart_btn">Proceed to checkout</a>
                    </div>
            </div>
            <%@include file="footer.jsp" %>
    </body>
</html>