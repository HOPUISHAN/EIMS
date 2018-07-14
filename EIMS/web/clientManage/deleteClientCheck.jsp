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

        <title>处理客户删除数据</title>

    </head>

    <body>

        <%

            String clientName=request.getParameter("clientName");

            Connection con=null;

            Statement st=null;

            try{

                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 String url="jdbc:odbc:eims";

                 con=DriverManager.getConnection(url,"sa","123456");

                 st=con.createStatement();

                 String sql="delete from client where clientName='"+clientName+"'";

                 st.executeUpdate(sql);

                 response.sendRedirect("http://localhost:6643/EIMS/web/clientManage/lookClient.jsp");

                 
              }

              catch (Exception e){

                e.printStackTrace();

             }

            finally{

                st.close();

                con.close();

            }

        %>

    </body>

</html>
