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

        <title>数据处理页面</title>

    </head>

    <body>

        <%

            String userName =new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");

            String password =new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");

            String url="jdbc:odbc:eims";
            //String user ="sa";//这里替换成你自已的数据库用户名
            //String password = "123456";//这里替换成你自已的数据库用户密码
	    Connection con = null;

            Statement st = null;

            ResultSet rs = null;

            if(userName.equals("")) {

                response.sendRedirect("login.jsp");

            }

            try{

                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                 con = DriverManager.getConnection( url,"sa", "123456" );
                 st=con.createStatement();

                 String query="select * from Aduser where userName='" + userName + "'";

                 rs=st.executeQuery(query);

                 if(rs.next()){
 
                   String query2 ="select * from Aduser where password='" + password + "'";

                    rs=st.executeQuery(query2);

                    if(rs.next()){

                        response.sendRedirect("main/main.jsp");

                    }else{

                        response.sendRedirect("login.jsp");

                    }

                 }

              }catch(Exception e){

                  e.printStackTrace();

              }finally{

                  rs.close();

                  st.close();

                  con.close();

             }

        %>

    </body>

</html>
