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
    Icon,
    Author;

    // DB Table
    public enum Table {
        Articles,
        Statistic,
        ArticleDetails,
        Advertise;
    }

    // DB Config
    public enum DBConfig {
        url,
        driver,
        username,
        password,
    }

    public enum ATTRIBUTE {
        LIST_ARTICLE,
        PAGE_READ_COUNTER,
        ACTIVE_NAV
    }

    public enum JSP_PAGE {
        MY_BLOG("Views/Pages/my-blog/my-blog.jsp"),
        ABOUT_ME("Views/Pages/about/about.jsp"),
        OVER_VIEW("Views/Pages/overview/overview.jsp");
        private final String text;

        JSP_PAGE(String s) {
            text = s;
        }

        public String toString() {
            return this.text;
        }
    }

    public enum JSP_COMPONENTS {
        HEADER("/Views/Components/header/header.jsp"),
        FOOTER("/Views/Components/footer/footer.jsp"),
        ADVERTISE("/Views/Components/advertise/advertise.jsp"),
        BLOG_NORMAL("/Views/Components/blog/normal/normal.jsp"),
        BLOG_QUOTE("/Views/Components/blog/quote/quote.jsp"),
        BLOG_PHOTO("/Views/Components/blog/photo/photo.jsp");
        private final String text;

        JSP_COMPONENTS(String s) {
            text = s;
        }

        public String toString() {
            return this.text;
        }
    }
}
