/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAL.AboutDAO;
import DAL.ArticleDAO;
import Models.About;
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

/**
 *
 * @author Hoang
 */
public class AboutController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AboutDAO artDao = new AboutDAO();
        About arts = artDao.getFirstWithDetail();
        request.setAttribute(Const.ATTRIBUTE.ABOUT_ME_ITEM.toString(), arts);
        request.setAttribute("isAbout", "bold");
        RequestDispatcher rd = request.getRequestDispatcher(Const.JSP_PAGE.ABOUT_ME.toString());
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
