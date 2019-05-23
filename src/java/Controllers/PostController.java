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
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PostController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int postId = Integer.valueOf(request.getParameter(Const.PARAMS.ID.toString()));
        ArticleDAO artDao = new ArticleDAO();
        ArrayList<Article> arts = new ArrayList<Article>();
        Article firstWithDetail = artDao.getFirstWithDetail(postId);
        arts.add(firstWithDetail);
        request.setAttribute(Const.ATTRIBUTE.LIST_ARTICLE.name(), arts);
        request.setAttribute(Const.JSP_COMPONENTS.BLOG_NORMAL.name(), Const.JSP_COMPONENTS.BLOG_NORMAL.toString());
        request.setAttribute(Const.JSP_COMPONENTS.BLOG_QUOTE.name(), Const.JSP_COMPONENTS.BLOG_QUOTE.toString());
        request.setAttribute(Const.JSP_COMPONENTS.BLOG_PHOTO.name(), Const.JSP_COMPONENTS.BLOG_PHOTO.toString());

        request.setAttribute(Const.ARTICLE_TYPE.BLOG_TYPE_NORMAL.name(), Const.ARTICLE_TYPE.BLOG_TYPE_NORMAL.getValue());
        request.setAttribute(Const.ARTICLE_TYPE.BLOG_TYPE_QUOTE.name(), Const.ARTICLE_TYPE.BLOG_TYPE_QUOTE.getValue());
        request.setAttribute(Const.ARTICLE_TYPE.BLOG_TYPE_PHOTO.name(), Const.ARTICLE_TYPE.BLOG_TYPE_PHOTO.getValue());
        request.setAttribute("isHome", "bold");
        request.setAttribute("hideLeftTitle", true);
        request.setAttribute("titleFontSize", "24px");
        request.setAttribute("clearUnderLine", "clear-underline");
        RequestDispatcher rd = request.getRequestDispatcher(Const.JSP_PAGE.MY_BLOG.toString());
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
