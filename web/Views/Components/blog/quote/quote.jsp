<div class="blog-quote flex">
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
            <blockquote class="text-right">
                <p class="italic">${item.detail.text}</p>
                <small>
                    <cite class="text-style-normal author" title="${item.detail.author}">
                          ${item.detail.author}
                    </cite>
                </small>
            </blockquote>
        </div>
    </div>
</div>