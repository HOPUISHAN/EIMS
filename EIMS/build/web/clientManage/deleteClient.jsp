﻿
<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>客户删除</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">

        <form action="http://localhost:6643/EIMS/web/clientManage/deleteClientCheck.jsp" method="post">

            <table align="center"width="500" class="bar">

                <tr>

                    <td><a href="http://localhost:6643/EIMS/web/clientManage/lookClient.jsp">客户查询</a></td>

                    <td><a href="http://localhost:6643/EIMS/web/clientManage/addClient.jsp">客户添加</td>

                    <td><a href="http://localhost:6643/EIMS/web/clientManage/updateClient.jsp">客户修改</a></td>

                    <td>客户删除</td>

                </tr>

            </table>

            <br>

            <hr>

            <br>

            <table align="center">

                <tr>

                    <th colspan="2">删除客户信息</th>

                </tr>

                <tr>

                    <td>客户姓名：</td>

                    <td><input type="text" name="clientName" placeholder="输入要删除的客户姓名"/></td>

                </tr>

                <tr align="center">

                     <td colspan="2">

			<br>
                        <input type="submit" name="sure" value="确认"/>

                        &nbsp; &nbsp; &nbsp; &nbsp;

                        <input name="clear"type="reset"value="取消"/>

                     </td>

                </tr>

             </table>

        </form>

    </body>

</html>