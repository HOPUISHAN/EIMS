
<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>添加产品信息</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">

        <form action="http://localhost:6643/EIMS/web/productManage/addProductCheck.jsp" method="post">

            <table align="center"width="500" class="bar">

                <tr>

                    <td><a href="http://localhost:6643/EIMS/web/productManage/lookProduct.jsp">产品查询</a></td>

                    <td>产品添加</td>

                </tr>

            </table>

            <br>

            <hr>

            <br>

            <table align="center"width="300" >

                 <tr>

                     <th colspan="2" align="center">添加产品信息</th>

                 </tr>

                 <tr>

                     <td>产品名称：</td>

                     <td><input type="text" name="productName"/></td>

                 </tr>

                 <tr>
                     <td>产品型号：</td>

                     <td><input type="text" name="productModel"/></td>

                 </tr>

                 <tr>

                     <td>产品数量：</td>

                     <td><input type="text" name="productNumber"/></td>

                 </tr>

                 <tr>

                     <td>产品价格：</td>

                     <td><input type="text" name="productPrice"/></td>

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
