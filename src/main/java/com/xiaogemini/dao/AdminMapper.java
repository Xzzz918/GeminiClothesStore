package com.xiaogemini.dao;

import com.xiaogemini.pojo.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/14 11:36
 */
public interface AdminMapper {
    List<Admin> queryAll();
    Admin selectAdmin(Admin admin);
    void updatePwd(@Param("password") String password);
}
