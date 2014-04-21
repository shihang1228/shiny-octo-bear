package com.order;

import java.sql.Connection;
import java.sql.PreparedStatement; 
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.ArrayList;
import java.sql.SQLException;


public class UserDao
{
    public void insertUser(UserVo user)
    {
        DbManage dbManage = null;
        PreparedStatement pstmt = null;
        Connection conn = null;
        
        String userName = user.getUserName();
        String userPassword = user.getUserPassword();
        String repeatPassword = user.getRepeatPassword();
        String userTrueName = user.getUserTrueName();
        String userAddress = user.getUserAddress();
        String userSex = user.getUserSex();
        String userPhoneNumber = user.getUserPhoneNumber();
        String userMail = user.getUserMail();
        System.out.println(userName);
        System.out.println(userPassword);
        try
        {
            dbManage = DbManage.newInstance();
            String sql = "INSERT INTO member_info"
                        +"(user_name,password,repeat_password,true_name,address,sex,phone_number,mail)"
                        + "VALUES(?,?,?,?,?,?,?,?)";
            pstmt = dbManage.conn.prepareStatement(sql);
            pstmt.setString(1,userName);
            pstmt.setString(2,userPassword);
            pstmt.setString(3,repeatPassword);
            pstmt.setString(4,userTrueName);
            pstmt.setString(5,userAddress);
            pstmt.setString(6,userSex);
            pstmt.setString(7,userPhoneNumber);
            pstmt.setString(8,userMail);
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
    
    public ArrayList<UserVo> memberList()
    {
        DbManage dbManage = null;
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        UserVo user = null;
        ArrayList<UserVo> list = new ArrayList<UserVo>();
        try
        {
            dbManage = dbManage.newInstance();
            stmt = dbManage.conn.createStatement();
            
            String sql = "SELECT * FROM member_info";
            
            rs = stmt.executeQuery(sql);
            while(rs.next())
            {
                user = new UserVo();
                
                user.setUserId(rs.getLong("user_id"));
                user.setUserName(rs.getString("user_name"));
                user.setUserPassword(rs.getString("password"));
                user.setRepeatPassword(rs.getString("repeat_password"));
                user.setUserTrueName(rs.getString("true_name"));
                user.setUserAddress(rs.getString("address"));
                user.setUserSex(rs.getString("sex"));
                user.setUserPhoneNumber(rs.getString("phone_number"));
                user.setUserMail(rs.getString("mail"));
                
                list.add(user);              
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
        return list;
    }
/*   
   public void debug(String str)
    {
        String className = LoginServlet.class.getName();
        System.out.println("[DEBUG] " + new Date() + " " + className + " " + str);
    }
    */
}