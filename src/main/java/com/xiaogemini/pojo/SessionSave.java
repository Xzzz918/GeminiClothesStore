package com.xiaogemini.pojo;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

/**
 * @author gemini
 * Created in  2021/5/15 15:09
 */
@Data
public class SessionSave {

    private static Map<String, String> sessionMap = new HashMap<String, String>(5);

    public static Map<String, String> getSessionMap() {
        return sessionMap;
    }

    public static void setSessionMap(Map<String, String> sessionMap) {
        SessionSave.sessionMap = sessionMap;
    }

}
