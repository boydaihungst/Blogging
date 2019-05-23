<%@page import="Utils.Const"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Blog</title>
        <link  href="Views/Components/header/header.css" rel="stylesheet" type="text/css">
        <link href="Views/Components/footer/footer.css" rel="stylesheet" type="text/css">
        <link href="Views/common/common.css" type="text/css" rel="stylesheet"/>
        <link href="Views/Components/blog/normal/normal.css" type="text/css" rel="stylesheet">
        <link href="Views/Components/blog/photo/photo.css" type="text/css" rel="stylesheet">
        <link href="Views/Components/blog/quote/quote.css" type="text/css" rel="stylesheet">
        <link href="Views/Components/adv/adv.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid">
            <!--Header-->
            <jsp:include page="${HEADER}"></jsp:include>
                <div class="container">
                    <main class="left">
                    <c:forEach  items="${LIST_ARTICLE}" var="art">
                        <c:set var="item" value="${art}" scope="request"/>
                        <c:choose>
                            <c:when test="${art.detail.type == BLOG_TYPE_NORMAL}">
                                <c:import url="${BLOG_NORMAL}">
                                </c:import>
                            </c:when>
                            <c:when test="${art.detail.type == BLOG_TYPE_QUOTE}">
                                <c:import url="${BLOG_QUOTE}">
                                </c:import>
                            </c:when>
                            <c:when test="${art.detail.type == BLOG_TYPE_PHOTO}">
                                <c:import url="${BLOG_PHOTO}">
                                </c:import>
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
