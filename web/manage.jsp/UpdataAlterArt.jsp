<%@ page import="DAO.ArticleDAO" %>
<%@ page import="JavaBeans.Articles" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/7
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="UpdataArt" class="JavaBeans.Articles" scope="page"/>
    <jsp:useBean id="UpataArtDao" class="DAO.ArticleDAO" scope="page"/>
    <jsp:setProperty name="UpdataArt" property="i"/>
    <jsp:setProperty name="UpdataArt" property="title"/>
    <jsp:setProperty name="UpdataArt" property="content"/>
<%
    UpataArtDao.updateArticle(UpdataArt,UpdataArt.getI());
    System.out.println("UpdtaAlterArt修改成功");
    request.getRequestDispatcher("alterArticle.jsp").forward(request, response);

%>