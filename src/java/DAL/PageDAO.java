/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.Page;
import java.util.ArrayList;

/**
 *
 * @author Hoang
 */
public class PageDAO extends BaseDAO<Page> {

    @Override
    public Page get(Page model) {
        Page page = null;
        String query = "SELECT [PageID]\n"
                + "      ,[path]\n"
                + "      ,[VisitCount]\n"
                + "  FROM [Page] WHERE ";
        return page;
    }

    @Override
    public ArrayList<Page> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
