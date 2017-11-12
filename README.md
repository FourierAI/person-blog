# person-blog
### 个人博客系统
### 基本功能
- 主页显示博主写的文章和动态。
- 通过登陆，可以进入博客管理系统。
- 博客管理系统有文章的增删改查功能。
- 访客可以通过留言板来实现与博主信息交流。
### 软件架构
<pre> |--src包
          |-- chapc包（过滤器包）
              |--SetCharacterEncoding类（字符编码过滤类，解决编码问题）
          |-- DAO包（JavaBeans的方法包）
              |--ArticleDAO类（ArticleDAO的具体方法[增删改查]）
              |--DAOuser类（DAOuser的具体方法[判断用户账号密码]）
          |-- JavaBeans包
              |--Articles类（Articles的标准规范）
              |--users类（users的标注规范）
          |-- JDBCLib包
              |--JDBC类（链接数据库）
<pre> |--web包
	  	  |-- login.jsp(登陆管理系统的jsp包)
	  	  	  |--dologin.jsp(登陆响应页面)
	  	  	  |--login.jsp(登陆页面)
	  	  	  |--login_fail.jsp(登陆失败返回页面)
	  	  |-- manage.jsp(管理博客的jsp包)
	  	      |--addArticle.jsp
	  	      |--alterArticle.jsp
	  	      |--deletArticle.jsp
	  	      |--doAddArticle.jsp
	  	      |--doAlterArt.jsp
	  	      |--doDeletArt.jsp
	  	      |--login_success.jsp
	  	      |--UpdataAlterArt.jsp
	  	  |-- WEB-INF(包)
	  	  	  |--lib包(jar包)
	  	  	  |--web.xml
	  	  |-- index.jsp(jsp访客主页)		
