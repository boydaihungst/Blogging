/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.Article;
import Models.ArticleDetail;
import Utils.ConfigProvider;
import Utils.Const;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoang
 */
public class ArticleDAO extends BaseDAO<Article> {

    @Override
    public Article get(Article model) {
        Article art = null;
        PreparedStatement state = null;
        try {
            String query = "SELECT [" + Const.PostID.toString() + "]\n"
                    + "      ,[" + Const.Title.toString() + "]\n"
                    + "      ,[" + Const.TimeStamp.toString() + "]\n"
                    + "  FROM [" + Const.Table.Articles.toString() + "] WHERE " + Const.PostID.toString() + " = ?";
            state = connection.prepareCall(query);
            state.setString(1, model.getPostID());
            ResultSet rs = state.executeQuery();
            if (rs.next()) {
                art = new Article();
                art.setPostID(rs.getString(Const.PostID.toString()));
                art.setTimeStamp(rs.getTimestamp(Const.TimeStamp.toString()));
                art.setTitle(rs.getString(Const.Title.toString()));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return art;
    }

    @Override
    public ArrayList<Article> getAll() {
        ArrayList<Article> arts = new ArrayList<Article>();
        PreparedStatement state = null;
        try {
            String query = "SELECT [" + Const.PostID + "]\n"
                    + "      ,[" + Const.Title + "]\n"
                    + "      ,[" + Const.TimeStamp + "]\n"
                    + "  FROM [" + Const.Table.Articles + "]\n"
                    + "  ORDER BY [" + Const.TimeStamp + "]";
            state = connection.prepareCall(query);
            ResultSet rs = state.executeQuery();
            if (rs.next()) {
                Article art = new Article();
                art.setPostID(rs.getString(Const.PostID.toString()));
                art.setTimeStamp(rs.getDate(Const.TimeStamp.toString()));
                art.setTitle(rs.getString(Const.Title.toString()));
                arts.add(art);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arts;
    }

    public ArrayList<Article> getAllWithDetail() {
        ArrayList<Article> arts = new ArrayList<Article>();
        PreparedStatement state = null;
        try {
            String query = "SELECT a." + Const.Title + "\n"
                    + "      ,a." + Const.TimeStamp + "\n"
                    + "      ,a." + Const.PostID + "\n"
                    + "      ,a." + Const.PageID + "\n"
                    + "	  ,ad." + Const.Image + "\n"
                    + "	  ,ad." + Const.Text + "\n"
                    + "	  ,ad." + Const.Type + "\n"
                    + "	  ,ad." + Const.VisitCount + "\n"
                    + "  FROM " + Const.Table.Articles + " a\n"
                    + "  INNER JOIN " + Const.Table.ArticleDetails + " ad\n"
                    + "  ON a." + Const.PostID + " = ad." + Const.PostID + "";
            state = connection.prepareCall(query);
            ResultSet rs = state.executeQuery();
            if (rs.next()) {
                Article art = new Article();
                ArticleDetail detail = new ArticleDetail();

                detail.setText(rs.getString(Const.Text.toString()));
                detail.setImage(rs.getString(Const.Image.toString()));
                detail.setType(rs.getInt(Const.Type.toString()));
                detail.setVisitCount(rs.getInt(Const.VisitCount.toString()));

                art.setPostID(rs.getString(Const.PostID.toString()));
                art.setTimeStamp(rs.getDate(Const.TimeStamp.toString()));
                art.setTitle(rs.getString(Const.Title.toString()));
                art.setDetail(detail);

                arts.add(art);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arts;
    }

}
