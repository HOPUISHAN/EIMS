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

        <title>处理合同添加数据</title>

    </head>

    <body>

        <%

            String staffName=request.getParameter("staffName");

            String staffSex=request.getParameter("staffSex");

            String staffAge=request.getParameter("staffAge");

            String staffEducation=request.getParameter("staffEducation");

            String staffDepartment=request.getParameter("staffDepartment");

            String staffDate=request.getParameter("staffDate");

            String staffDuty=request.getParameter("staffDuty");

            String staffWage=request.getParameter("staffWage");

            Connection con=null;

            Statement st=null;

           try{

               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

               String url="jdbc:odbc:eims";

               con=DriverManager.getConnection(url,"sa","123456");

               st=con.createStatement();

               String sql="insert into staff(staffName,staffSex,staffAge,staffEducation,staffDepartment,staffDate,staffDuty,staffWage) values ('"+staffName+"','"+staffSex+"','"+staffAge+"','"+staffEducation+"','"+staffDepartment+"','"+staffDate+"','"+staffDuty+"','"+staffWage+"')";

               st.executeUpdate(sql);

               response.sendRedirect("http://localhost:6643/EIMS/web/staffManage/lookStaff.jsp");
    
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
