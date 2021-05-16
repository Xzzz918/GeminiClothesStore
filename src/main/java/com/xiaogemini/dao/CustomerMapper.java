package com.xiaogemini.dao;

import com.xiaogemini.pojo.Customer;

/**
 * @author gemini
 * Created in  2021/5/16 10:00
 */
public interface CustomerMapper {
    Customer selectCustomer(Customer customer);
    void addCustomer(Customer customer);
}
