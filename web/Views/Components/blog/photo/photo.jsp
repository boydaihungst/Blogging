<div class="blog-photo flex">
    <div class="avatar flex"></div>
    <div class="article-block">
        <div class="header flex">
            <div class="title bold underline text-capital fs-${titleFontSize} ${clearUnderLine}">
                <a href="post?ID=${item.postID}">photo</a>
            </div>
            <div class="time-stamp italic">
                ${item.getTimeStampAsString()}
            </div>
        </div>
        <div class="content">
            <div class="image">
                <img src="${pageContext.servletContext.contextPath}/Views/common/image/${item.detail.image}" alt=""/>
            </div>
        </div>
    </div>
</div>