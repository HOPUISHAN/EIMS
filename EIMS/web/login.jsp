<%@page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>



<html>

    <head>

        <title>企业信息管理系统--登录页面</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>

    <body background="image/login.jpg">

        <br><br><br><br><br><br>

        <br><br><br><br><br><br>

        <center>

        <form action="loginCheck.jsp" method="post">
            <table border="0">

                <tr>

                   <td>

                      <table style="border:1px solid #333; background:#ddd; width:360px; height:250px;border-radius:10px;">

                           <tr  height="130">

                              <td align="center">

                                  账号：<input type="text" name="userName" size="20" placeholder="请输入用户名" style="padding:1px 3px;"><br><br>

                                  密码：<input type="password" name="password" size="20" placeholder="请输入密码" style="padding:1px 3px;"><br>
					<br>

                                  <input type="submit" value="登 录" size="12" style="border-radius:5px; width:50px; height:28px; background: #6699cc; outline:none;"/>&nbsp;&nbsp;&nbsp;

                                  <input type="reset" value="清 除" size="12" style="border-radius:5px; width:50px; height:28px; background: #6699cc; outline:none;"/>

                               </td>

                             </tr>

                             <tr height="30">

                                 <td style="background:#95BDFF;">&nbsp;&nbsp;</td>

                             </tr>

                         </table>
                      </td>
                  </tr>

              </table>

          </form>
	  <br><br><br><br><br><br><br><br>

         </center>

    </body>

</html>