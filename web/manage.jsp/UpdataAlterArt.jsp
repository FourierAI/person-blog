<%@ page import="DAO.ArticleDAO" %>
<%@ page import="JavaBeans.Articles" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/7
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    ArticleDAO UpataArt=new ArticleDAO();
    Articles art=UpataArt.findArticle(Integer.parseInt(request.getParameter("id")));
    UpataArt.updateArticle(art);
    request.getRequestDispatcher("alterArticle.jsp").forward(request, response);


%>
