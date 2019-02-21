package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");

    String error = request.getParameter("error");
    if (error == null || error == "null") {
        error = "";
    }

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <title>Login File</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body bgcolor=\"#EDA252\">\n");
      out.write("        <style>\n");
      out.write("            .button {\n");
      out.write("                background-color: white;\n");
      out.write("                border: 2px solid #EDA252;\n");
      out.write("                color: #D55A3F;\n");
      out.write("\n");
      out.write("                padding-bottom: -30px;\n");
      out.write("                height: 30px;\n");
      out.write("                width: 173px;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration:none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 16px;\n");
      out.write("                font:bold;\n");
      out.write("                font-family: Comic Sans MS;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .form\n");
      out.write("            {\n");
      out.write("                padding-top: 50px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .table\n");
      out.write("            {\n");
      out.write("                border: outset;\n");
      out.write("                border-radius: 30px;\n");
      out.write("                border-color: #0E6251;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        ");

            if (error.equals("No user or password matched")) {
      out.write("\n");
      out.write("        <script>\n");
      out.write("            window.alert(\"Wrong username or password\");\n");
      out.write("        </script>");

            }

 
            if (error.equals("You need to login first")) {
      out.write("\n");
      out.write("        <script>\n");
      out.write("            window.alert(\"You need to login first\");\n");
      out.write("        </script>");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form  name = \"loginform\" action=\"http://localhost:8080/Online_Restaurant/Validation.jsp\" method=\"post\" class=\"form\">\n");
      out.write("            <table class=\"table\" cellspacing=\"4\" cellpadding=\"2\"  align=\"center\" bgcolor=\"#D55A3F\" >\n");
      out.write("                <tr><td style=\"text-align:right\" ><h1 >Welcome</h1></td></tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name: </td><td><input type=\"text\"  name=\"name\" required ></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password: </td><td><input type=\"password\"  name=\"password\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td><input type=\"submit\" class=\"button\" value=\"Sign In\" height=\"100\" width=\"100\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td style=\"font-size: 15px; text-align: center; color: white\"><b>OR</b></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td><input type=\"submit\" class=\"button\" value=\"Sign Up\" height=\"100\" width=\"100\"></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr><td><br><br><br><br><br><br></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
