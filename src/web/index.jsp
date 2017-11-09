<%@ page import="JavaBeans.Articles" %>
<%@ page import="DAO.ArticleDAO" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/26
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

  ArticleDAO showArticles=new ArticleDAO();

  ArrayList list=showArticles.findAll();

  Articles art1=(Articles)list.get(0);

  Articles art2=(Articles)list.get(1);

  Articles art3=(Articles)list.get(2);




%>


<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>叶志鹏的博客</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <div class="container">

    <!-- The justified navigation menu is meant for single line per list item.
         Multiple lines will require custom code not provided by Bootstrap. -->
    <div class="masthead">
      <h3 class="text-muted">叶志鹏的博客</h3>
      <nav>
        <ul class="nav nav-justified">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">java/C/C++</a></li>
          <li><a href="#">Photograph</a></li>
          <li><a href="#">Film</a></li>
          <li><a href="#">Downloads</a></li>
          <li><a href="login.jsp/login.jsp">login</a></li><!--跳转到个人博客管理系统的登陆界面-->
        </ul>
      </nav>
    </div>

    <!-- Jumbotron -->
    <div class="jumbotron">
      <h1>欢迎您来到我的博客！</h1>
      <p class="lead">本站用于技术交流，结交相同兴趣爱好的朋友。</p>
      <p><a class="btn btn-lg btn-success" href="#" role="button">联系博主</a></p>
    </div>

    <!-- Example row of columns -->
    <div class="row">
      <div class="col-lg-4">
        <h2>
          <%=art1.getTitle() %>
        </h2>
        <p>
          <%=art1.getContent() %>
        </p>
        <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-lg-4">
        <h2>
          <%=art2.getTitle() %>
        </h2>
        <p>
          <%=art2.getContent() %>
        </p>
        <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-lg-4">
        <h2>
          <%=art3.getTitle() %>
        </h2>
        <p>
          <%=art3.getContent() %>
        </p>
        <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
      </div>
    </div>

    <!-- Site footer -->
    <footer class="footer">
      <p>&copy; 2017 Company, Inc.</p>
    </footer>

  </div> <!-- /container -->


  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>











































