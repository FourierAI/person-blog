<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/29
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<jsp:useBean id="ADDARTICLE" class="JavaBeans.Articles" scope="page"/>
<jsp:useBean id="artDAO" class="DAO.ArticleDAO" scope="page"/>      <!--使用JavaBean和DAO-->
<jsp:setProperty name = "ADDARTICLE" property = "title" />
<jsp:setProperty name = "ADDARTICLE" property = "content" />  <!--给Articles实例赋值-->
<%
    request.setCharacterEncoding("UTF-8");
    artDAO.addArticle(ADDARTICLE);                  //使用artDAO的添加方法，将Articles的值传到数据库

    request.getRequestDispatcher("../manage.jsp/login_success.jsp").forward(request, response); //跳转页面


%>