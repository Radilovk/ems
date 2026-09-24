package com.isaigu.gymapp.bean.vo;

public class ResponseData<T> {
    public ResponseData() {}
    public int getCode() { return 0; }
    public T getData() { return null; }
    public void setCode(int code) {}
    public void setData(T data) {}
    public void setMessage(String message) {}
}
