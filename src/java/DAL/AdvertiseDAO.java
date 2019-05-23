/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.Advertise;
import Models.Article;
import Models.ArticleDetail;
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
public class AdvertiseDAO extends BaseDAO<Advertise> {

    public ArrayList<Advertise> getAll() {
        ArrayList<Advertise> advs = new ArrayList<>();
        PreparedStatement state = null;
        try {
            String query = "SELECT [" + Const.Title + "]\n"
                    + "      ,[" + Const.Content + "]\n"
                    + "      ,[" + Const.AdID + "]\n"
                    + "  FROM [" + Const.Table.Advertise + "]";
            state = connection.prepareCall(query);
            ResultSet rs = state.executeQuery();
            while (rs.next()) {
                Advertise adv = new Advertise();
                adv.setAdID(rs.getInt(Const.AdID.toString()));
                adv.setContent(rs.getString(Const.Content.toString()));
                adv.setTitle(rs.getString(Const.Title.toString()));
                advs.add(adv);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return advs;
    }
}
