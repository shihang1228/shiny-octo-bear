package com.order;

public class DishVo
{
    private String dishName = null;
    private String dishPrice = null;
    private String introduce = null;
   
    public String getDishName()
    {
        return dishName;
    }
    public void setDishName(String dishName)
    {
        this.dishName = dishName;
    }
    public String getDishPrice()
    {
        return dishPrice;
    }
    public void setDishPrice(String dishPrice)
    {
        this.dishPrice = dishPrice;
    } 
    public String getIntroduce()
    {
        return introduce;
    }
    public void setIntroduce(String introduce)
    {
        this.introduce = introduce;
    }
}