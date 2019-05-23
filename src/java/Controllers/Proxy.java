/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAL.StatisticDAO;
import Utils.Const;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author Hoang
 */
public class Proxy implements Filter {

    private FilterConfig filterConfig = null;
    int viewCounter = 0;

    public Proxy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        Throwable problem = null;
        try {
            this.viewCounter++;
            StatisticDAO statisticDAO = new StatisticDAO();
            statisticDAO.updateVisitCount(this.viewCounter);
            request.setAttribute(Const.JSP_COMPONENTS.HEADER.name(), Const.JSP_COMPONENTS.HEADER.toString());
            request.setAttribute(Const.JSP_COMPONENTS.FOOTER.name(), Const.JSP_COMPONENTS.FOOTER.toString());
            request.setAttribute(Const.JSP_COMPONENTS.ADVERTISE.name(), Const.JSP_COMPONENTS.ADVERTISE.toString());
            String viewCounterAsStr = String.valueOf(this.viewCounter);
            while (viewCounterAsStr.length() < 6) {
                viewCounterAsStr = "0" + viewCounterAsStr;
            }
            List visitedPageList = Arrays.asList(viewCounterAsStr.split(""));
            ArrayList<String> pageCounter
                    = new ArrayList<>(visitedPageList);
            request.setAttribute(Const.ATTRIBUTE.PAGE_READ_COUNTER.name(), pageCounter);
            chain.doFilter(request, response);
        } catch (Throwable t) {
            problem = t;
            t.printStackTrace();
        }

        if (problem != null) {
            if (problem instanceof ServletException) {
                throw (ServletException) problem;
            }
            if (problem instanceof IOException) {
                throw (IOException) problem;
            }
        }
    }

    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    public void destroy() {
    }

    public void init(FilterConfig filterConfig) {
        StatisticDAO statsDAO = new StatisticDAO();
        this.viewCounter = statsDAO.get(null).getVisitCount();
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
        }
    }

    /**
     * Return a String representation of this object.
     */
    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("Proxy()");
        }
        StringBuffer sb = new StringBuffer("Proxy(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());
    }

    public static String getStackTrace(Throwable t) {
        String stackTrace = null;
        try {
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            t.printStackTrace(pw);
            pw.close();
            sw.close();
            stackTrace = sw.getBuffer().toString();
        } catch (Exception ex) {
        }
        return stackTrace;
    }

    public void log(String msg) {
        filterConfig.getServletContext().log(msg);
    }

}
