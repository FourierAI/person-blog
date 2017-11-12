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
