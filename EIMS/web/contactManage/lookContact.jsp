<%@page info="database handler"%>


<%@page import="java.sql.*"%>

<%@page import="java.io.*"%>

<%@page import="java.lang.*"%>


<%@page import="java.util.*"%>


<%@page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>合同查询</title>

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

                <td>合同查询</td>

                <td><a href="http://localhost:6643/EIMS/web/contactManage/addContact.jsp">合同添加</a></td>

             </tr>

        </table>

        <br>

        <hr>

        

         <table align="center"width="700"border=2" >

            <tr>

                <th colspan="6">查看合同信息</th>

            </tr>

            <tr>

                <td>客户姓名</td>

                <td>合同名称</td>

                <td>合同内容</td>

                <td>合同生效日期</td>
 
                <td>合同有效期</td>
 
                <td>业务员</td>
 
            </tr>

            <%

                Connection con=null;

                Statement stmt=null;

                ResultSet rs=null;

                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                String url="jdbc:odbc:eims";

                con=DriverManager.getConnection(url,"sa","123456");

                stmt=con.createStatement();

                String sql="select * from contact";

                rs=stmt.executeQuery(sql);

                while(rs.next()){

            %>
             <tr>

               <td><%=rs.getString("clientName")%></td>

               <td><%=rs.getString("contactName")%></td>

               <td><%=rs.getString("contactContents")%></td>

               <td><%=rs.getString("contactStart")%></td>
   
            <td><%=rs.getString("contactEnd")%></td>
  
             <td><%=rs.getString("StaffName")%></td>
  
           </tr>

           <%

                }

           %>

        </table>

    </body>

</html>

