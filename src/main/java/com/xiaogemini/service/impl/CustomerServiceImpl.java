package com.xiaogemini.service.impl;

import com.xiaogemini.dao.CustomerMapper;
import com.xiaogemini.pojo.Customer;
import com.xiaogemini.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
