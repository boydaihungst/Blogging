/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author Hoang
 */
public enum Const {
    PostID,
    Title,
    TimeStamp,
    PostDetailID,
    Text,
    Type,
    Image,
    PageID,
    VisitCount,
    Path,
    AdID,
    ID,
    Content,
    Icon,
    Author;

    // DB Table
    public enum Table {
        Articles,
        Statistic,
        ArticleDetails,
        About,
        Advertise;
    }

    public enum ATTRIBUTE {
        LIST_ARTICLE,
        PAGE_READ_COUNTER,
        LIST_ADVERTISE,
        ABOUT_ME_ITEM
    }
    public enum PARAMS {
        ID
    }
    // DB Config
    public enum DBConfig {
        url,
        driver,
        username,
        password,
    }

    public enum ARTICLE_TYPE {
        BLOG_TYPE_NORMAL(1),
        BLOG_TYPE_QUOTE(2),
        BLOG_TYPE_PHOTO(3);
        private final int text;

        ARTICLE_TYPE(int s) {
            text = s;
        }

        public int getValue() {
            return this.text;
        }

    }

    public enum JSP_PAGE {
        MY_BLOG("Views/Pages/my-blog/my-blog.jsp"),
        ABOUT_ME("Views/Pages/about/about.jsp"),
        OVER_VIEW("Views/Pages/blog-overview/blog-overview.jsp"),
        ERROR("Views/Pages/error/error.jsp");
        private final String text;

        JSP_PAGE(String s) {
            text = s;
        }

        @Override
        public String toString() {
            return this.text;
        }
    }

    public enum JSP_COMPONENTS {
        HEADER("/Views/Components/header/header.jsp"),
        FOOTER("/Views/Components/footer/footer.jsp"),
        ADVERTISE("/Views/Components/adv/adv.jsp"),
        BLOG_NORMAL("/Views/Components/blog/normal/normal.jsp"),
        BLOG_QUOTE("/Views/Components/blog/quote/quote.jsp"),
        BLOG_PHOTO("/Views/Components/blog/photo/photo.jsp");
        private final String text;

        JSP_COMPONENTS(String s) {
            text = s;
        }

        @Override
        public String toString() {
            return this.text;
        }
    }
}
