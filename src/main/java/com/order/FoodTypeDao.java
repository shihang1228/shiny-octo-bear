package com.order;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}