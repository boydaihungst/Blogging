/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.Article;
import Models.Statistic;
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
public class StatisticDAO extends BaseDAO<Statistic> {

    public Statistic get(Statistic model) {
        Statistic stats = null;
        PreparedStatement state = null;
        try {
            String query = "SELECT [" + Const.VisitCount.toString() + "]\n"
                    + "  FROM [" + Const.Table.Statistic.toString() + "]";
            state = connection.prepareCall(query);
            ResultSet rs = state.executeQuery();
            if (rs.next()) {
                stats = new Statistic();
                stats.setVisitCount(rs.getInt(Const.VisitCount.toString()));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stats;
    }

    public int updateVisitCount(int visitCount) {
        PreparedStatement state = null;
        try {
            String query = "UPDATE [" + Const.Table.Statistic + "]\n"
                    + "   SET [" + Const.VisitCount + "] = ?";
            state = connection.prepareCall(query);
            state.setInt(1, visitCount);
            return state.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public ArrayList<Statistic> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
