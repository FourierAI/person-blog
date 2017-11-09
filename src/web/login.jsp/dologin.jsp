<%@ page import="DAO.DAOuser" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/27
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Myuser" class="JavaBeans.users" scope="page"/><!--使用用户类实体取名Myuser-->
    <jsp:useBean id="userDAO" class="DAO.DAOuser" scope="page"/><!--使用DAO用户实体-->
<jsp:setProperty name="Myuser" property="*"/><!--将login层的表单值传入用户实体类-->

<%
    //将表单的数据和数据库数据进行比较 然后跳转  如果成功跳转到管理系统，失败返回主页。
    if(DAOuser.finduser(Myuser)){

        request.getRequestDispatcher("../manage.jsp/login_success.jsp").forward(request, response);

    }
    else {

        request.getRequestDispatcher("login_fail.jsp").forward(request, response);

    }

%>
