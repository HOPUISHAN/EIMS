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

        <title>产品查询</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">

        <table align="center"width="500" class="bar">

            <tr>

                <td>产品查询</td>

                <td><a href="http://localhost:6643/EIMS/web/productManage/addProduct.jsp">产品添加</a></td>

             </tr>

        </table>

        <br>

        <hr>

        <br>

         <table align="center"width="700"border=2" >

            <tr>

                <th colspan="4">查看产品信息</th>

            </tr>

            <tr>

                <td>产品名称</td>

                <td>产品型号</td>

                <td>产品数量</td>

                <td>产品价格</td>
    
            </tr>

            <%

                Connection con=null;

                Statement stmt=null;

                ResultSet rs=null;

                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                String url="jdbc:odbc:eims";

                con=DriverManager.getConnection(url,"sa","123456");

                stmt=con.createStatement();

                String sql="select * from product";

                rs=stmt.executeQuery(sql);

                while(rs.next()){

            %>
             <tr>

               <td><%=rs.getString("productName")%></td>

               <td><%=rs.getString("productModel")%></td>

               <td><%=rs.getString("productNumber")%></td>

               <td><%=rs.getString("productPrice")%></td>
             </tr>

           <%

                }

           %>

        </table>

    </body>

</html>

