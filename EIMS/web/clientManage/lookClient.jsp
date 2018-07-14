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

        <title>客户查询</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">
        <table align="center" width="500px" class="bar">

            <tr>

                <td>客户查询</td>

                <td><a href="http://localhost:6643/EIMS/web/clientManage/addClient.jsp">客户添加</a></td>

                <td><a href="http://localhost:6643/EIMS/web/clientManage/updateClient.jsp">客户修改</a></td>

                <td><a href="http://localhost:6643/EIMS/web/clientManage/deleteClient.jsp">客户删除</a></td>
             </tr>

        </table>

        <br>

        <hr>

        <br>

         <table align="center"width="700"border=2" >

            <tr>

                <th colspan="4">查看客户信息</th>

            </tr>

            <tr>

                <td>姓名</td>

                <td>电话</td>

                <td>地址</td>

                <td>邮箱 </td>
    
            </tr>

            <%


		String url="jdbc:odbc:eims";
        	String user ="sa";//这里替换成你自已的数据库用户名
        	String password = "123456";//这里替换成你自已的数据库用户密码
        	String sqlStr = "select * from client";

        	try{    //这里的异常处理语句是必需的.否则不能通过编译!    
	        	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

            		//out.println( "sun.jdbc.odbc.JdbcOdbcDriver类实例化成功!<BR>" );

            		Connection con = DriverManager.getConnection( url, user, password );
            		//out.println( "创建连接对像成功!<BR>" );
			
			Statement st = con.createStatement();
            		//out.println( "创建Statement成功!<BR>" );

        

                ResultSet rs=st.executeQuery(sqlStr);

                while(rs.next()){

            %>
             <tr>

               <td><%=rs.getString("clientName")%></td>

               <td><%=rs.getString("clientTelephone")%></td>

               <td><%=rs.getString("clientAddress")%></td>

               <td><%=rs.getString("clientEmail")%></td>
             </tr>

           <%

                }
		}
		catch(Exception err){        out.println( "<BR>创建连接error!" );      }
	
           %>

        </table>

    </body>

</html>

