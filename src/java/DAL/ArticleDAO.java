/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.Article;
import Models.ArticleDetail;
import Utils.Const;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoang
 */
public class ArticleDAO extends BaseDAO<Article> {

    public Article getFirstWithDetail(int postId) {
        Article art = null;
        PreparedStatement state = null;
        try {
            String query = "SELECT a." + Const.Title + "\n"
                    + "      ,a." + Const.TimeStamp + "\n"
                    + "      ,a." + Const.PostID + "\n"
                    + "	  ,ad." + Const.Image + "\n"
                    + "	  ,ad." + Const.Text + "\n"
                    + "	  ,ad." + Const.Author + "\n"
                    + "	  ,a." + Const.Type + "\n"
                    + "  FROM " + Const.Table.Articles + " a\n"
                    + "  INNER JOIN " + Const.Table.ArticleDetails + " ad\n"
                    + "  ON a." + Const.PostID + " = ad." + Const.PostID + " AND a." + Const.PostID + " = ? \n";
            query += "ORDER BY a." + Const.TimeStamp;
            state = connection.prepareCall(query);
            state.setInt(1, postId);
            ResultSet rs = state.executeQuery();
            while (rs.next()) {
                art = new Article();
                ArticleDetail detail = new ArticleDetail();

                detail.setText(rs.getString(Const.Text.toString()));
                detail.setImage(rs.getString(Const.Image.toString()));
                detail.setAuthor(rs.getString(Const.Author.toString()));

                art.setPostID(rs.getString(Const.PostID.toString()));
                art.setTimeStamp(rs.getDate(Const.TimeStamp.toString()));
                art.setTitle(rs.getString(Const.Title.toString()));
                art.setType(rs.getInt(Const.Type.toString()));
                art.setDetail(detail);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return art;
    }

    public ArrayList<Article> getAllNoDetail() {
        ArrayList<Article> arts = new ArrayList<Article>();
        PreparedStatement state = null;
        try {
            String query = "SELECT [" + Const.PostID + "]\n"
                    + "      ,[" + Const.Title + "]\n"
                    + "      ,[" + Const.TimeStamp + "]\n"
                    + "      ,[" + Const.Type + "]\n"
                    + "  FROM [" + Const.Table.Articles + "]\n"
                    + "  WHERE [" + Const.Type + "] > " + Const.ARTICLE_TYPE.BLOG_TYPE_ABOUT.getValue() + "\n"
                    + "  ORDER BY [" + Const.TimeStamp + "]";
            state = connection.prepareCall(query);
            ResultSet rs = state.executeQuery();
            while (rs.next()) {
                Article art = new Article();
                art.setPostID(rs.getString(Const.PostID.toString()));
                art.setTimeStamp(rs.getDate(Const.TimeStamp.toString()));
                art.setTitle(rs.getString(Const.Title.toString()));
                art.setType(rs.getInt(Const.Type.toString()));
                arts.add(art);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arts;
    }

    public ArrayList<Article> getAllWithDetail(int type, boolean isquel) {
        ArrayList<Article> arts = new ArrayList<Article>();
        PreparedStatement state = null;
        Map<Integer, Integer> params = new TreeMap<Integer, Integer>();
        try {
            String query = "SELECT a." + Const.Title + "\n"
                    + "      ,a." + Const.TimeStamp + "\n"
                    + "      ,a." + Const.PostID + "\n"
                    + "	  ,ad." + Const.Image + "\n"
                    + "	  ,ad." + Const.Text + "\n"
                    + "	  ,ad." + Const.Author + "\n"
                    + "	  ,a." + Const.Type + "\n"
                    + "  FROM " + Const.Table.Articles + " a\n"
                    + "  INNER JOIN " + Const.Table.ArticleDetails + " ad\n"
                    + "  ON a." + Const.PostID + " = ad." + Const.PostID;
            if (type > -1) {
                if (isquel) {
                    query += " AND a." + Const.Type + " = ?";
                    params.put(1, type);
                } else {
                    query += " AND a." + Const.Type + " != ?";
                    params.put(1, type);
                }
            }
            query += "\n ORDER BY a." + Const.TimeStamp;
            state = connection.prepareCall(query);
            for (Map.Entry<Integer, Integer> entry : params.entrySet()) {
                state.setInt(entry.getKey(), entry.getValue());
            }

            ResultSet rs = state.executeQuery();
            while (rs.next()) {
                Article art = new Article();
                ArticleDetail detail = new ArticleDetail();

                detail.setText(rs.getString(Const.Text.toString()));
                detail.setImage(rs.getString(Const.Image.toString()));
                detail.setAuthor(rs.getString(Const.Author.toString()));

                art.setPostID(rs.getString(Const.PostID.toString()));
                art.setTimeStamp(rs.getDate(Const.TimeStamp.toString()));
                art.setTitle(rs.getString(Const.Title.toString()));
                art.setType(rs.getInt(Const.Type.toString()));
                art.setDetail(detail);

                arts.add(art);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arts;
    }

}
