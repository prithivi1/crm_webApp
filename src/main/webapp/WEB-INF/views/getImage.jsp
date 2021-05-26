<%@page import="com.myApp.DTO.ProductDTO"%>
<%@page import="com.myApp.Service.ProductServiceImpl"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.myApp.Service.ProductService"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.List,java.util.ArrayList"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.sql.*"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%

//UserModel user =(UserModel) session.getAttribute("user");
String email = (String)request.getParameter("email");
System.out.println("picture--->"+email);

ProductService product = new ProductServiceImpl();

try{
	
		List<ProductDTO> list = product.getAllProducts();
		for(ProductDTO i:list)
		{
			if(i.getName().equals(email))
			{
		        byte byteArray[] = i.getPicture();
		        response.setContentType("image/gif");
		        OutputStream os = response.getOutputStream();
		        os.write(byteArray);
		        os.flush();
		        break;
			}
		}
}
catch(Exception e){
    e.printStackTrace();
}

%>