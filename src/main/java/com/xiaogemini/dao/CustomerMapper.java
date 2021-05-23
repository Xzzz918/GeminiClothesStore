package com.xiaogemini.dao;

import com.xiaogemini.pojo.Customer;

import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/16 10:00
 */
public interface CustomerMapper {
    Customer selectCustomer(Customer customer);
    void addCustomer(Customer customer);
    List<Customer> queryAll();
    void update(Customer customer);
    Customer selectByTel(String telephone);
    void deleteByTel(String telephone);
    List<Customer> queryByTel(String telephone);
}
