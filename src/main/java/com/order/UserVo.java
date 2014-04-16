package com.order;

public class UserVo
{
    private Long userId;
    private String userName;
    private String userPassword;
    private String repeatPassword;
    private String userTrueName;
    private String userAddress;
    private String userSex;
    private String userPhoneNumber;
    private String userMail;
    
    public Long getUserId()
    {
        return userId;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }
    public String getUserName()
    {
        return userName;
    }
    public void setUserName(String userName)
    {
        this.userName = userName;
    }
    public String getUserPassword()
    {
        return userPassword;        
    }
    public void setUserPassword(String userPassword)
    {
        this.userPassword = userPassword;
    }
    public String getRepeatPassword()
    {
        return repeatPassword;
    }
    public void setRepeatPassword(String repeatPassword)
    {
        this.repeatPassword = repeatPassword;
    }
    public String getUserTrueName()
    {
        return userTrueName;
    }
    public void setUserTrueName(String userTrueName)
    {
        this.userTrueName = userTrueName;
    }
    public String getUserAddress()
    {
        return userAddress;
    }
    public void setUserAddress(String userAddress)
    {
        this.userAddress = userAddress;
    }
    public String getUserSex()
    {
        return userSex;
    }
    public void setUserSex(String userSex)
    {
        this.userSex = userSex;
    }
    public String getUserPhoneNumber()
    {
        return userPhoneNumber;
    }
    public void setUserPhoneNumber(String userPhoneNumber)
    {
        this.userPhoneNumber = userPhoneNumber;
    }
    public String getUserMail()
    {
        return userMail;
    }
    public void setUserMail(String userMail)
    {
        this.userMail = userMail;
    }
}