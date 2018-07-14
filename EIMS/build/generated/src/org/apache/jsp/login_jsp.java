package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>企业信息管理系统--登录页面</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body background=\"image/login.jpg\">\n");
      out.write("        <br><br><br><br><br><br>\n");
      out.write("        <br><br><br><br><br><br>\n");
      out.write("        <center>\n");
      out.write("        <form action=\"loginCheck.jsp\" method=\"post\">\n");
      out.write("            <table border=\"0\">\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                      <table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#dddddd\" width=\"360\" height=\"200\">\n");
      out.write("                           <tr  height=\"130\">\n");
      out.write("                              <td align=\"center\">\n");
      out.write("                                  输入用户姓名<input type=\"text\" name=\"userName\" size=\"20\" ><br>\n");
      out.write("                                  输入用户密码<input type=\"password\" name=\"password\" size=\"22\" ><br>\n");
      out.write("                                  <input type=\"submit\" value=\"登 录\" size=\"12\"/>&nbsp;&nbsp;&nbsp;\n");
      out.write("                                  <input type=\"reset\" value=\"清  除\" size=\"12\"/>\n");
      out.write("                               </td>\n");
      out.write("                             </tr>\n");
      out.write("                             <tr height=\"30\">\n");
      out.write("                                 <td bgcolor=\"#95BDFF\">&nbsp;&nbsp;</td>\n");
      out.write("                             </tr>\n");
      out.write("                         </table>\n");
      out.write("                      </td>\n");
      out.write("                  </tr>\n");
      out.write("              </table>\n");
      out.write("          </form>\n");
      out.write("         </center>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
