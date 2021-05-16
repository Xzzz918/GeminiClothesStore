package com.xiaogemini.service;

import com.xiaogemini.pojo.Customer;
import org.apache.ibatis.annotations.Param;

/**
 * @author gemini
 * Created in  2021/5/16 10:05
 */
public interface CustomerService {
    Customer selectCustomer(Customer customer);
    void addCustomer(Customer customer);
}
