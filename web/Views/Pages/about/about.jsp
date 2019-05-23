<%-- 
    Document   : about-me
    Created on : May 17, 2019, 12:14:23 AM
    Author     : Hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Utils.Const"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About me</title>
        <link href="Views/common/common.css" type="text/css" rel="stylesheet"/>
        <link href="Views/Components/footer/footer.css" rel="stylesheet" type="text/css">
        <link  href="Views/Components/header/header.css" rel="stylesheet" type="text/css">
        <link href="Views/Components/adv/adv.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid article-block">
            <!--Header-->
            <jsp:include page="${HEADER}"></jsp:include>
                <!--Main-->
                <div class="container">
                    <main class="left">
                    <c:forEach items="${LIST_ARTICLE}" var="article">
                        <h3 class="art-title">${ article.title }</h3>
                        <div class="art-content">
                            ${ article.detail.text }

                            <div class="signature-section">
                                <p>Kind regards</p>
                                <div class="signature-sign">${ article.detail.author }</div>
                            </div>
                        </div>
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
