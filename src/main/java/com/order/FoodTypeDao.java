package com.order;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FoodTypeDao
{
    public void insertFoodType(FoodTypeVo foodType)
    {
        DbManage dbManage = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try
        {
            dbManage = dbManage.newInstance();
            String sql = "INSERT INTO food_type(food_type_name,description) VALUES(?,?)";
            pstmt = dbManage.conn.prepareStatement(sql);
            pstmt.setString(1,foodType.getFoodTypeName());
            pstmt.setString(2,foodType.getFoodDescription());
            pstmt.execute();
            System.out.println(sql);
        }
        catch(SQLException ex)
        {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
            System.out.println("error");
        }
        finally
        {
            dbManage.close();
        }
    }
    public ArrayList<FoodTypeVo> foodTypeList()
    {
        DbManage dbManage = null;
        ResultSet rs =null;
        Statement stmt = null;
        FoodTypeVo foodType = null;
        ArrayList<FoodTypeVo> foodList = new ArrayList<FoodTypeVo>();
        try
        {
            dbManage = dbManage.newInstance();
            stmt = dbManage.conn.createStatement();
            String sql = "SELECT * FROM food_type";
            rs = stmt.executeQuery(sql);
            System.out.println(sql);
            while(rs.next())
            {
                foodType = new FoodTypeVo();
                foodType.setFoodId(rs.getLong("id"));
                foodType.setFoodTypeName(rs.getString("food_type_name"));
                foodType.setFoodDescription(rs.getString("description"));
                
                foodList.add(foodType);
            }
        }
        catch(SQLException ex)
        {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
            System.out.println("error");
        }
        finally
        {
            dbManage.close();
        }
        return foodList;
        
        
    }
    public FoodTypeVo getFoodTypeById(Long pid)
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        DbManage dbManage = null;
        ResultSet rs = null;
        FoodTypeVo foodType = null;
        try
        {
            dbManage = dbManage.newInstance();
            foodType = new FoodTypeVo();
            String sql = "SELECT * FROM food_type WHERE id =?";
            pstmt = dbManage.conn.prepareStatement(sql);
            pstmt.setLong(1,pid);
            rs = pstmt.executeQuery();
            System.out.println(sql);
            rs.next();
            foodType.setFoodId(rs.getLong("id"));
            foodType.setFoodTypeName(rs.getString("food_type_name"));
            foodType.setFoodDescription(rs.getString("description"));
            
        }
        catch(SQLException ex)
        {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
            System.out.println("error");
        }
        finally
        {
            dbManage.close();
        }
        return foodType;
    }
    
}