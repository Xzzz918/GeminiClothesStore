package com.xiaogemini.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author gemini
 * Created in  2021/5/14 14:38
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Clothes {

    private Integer id;
    private String name;
    private String model;
    private Double specification;
    private String unit;
    private Double price;
    private Integer stocks;
    private Integer total;
    private String description;
    private Double cost;
    private char valid;

}
