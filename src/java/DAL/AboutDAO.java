/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.About;
import Models.Article;
import Models.ArticleDetail;
import Utils.Const;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoang
 */
public class AboutDAO extends BaseDAO<About> {

    public About getFirstWithDetail() {
        About about = null;
        PreparedStatement state = null;
        try {
            String query = "SELECT TOP 1 [" + Const.ID + "]\n"
                    + "      ,[" + Const.Title + "]\n"
                    + "      ,[" + Const.Text + "]\n"
                    + "      ,[" + Const.Author + "]\n"
                    + "  FROM [" + Const.Table.About + "]";
            state = connection.prepareCall(query);
            ResultSet rs = state.executeQuery();
            if (rs.next()) {
                about = new About();
                about.setID(rs.getInt(Const.ID.toString()));
                about.setTitle(rs.getString(Const.Title.toString()));
                about.setText(rs.getString(Const.Text.toString()));
                about.setAuthor(rs.getString(Const.Author.toString()));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AboutDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return about;
    }
}
