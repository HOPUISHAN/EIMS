
<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>添加员工信息</title>

	<style type="text/css">
		table{ margin-top: 40px;}
		.bar td{ font-weight: bold;}
		.bar a{ color: blue; text-decoration: none; font-weight: lighter;}
		.bar a:hover{ color: #000066; font-weight: bold;}
	</style>
    </head>

    <body style="background: #9999ff;">

        <form action="http://localhost:6643/EIMS/web/staffManage/addStaffCheck.jsp" method="post">

            <table align="center"width="500" class="bar">

                <tr>

                    <td><a href="http://localhost:6643/EIMS/web/staffManage/lookStaff.jsp">员工查询</a></td>

                    <td>员工添加</td>

                </tr>

            </table>

            <br>

            <hr>

            <br>

            <table align="center"width="300" >

                 <tr>

                    <th colspan="8" align="center">添加员工信息</th>

                 </tr>

                 <tr>

                     <td>姓名：</td>

                     <td><input type="text" name="staffName"/></td>
                 </tr>

                 <tr>

                     <td>性别：</td>

                     <td><input type="text" name="staffSex"/></td>

                 </tr>

                 <tr>

                     <td>年龄：</td>

                     <td><input type="text" name="staffAge"/></td>

                 </tr>

                 <tr>

                     <td>学历：</td>

                     <td><input type="text" name="staffEducation"/></td>

                </tr>

                <tr>

                     <td>部门：</td>
                     <td><input type="text" name="staffDepartment"/></td>

                </tr>

                <tr>

                     <td>入职时间：</td>

                     <td><input type="text" name="staffDate"/></td>

                </tr>

                <tr>

                     <td>职务：</td>

                     <td><input type="text" name="staffDuty"/></td>

                </tr>

                <tr>

                     <td>工资：</td>

                     <td><input type="text" name="staffWage"/></td>

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
