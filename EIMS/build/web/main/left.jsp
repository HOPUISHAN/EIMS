
<%@page contentType="text/html;charset=utf-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>

	<style type="text/css">
		a{ text-decoration: none; color: #006699;} 
		/*a:link{ color: #006699;}*/
		a:hover{ color: #000066; font-weight: bold;}
		/*a:visited{ color: #006699;}*/
	</style>
    </head>

    <body style="background: #CCCFFF;">

        <table>

            <tr>

                <td>

                    <image src="../image/t1.jpg" width="110px" height="150px">

                </td>

            <tr/>

            <tr>

                <td>

                    <a href="http://localhost:6643/EIMS/web/clientManage/lookClient.jsp" target="main">&nbsp;&nbsp;&nbsp;&nbsp;客户管理</a>

                </td>

            <tr/>

            <tr>

                <td>

                    <a href="http://localhost:6643/EIMS/web/contactManage/lookContact.jsp" target="main">&nbsp;&nbsp;&nbsp;&nbsp;合同管理</a>

                </td>

           <tr/>
           <tr>

                <td>

                    <a href="http://localhost:6643/EIMS/web/CSManage/lookCS.jsp" target="main">&nbsp;&nbsp;&nbsp;&nbsp;售后管理</a>

                </td>
 
            <tr/>

            <tr>

                <td>

                    <a href="http://localhost:6643/EIMS/web/productManage/lookProduct.jsp" target="main">&nbsp;&nbsp;&nbsp;&nbsp;产品管理</a>

                </td>
 
            <tr/>

            <tr>

                <td>

                    <a href="http://localhost:6643/EIMS/web/staffManage/lookStaff.jsp" target="main">&nbsp;&nbsp;&nbsp;&nbsp;员工管理</a>

                </td>

            <tr/>

            <tr>

                <td>

                    <a href="http://localhost:6643/EIMS/web/login.jsp" target="_parent">&nbsp;&nbsp;&nbsp;&nbsp;退出系统</a>

                </td>

            </tr>

        </table>

    </body>

</html>
