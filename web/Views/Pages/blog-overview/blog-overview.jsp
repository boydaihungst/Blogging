<%@page import="Utils.Const"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Blog</title>
        <link href="Views/Components/header/header.css" rel="stylesheet" type="text/css">
        <link href="Views/Components/footer/footer.css" rel="stylesheet" type="text/css">
        <link href="Views/common/common.css" type="text/css" rel="stylesheet"/>
        <link href="Views/Components/adv/adv.css" rel="stylesheet" type="text/css"/>
        <link href="Views/Pages/blog-overview/blog-overview.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid">
            <!--Header-->
            <jsp:include page="${HEADER}"></jsp:include>
                <div class="container">
                    <main class="left blog-overview">
                        <h2 class="text-capital bold">Overview - my blog</h2>
                        <div class="list-blog">
                        <c:forEach items="${LIST_ARTICLE}" var="mapArt">
                            <div class="blog-month-section">
                                <div class="header-section border-top border-grey flex">
                                    <div class="title uppercase">
                                        ${mapArt.key}
                                    </div>
                                    <div>Date</div>
                                </div>
                                <c:forEach items="${mapArt.value}" var="art">
                                    <div class="article-section border-top border-grey flex">
                                        <span class="title underline">
                                            <a href="post?ID=${art.postID}">${art.title}</a>
                                        </span>
                                        <span style="flex-grow: 2"></span>
                                        <span class="time-stamp text-style-normal text-right">${art.getTimeStampAsString()}</span>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:forEach>
                    </div>
                </main>
                <div class="right">
                    <jsp:include page="${ADVERTISE}"></jsp:include>
                </div>
            </div>
            <!--Footer-->
            <jsp:include page="${FOOTER}"></jsp:include>
        </div>
    </body>
</html>
