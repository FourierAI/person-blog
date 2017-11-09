<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/28
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人博客管理系统</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

</head>
<body>
<div class="container">
    <div class="masthead">
        <h3 class="text-muted">个人博客管理系统</h3>
        <nav>
            <ul class="nav nav-justified">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">java/C/C++</a></li>
                <li><a href="#">Photograph</a></li>
                <li><a href="#">Film</a></li>
                <li><a href="#">Downloads</a></li>
                <li><a href="../index.jsp">exit</a></li>
            </ul>
        </nav>
    </div>
    <div>
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" class="active"><a href="../manage.jsp/addArticle.jsp">增加</a></li>
            <li role="presentation"><a href="../manage.jsp/deletArticle.jsp">删除</a></li>
            <li role="presentation"><a href="../manage.jsp/alterArticle.jsp">修改</a></li>
        </ul>
    </div>

</div>
</body>
</html>
