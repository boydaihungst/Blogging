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
                    <c:if test="${hideLeftTitle} != true">
                        <h2 class="text-capital bold">my blog</h2>
                    </c:if>
                    <c:forEach  items="${LIST_ARTICLE}" var="art">
                        <div class="article-section border-dot">
                            <c:set var="item" value="${art}" scope="request"/>
                            <c:choose>
                                <c:when test="${art.type == BLOG_TYPE_NORMAL}">
                                    <c:import url="${BLOG_NORMAL}">
                                    </c:import>
                                </c:when>
                                <c:when test="${art.type == BLOG_TYPE_QUOTE}">
                                    <c:import url="${BLOG_QUOTE}">
                                    </c:import>
                                </c:when>
                                <c:when test="${art.type == BLOG_TYPE_PHOTO}">
                                    <c:import url="${BLOG_PHOTO}">
                                    </c:import>
                                </c:when>
                            </c:choose>
                        </div>
                    </c:forEach>
                    <div class="over-view text-center text-capital underline">
                        <a href="overview">overview</a>
                    </div>
                </main>

                <div class="right"><jsp:include page="${ADVERTISE}"></jsp:include>
                    </div>
                </div>
                <!--Footer-->
            <jsp:include page="${FOOTER}"></jsp:include>
        </div>
    </body>
</html>
