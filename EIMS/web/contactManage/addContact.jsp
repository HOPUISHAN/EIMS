<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>添加合同信息</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">

        <form action="http://localhost:6643/EIMS/web/contactManage/addContactCheck.jsp" method="post">

            <table align="center"width="500" class="bar">

                <tr>

                    <td><a href="http://localhost:6643/EIMS/web/contactManage/lookContact.jsp">合同查询</a></td>

                    <td>合同添加</td>

                </tr>

            </table>

            <br>

            <hr>

            

            <table align="center"width="300" >

                 <tr>

                    <th colspan="6" align="center">添加合同信息</th>

                 </tr>

                 <tr>

                     <td>客户姓名：</td>

                     <td><input type="text" name="clientName"/></td>

                 </tr>

                 <tr>

                     <td>合同名称：</td>

                     <td><input type="text" name="contactName"/></td>

                 </tr>

                 <tr>

                     <td>合同内容：</td>

                     <td><input type="text" name="contactContents"/></td>

                 </tr>

                 <tr>

                     <td>合同生效日期：</td>

                     <td><input type="text" name="contactStart"/></td>

                </tr>

                <tr>

                     <td>合同有效期：</td>

                     <td><input type="text" name="contactEnd"/></td>

                </tr>

                <tr>

                     <td>业务员：</td>

                     <td><input type="text" name="StaffName"/></td>

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
