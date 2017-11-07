<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/6
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="DAO.ArticleDAO" %>
<%


    String id=request.getParameter("id");

    int id1=Integer.parseInt(id);

    ArticleDAO artDelet=new ArticleDAO();

    artDelet.deletArticle(id1);

    request.getRequestDispatcher("deletArticle.jsp").forward(request, response);


%>
