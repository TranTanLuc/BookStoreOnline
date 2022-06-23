<%@page import="model.item.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Book Store</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />

        <script src="js/prototype.js" type="text/javascript"></script>
        <script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
        <script src="js/lightbox.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/java.js"></script>
        <%
            String message = (String) session.getAttribute("message");
            if (message != null) {
        %>
        <script>
            alert("<%=message%>");
        </script>
        <%
        session.removeAttribute("message");
            }%>
    </head>
    <body>
        

            <%@include file="header.jsp" %>
            <%
            	String category = (String) request.getAttribute("category");
            	switch(category){
            		case "book":
            			Book book1 = (Book) request.getAttribute("book");%>
            			 <div class="center_content">
			            	<div class="product">
			            		<div class="product_img">
			            			<img src=<%=book1.getPicture()%> alt="" title="" />
			                    </div>
			                    <div class="product_des">
			                    	<h3><%=book1.getName()%></h3>
			                    	<p>By Evan Winter</p>
			                    	<div class="product_price"><%=book1.getPrice()%>đ</div>
			
			                    		<a href="Order?id=<%=book1.getId()%>&category=book" class="product_add">
			                    			Add To Cart
			                    		</a>
			
			                    </div>
			            	</div>        	
			                <div class="des">
			                	<div class="des_tabs">
			                		<div class="des_tab tab_active">Description</div>
			                		<div class="des_tab">Author</div>
			                		<div class="des_tab">Comments</div>
			                		<div class="des_tab">Review</div>
			                	</div>
			                	
			                	<div class="des_contents">
			                		<div class="des_content content_active"><%=book1.getDescription()%></div>
			                	</div>
			                </div>
			            </div>
		            <% 
		            	break;
            	}
            %>

            
				

            <%@include file="footer.jsp" %>




    </body>
</html>