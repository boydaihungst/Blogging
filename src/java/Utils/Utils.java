/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import Models.Article;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

/**
 *
 * @author Hoang
 */
public class Utils {

    public Utils() {
    }

    public static LinkedHashMap<String, ArrayList<Article>> mapDataArticleByMonth(ArrayList<Article> rawData) {
        LinkedHashMap<String, ArrayList<Article>> map = new LinkedHashMap<String, ArrayList<Article>>();
        if (rawData.size() <= 0) {
            return map;
        }
        for (Article art : rawData) {

            String key = formatDateAsFullString(art.getTimeStamp(), "MMMMM") + " " + (art.getTimeStamp().getYear() + 1900);
            ArrayList<Article> values = null;
            if (!map.containsKey(key)) {
                values = new ArrayList<Article>();
            } else {
                values = map.get(key);
            }
            values.add(art);
            map.put(key, values);
        }
        return map;
    }

    public static String formatDateAsFullString(Date dateTime, String datePattern) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(datePattern);
        return dateFormat.format(dateTime);
    }
}
