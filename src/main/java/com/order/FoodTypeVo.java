package com.order;

public class FoodTypeVo
{
    private Long foodId;
    private String foodTypeName;
    private String foodDescription;
    
    public Long getFoodId()
    {
        return foodId;
    }
    public void setFoodId(Long foodId)
    {
        this.foodId = foodId;
    }
    public String getFoodTypeName()
    {
        return foodTypeName;
    }
    public void setFoodTypeName(String foodTypeName)
    {
        this.foodTypeName = foodTypeName;
    }
    public String getFoodDescription()
    {
        return foodDescription;
    }
    public void setFoodDescription(String foodDescription)
    {
        this.foodDescription = foodDescription;
    }
}