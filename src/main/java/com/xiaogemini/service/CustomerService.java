package com.xiaogemini.service;

import com.xiaogemini.pojo.Customer;

import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/16 10:05
 */
public interface CustomerService {
    Customer selectCustomer(Customer customer);
    void addCustomer(Customer customer);
    List<Customer> queryAll();
    void update(Customer customer);
    Customer selectByTel(String telephone);
}
