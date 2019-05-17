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
        ArrayList<Article> arts = artDao.getAll();
        
        request.setAttribute(Const.ATTRIBUTE.LIST_ARTICLE.toString(), arts);
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