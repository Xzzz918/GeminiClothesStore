package com.xiaogemini.service.impl;

import com.xiaogemini.dao.CustomerMapper;
import com.xiaogemini.pojo.Customer;
import com.xiaogemini.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/16 10:06
 */
@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public Customer selectCustomer(Customer customer) {
        return customerMapper.selectCustomer(customer);
    }

    @Override
    public void addCustomer(Customer customer) {
        customerMapper.addCustomer(customer);
    }

    @Override
    public List<Customer> queryAll() {
        return customerMapper.queryAll();
    }
    @Override
    public void update(Customer customer) {
        customerMapper.update(customer);
    }

    @Override
    public Customer selectByTel(String telephone) {
        return customerMapper.selectByTel(telephone);
    }

    @Override
    public void deleteByTel(String telephone) {
        customerMapper.deleteByTel(telephone);
    }

    @Override
    public List<Customer> queryByTel(String telephone) {
        return customerMapper.queryByTel(telephone);
    }
}
