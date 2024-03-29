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
        <link href="Views/Pages/about/about.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid article-block">
            <!--Header-->
            <jsp:include page="${HEADER}"></jsp:include>
                <!--Main-->
                <div class="container">
                    <main class="left">
                        <h3 class="art-title">${ ABOUT_ME_ITEM.title }</h3>
                    <div class="art-content">
                        ${ ABOUT_ME_ITEM.text }

                        <div class="signature-section">
                            <p>Kind regards</p>
                            <div class="signature-sign">${ ABOUT_ME_ITEM.author }</div>
                        </div>
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
