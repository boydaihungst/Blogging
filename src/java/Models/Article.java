/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;

/**
 *
 * @author Hoang
 */
public class Article {

    String postID;
    String title;
    Date timeStamp;
    ArticleDetail detail;

    public ArticleDetail getDetail() {
        return detail;
    }

    public void setDetail(ArticleDetail detail) {
        this.detail = detail;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

    public String getTimeStampAsString() {
        return this.timeStamp.getDate()  +"-"+ (1 + this.timeStamp.getMonth())+ "-"+ (1900 + this.timeStamp.getYear());
    }

}
