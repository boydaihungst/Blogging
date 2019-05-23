<div class="blog-normal flex">
    <div class="avatar flex"></div>
    <div class="article-block">
        <div class="header flex">
            <div class="title bold underline">
                ${item.title}
            </div>
            <div class="time-stamp italic">
                ${item.getTimeStampAsString()}
            </div>
        </div>
        <div class="content">
            <img src="${pageContext.servletContext.contextPath}/Views/common/image/${item.detail.image}" alt=""/>
            <p>${item.detail.text}</p>
        </div>
    </div>
</div>