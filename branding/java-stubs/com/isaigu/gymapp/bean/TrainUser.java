package com.isaigu.gymapp.bean;

import java.util.Date;

public class TrainUser implements java.io.Serializable {
    public long id;
    public String name;
    public String inputId;
    public String nickName;
    public String email;
    public String phone;
    public String remark;
    public String iconUrl;
    public Date createTime;
    public Date birtyday;
    public Gender gender;
    public int height;
    public float weight;
}
