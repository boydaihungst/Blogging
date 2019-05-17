/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAL.ArticleDAO;
import Models.Article;
import Utils.Const;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hoang
 */
public class HomeController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArticleDAO artDao = new ArticleDAO();
        ArrayList<Article> arts = artDao.getAllWithDetail(-1);
        
        request.setAttribute(Const.ATTRIBUTE.LIST_ARTICLE.name(), arts);
        request.setAttribute(Const.JSP_COMPONENTS.BLOG_NORMAL.name(), Const.JSP_COMPONENTS.BLOG_NORMAL.toString());
        request.setAttribute(Const.JSP_COMPONENTS.BLOG_QUOTE.name(), Const.JSP_COMPONENTS.BLOG_QUOTE.toString());
        request.setAttribute(Const.JSP_COMPONENTS.BLOG_PHOTO.name(), Const.JSP_COMPONENTS.BLOG_PHOTO.toString());
        
        request.setAttribute(Const.ARTICLE_TYPE.BLOG_TYPE_NORMAL.name(), Const.ARTICLE_TYPE.BLOG_TYPE_NORMAL.getValue());
        request.setAttribute(Const.ARTICLE_TYPE.BLOG_TYPE_QUOTE.name(), Const.ARTICLE_TYPE.BLOG_TYPE_QUOTE.getValue());
        request.setAttribute(Const.ARTICLE_TYPE.BLOG_TYPE_PHOTO.name(), Const.ARTICLE_TYPE.BLOG_TYPE_PHOTO.getValue());
        request.setAttribute("isHome", "bold");
        RequestDispatcher rd = request.getRequestDispatcher(Const.JSP_PAGE.MY_BLOG.toString());
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    public String getServletInfo() {
        return "Home servlet";
    }// </editor-fold>

}
