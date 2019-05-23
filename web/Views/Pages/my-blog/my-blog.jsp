<%@page import="Utils.Const"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Blog</title>
        <link href="Views/common/common.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <!--Header-->
            <jsp:include page="${HEADER}"></jsp:include>

                <div class="container">
                    <main class="left">
                    <c:forEach  items="${LIST_ARTICLE}" var="art">
                        <c:choose>
                            <c:when test="${art.detail.type == BLOG_TYPE_NORMAL}">
                                <jsp:include page="<%= (String) request.getAttribute(Const.JSP_COMPONENTS.BLOG_NORMAL.name())%>"></jsp:include>
                            </c:when>
                            <c:when test="${art.detail.type == BLOG_TYPE_QUOTE}">
                                <jsp:include page="<%= (String) request.getAttribute(Const.JSP_COMPONENTS.BLOG_QUOTE.name())%>"></jsp:include>
                            </c:when>
                            <c:when test="${art.detail.type == BLOG_TYPE_PHOTO}">
                                <jsp:include page="<%= (String) request.getAttribute(Const.JSP_COMPONENTS.BLOG_PHOTO.name())%>"></jsp:include>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </main>

                <div class="right">
                    <jsp:include page="${ADVERTISE}">
                        <jsp:param name="advTitle" value="Share this page"></jsp:param>
                    </jsp:include>

                    <jsp:include page="${ADVERTISE}">
                        <jsp:param name="advTitle" value="Create a website"></jsp:param>
                    </jsp:include>
                </div>
            </div>
            <!--Footer-->
            <jsp:include page="${FOOTER}"></jsp:include>
        </div>
    </body>
</html>
