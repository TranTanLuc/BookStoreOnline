<%@page import="model.customer.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header">
    <div id="logo">
<!--    	<img src="data:image/webp;base64,UklGRuYBAABXRUJQVlA4TNkBAAAvZYAFEJdAkG1T6+Hd7gwCgRSnMMQCksRb/d8VEASQpDDD/mqHcIL+KLICQgw+yJJkJw6kNz2IhxCL8f1vK4Hd63dE/ycgp3P82Inn7zRV1fXzVZL8U+n2hys4v1stal0Cs+LUbET5slrUpmyGmdkN3E0lWK0WrT19klRuewbAQwsm9z0HRpIXGkmXlFvLn1J52N4wntZ80hgtnqp8wqI3dZzPBs/bQWEk5Yj1CVucgeESsJwCvRdnvV+AMLTRAq5dLDCS1EvScFxPthnoTgB0VVUBUN2CH8ENIBVnJ8V6z5kkiwDAcPbedDoTDo/UdfjL8WBkAFiuwYvje7kwLG3lF+jvQALZVITT1R4G+aykGADEApJlPcqBBAjuzYi6O5cHOF+9BGR/guAOcpA2VzScjVN8BoB0mWMCYCfqZnAH+cnlOt58NnvvXQBMNwE0N4LmigDI1VU8EadBLaWUBnz4jWyBSZINwNoNV/q1gNuxzDWV/nqESpJNkDr9jY9//n9wCIhjHVNdArAcSQNg7lDzs9uRhWHFe5huq/D1JOtRSXiGEcSaPgPjoEqQ9ADZDmrCG5gHlvEpkK4kSx3YT9MNsFpgF+JHSL2Q1HbBb/C2CD4zJ8Hn5pTxFAA="></img>-->
        <h1>BookShop</h1>
    </div>
    
    <form action="Search" method="post" class="search">
        <input class="search-text" type="text" name="keyword" placeholder="Search products">
        <input class="search-submit" type="submit" value="Search">
    </form>
    
    <div id="menu">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="cart.jsp">Cart</a></li>

            <%Account account = (Account) session.getAttribute("USER");
		if(account != null) {
		String username = account.getUsername();					      	
            %>
                
            <li><a href="Logout">Logout</a></li>
            <li><a href="login.jsp">Hello <%=username%></a></li>
                <%} else {%>
            <li><a href="login.jsp">Sign in</a></li>
            <li><a href="register.jsp">Register</a></li>
                <%}%>
        </ul>
    </div>   
</div> 
