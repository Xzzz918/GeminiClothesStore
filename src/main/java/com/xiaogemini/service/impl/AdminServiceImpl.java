package com.xiaogemini.service.impl;

import com.xiaogemini.dao.AdminMapper;
import com.xiaogemini.pojo.Admin;
import com.xiaogemini.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/14 11:41
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<Admin> queryAll() {
        return adminMapper.queryAll();
    }

    @Override
    public Admin selectAdmin(Admin admin) {
        return adminMapper.selectAdmin(admin);
    }

    @Override
    public void updatePwd(String password) {
        adminMapper.updatePwd(password);
    }
}
