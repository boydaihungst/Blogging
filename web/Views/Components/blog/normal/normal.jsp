<div class="blog-normal">
    <div class="avatar"></div>
    <div class="article-block">
        <div class="header">
            <div class="title bold underline">
                ${item.title}
            </div>
            <div class="time-stamp">
                ${item.timeStamp}
            </div>
        </div>
        <div class="content">
            <img src="${pageContext.servletContext.contextPath}/Views/common/image/${item.detail.image}" alt=""/>
            <p>${item.detail.text}</p>
        </div>
    </div>
</div>