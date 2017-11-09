package DAO;

import JDBCLib.JDBC;
import JavaBeans.Articles;

import java.sql.*;
import java.util.ArrayList;
import java.util.*;

public class ArticleDAO
{


    public void addArticle(Articles art)
    {
        System.out.println("addArticle success");
        Connection con = null;

        PreparedStatement ps = null;

        try {

            con = JDBC.getConnection();
            String sql = "insert into articles(title,article) values(?,?)";
            System.out.println("sql注入成功");
            ps = con.prepareStatement(sql);
//            System.out.println(art.getI());
//            System.out.println(art.getTitle());
//            System.out.println(art.getContent());

            ps.setString(1, art.getTitle());//BUG
            ps.setString(2,art.getContent());
            ps.executeUpdate();
            System.out.println("数据存入成功");

        } catch (SQLException e) {
            e.getMessage();
        } finally {
            JDBC.free(null, ps, con);
        }
    }
    public ArrayList<Articles> findAll()                    //查看文章列表，并返回ArrayList集合
    {
        Connection con = null ;
        PreparedStatement ps = null ;
        ResultSet rs = null;
        ArrayList<Articles> LIST = null ;
        System.out.println("OK");
        try
        {
            con = JDBC.getConnection();
            String sql = "select id,title,article from articles";
            ps = con.prepareStatement(sql);

            LIST = new ArrayList<Articles>();
            rs = ps.executeQuery() ;
            System.out.println("OK");

            while(rs.next())
            {
                Articles art = new Articles();

                art.setI(rs.getInt("id"));
                //System.out.println("OK");
                art.setTitle(rs.getString("title"));
                //System.out.println(art.getTitle());
                art.setContent(rs.getString("article"));
                //System.out.println(art.getContent());
                LIST.add(art);
            }

        }
        catch(SQLException e)
        {
            e.getMessage();
        }
        finally
        {
            JDBC.free(rs, ps, con);
        }

        System.out.println(LIST.size());

        return LIST;
    }
    public Articles findArticle(int id)                     //通过主键id查看文章，并返回文章对象
    {
        Connection con = null ;
        PreparedStatement ps = null ;
        Articles art = null ;
        ResultSet rs = null;
        try
        {
            con = JDBC.getConnection();
            String sql = "select id,title,article from Articles where id =?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            rs = ps.executeQuery() ;
            art = new Articles();
            while(rs.next())
            {
                art.setI(rs.getInt("id"));
                art.setTitle(rs.getString("title"));
                art.setContent(rs.getString("article"));
            }


        }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
        finally
        {
            JDBC.free(rs, ps, con);
        }

        return art;
    }
    public Articles showPartArts(int id)                    //在网页上显示内容
    {

        Articles art=findArticle(id);                       //调用findArticle方法
        String title=art.getTitle();
        String partContent=null;
        if(art.getContent().length()>50)
        { partContent=art.getContent().substring(50);}
        else      { partContent=art.getContent();}                                                      //截取字符串

        art.setTitle(title);
        art.setContent(partContent);
        return art;                                            //返回Articles对象
    }
    public void deletArticle(int id)                        //通过id删除记录
    {

        Connection con = null ;
        PreparedStatement ps = null ;
        try
        {
            con = JDBC.getConnection();
            String sql = "delete from articles where id=?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            ps.executeUpdate() ;

        }
        catch(SQLException e)
        {
            e.getMessage();
        }
        finally
        {
            JDBC.free(null, ps, con);
        }



    }
    public void updateArticle(Articles art,int id1)         //传入一个JavaBean给函数，修改数据库数据
    {
        Connection con = null ;
        PreparedStatement ps = null ;

        try
        {

            con = JDBC.getConnection();
            String sql = "update articles set title=?,article=? where id=?";
            ps = con.prepareStatement(sql);
            System.out.println(id1+"-------------------------");
            ps.setString(1, art.getTitle());
            ps.setString(2, art.getContent());
            ps.setInt(3,id1);
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            e.getMessage();
        }
        finally
        {
            JDBC.free(null, ps, con);
        }


    }


}
