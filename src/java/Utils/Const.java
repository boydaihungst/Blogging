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
    Icon;

    // DB Table
    public enum Table {
        Articles,
        Page,
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
}
