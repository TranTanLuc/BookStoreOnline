<%@page import="businesslogic.itemDAO.BookDAO"%>
<%@page import="model.item.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Book Store</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body style="background: #fff">
        <div id="wrap" >
        	<%@include file="header.jsp" %>

            <div class="center_content" style="background: #fff">
            	<table class="cart_table" style="margin-top: 100px;" >
                   	<tr style="height: 100px; font-size: 20px;">
					    <th>Id</th>
					    <th>Name</th>
					    <th>Price</th>
					    
					    <th>Picture</th>
				  	</tr>
                       		<%
		                        ArrayList<Book> listBooks = null;
		                    	BookDAO bookDao = new BookDAO();
		                    	listBooks = bookDao.getAllBook();
		                        for (int i = 0; i < listBooks.size(); i++) {
		                    %>
	                        <tr class="cart_title" style="font-size: 15px">
	                            <td ><%=listBooks.get(i).getId()%></td>
	                            <td ><%=listBooks.get(i).getName()%></td>
	                            <td><%=listBooks.get(i).getPrice()%></td>
	                            
	                            <td><%=listBooks.get(i).getPicture()%></td>
	                        </tr>   
	                        <%}%>                         
		                        
                   </table>
                <div class="left_content login_form">
                    <div class="title login_title">List Book</div>
					<div class="login_des">Enter Book details to add book</div>
                    <div class="feat_prod_box_details">
                        <div class="contact_form">
                            <form name="admin" action="Admin" method="post">  
                            	<div class="form_row">
                                    <label class="contact"><strong>Name</strong></label>
                                    <input type="text" name="id" class="contact_input" placeholder="Id"/>
                                </div>        
                                <div class="form_row">
                                    <label class="contact"><strong>Name</strong></label>
                                    <input type="text" name="name" class="contact_input" placeholder="Name"/>
                                </div>  

                                <div class="form_row">
                                    <label class="contact"><strong>Price</strong></label>
                                    <input type="text" name="price" class="contact_input" placeholder="Price"/>
                                </div>
                                
                                <div class="form_row">
                                    <label class="contact"><strong>Description</strong></label>
                                    <input type="text" name="description" class="contact_input" placeholder="Description"/>
                                </div>
                                
                                <div class="form_row">
                                    <label class="contact"><strong>Picture(Link Image)</strong></label>
                                    <input type="text" name="picture" class="contact_input" placeholder="Picture"/>
                                </div> 

                                <div class="form_footer">
                                	<button type="submit" class="register" value="admin">Add Book</button>
                                </div>   
                            </form>     
                        </div>  
                    </div>	

                    <div class="clear"></div>
                </div><!--end of left content-->

      
                <div class="clear"></div>
            </div><!--end of center content-->
        </div>

    </body>
</html>