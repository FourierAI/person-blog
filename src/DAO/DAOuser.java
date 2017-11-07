package DAO;
import JDBCLib.JDBC;
import JavaBeans.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DAOuser {
    public static boolean finduser(users usr) {         //建立finduser函数 返回布尔类型
        Connection con = null;                          //初始化链接con和ps
        PreparedStatement ps = null;
        users SQLuser = null;                           //创建数据库的user对象
        ResultSet rs = null;
        try {
            con = JDBC.getConnection();             //con通过JDBC类拿到链接
            String sql = "select * from user";
            ps = con.prepareStatement(sql);         //取出数据库数据
            rs = ps.executeQuery();
            SQLuser = new users();
            while (rs.next()) {
                SQLuser.setUsername(rs.getString(1));
                SQLuser.setPassword(rs.getString(2));
            }

        } catch (SQLException e) {

        } finally {
            JDBC.free(rs, ps, con);
        }
        if((SQLuser.getUsername().equals(usr.getUsername()))&&(SQLuser.getPassword().equals(usr.getPassword())))
            return true;
        else return false;              //进行比较返回布尔值
    }

}

