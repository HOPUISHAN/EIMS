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

        <title>售后查询</title>

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

                <td>售后查询</td>

                <td><a href="http://localhost:6643/EIMS/web/CSManage/addCS.jsp">售后添加</a></td>

             </tr>

        </table>

        <br>

        <hr>

        <br>

         <table align="center"width="700"border=2" >

            <tr>

                <th colspan="3">查看售后信息</th>

            </tr>

            <tr>

                <td>客户姓名</td>

                <td>客户反馈意见</td>

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

                String sql="select * from cs";

                rs=stmt.executeQuery(sql);

                while(rs.next()){

            %>
             <tr>
 
               <td><%=rs.getString("clientName")%></td>

               <td><%=rs.getString("clientOpinion")%></td>

               <td><%=rs.getString("StaffName")%></td>
  
           </tr>

           <%

                }

           %>

        </table>

    </body>

</html>

