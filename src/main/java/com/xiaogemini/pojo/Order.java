package com.xiaogemini.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/14 14:39
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {

    private String id;
    private Integer cid;
    private String type;
    // 注解貌似无效
    // 通过注解转换后，可以直接在前端展示
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    // @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date creationDate;
    private char valid;

    private Customer customer;
    private List<OrderDetail> orderDetails;

}
