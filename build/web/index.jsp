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
    <body>
        <div id="wrap">
            <%@include file="header.jsp" %>
			
			<div class="banner">
				<img src="https://img.freepik.com/free-psd/banner-bookstore-ad-template_23-2148680419.jpg?size=626&ext=jpg"></img>
			</div>
            <div class="center_content">
                <div class="left_content">

                    <h2 class="title">New Books</h2>
                    <div class="main_box">
                    	<%
	                        ArrayList<Book> listBooks = null;
	                    	BookDAO bookDao = new BookDAO();
	                    	listBooks = bookDao.getBookNew();
	                        for (int i = 0; i < listBooks.size(); i++) {
	                    %>
	
	                    <div class="feat_prod_box">
	
	                        <div class="prod_img"><a href="Details?id=<%=listBooks.get(i).getId()%>&category=book"><img src=<%=listBooks.get(i).getPicture()%> alt="" title="" border="0" /></a></div>
	
	                        <div class="prod_det_box">
	                            <div class="box_center">
	                                <div class="box_title"><%=listBooks.get(i).getName()%></div>
	                                <div class="box_author">Unknown Author</div>
	                                <div class="box_footer">
	                                	<p class="box_para">Price</p>
	                                	<p class="box_price"><%=listBooks.get(i).getPrice() %>đ</p>
	                                </div>
	                            </div>
	
	                            
	                        </div>    
	                    </div>      
	                    <%}%>
                    </div>
                </div>

            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>