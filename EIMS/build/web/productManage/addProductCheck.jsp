<%@page info="database handler"%>


<%@page import="java.sql.*"%>

<%@page import="java.io.*"%>

<%@page import="java.lang.*"%>


<%@page import="java.util.*"%>


<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>处理客户添加数据</title>

    </head>

    <body>

        <%

            String productName=request.getParameter("productName");

            String productModel=request.getParameter("productModel");

            String productNumber=request.getParameter("productNumber");

            String productPrice=request.getParameter("productPrice");

            Connection con=null;

            Statement st=null;

           try{

               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               String url="jdbc:odbc:eims";

               con=DriverManager.getConnection(url,"sa","123456");

               st=con.createStatement();

               String sql="insert into product(productName,productModel,productNumber,productPrice) values ('"+productName+"','"+productModel+"','"+productNumber+"','"+productPrice+"')";

               st.executeUpdate(sql);

               response.sendRedirect("http://localhost:6643/EIMS/web/productManage/lookProduct.jsp");
    
           }

           catch(Exception e){

               e.printStackTrace();

           }

           finally{

              st.close();

              con.close();

           }

        %>

    </body>

</html>
