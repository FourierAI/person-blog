package JDBCLib;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC {
    /**
     * 获取连接
     *
     */
    public static Connection getConnection()
    {
        String driverName = "com.mysql.jdbc.Driver";

        Connection con = null ;
        try {

            Class.forName(driverName);
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blog?useUnicode=true&amp;characterEncoding=utf-8 ",
                    "root", "yinmin5201314,");
            System.out.println("MySql success");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con ;

    }

    /**
     * 关闭连接
     */
    public static void free(ResultSet rs, Statement sta , Connection con)
    {
        try {
            if(null != rs)
            {
                rs.close();
                rs = null ;
            }

            if(null != sta)
            {
                sta.close();
                sta = null ;
            }

            if(null != con)
            {
                con.close();
                con = null ;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}