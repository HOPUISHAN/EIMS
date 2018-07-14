
<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>修改客户信息</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">

        <form action="http://localhost:6643/EIMS/web/clientManage/updateClientCheck.jsp" method="post">

            <table align="center"width="500" class="bar">

                <tr>

                    <td><a href="http://localhost:6643/EIMS/web/clientManage/lookClient.jsp">客户查询</a></td>

                    <td><a href="http://localhost:6643/EIMS/web/clientManage/addClient.jsp">客户添加</td>

                    <td>客户修改</td>

                    <td><a href="http://localhost:6643/EIMS/web/clientManage/deleteClient.jsp">客户删除</a></td>

                </tr>

            </table>

            <br>

            <hr>

            <br>

            <table align="center"width="300" >

                <tr>
                    <th colspan="2" align="center">修改客户信息</th>

                </tr>

                <tr>

                    <td>姓名：</td>

                    <td><input type="text" name="clientName"/></td>

                </tr>

                <tr>

                    <td>电话：</td>

                    <td><input type="text" name="clientTelephone"/></td>

                </tr>

                <tr>

                    <td>地址：</td>

                    <td><input type="text" name="clientAddress"/></td>

                </tr>

                <tr>

                    <td>邮箱：</td>

                    <td><input type="text" name="clientEmail"/></td>

                </tr>

                <tr align="center">

                    <td colspan="2">

			<br>
                        <input name="sure"type="submit"value="确认">

                        &nbsp; &nbsp; &nbsp; &nbsp;

                        <input name="clear"type="reset"value="取消">

                    </td>

                </tr>

            </table>

        </form>

    </body>

</html>
