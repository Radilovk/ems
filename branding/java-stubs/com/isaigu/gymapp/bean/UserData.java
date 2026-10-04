package com.isaigu.gymapp.bean;

public class UserData {
    public boolean autoLogin;
    public boolean rememberPassword;
    public String userName;
    public String password;
    public String roleName;
    public long useTime;

    public static UserData getInstance() {
        return null;
    }

    public boolean isLogin() {
        return autoLogin;
    }
}
