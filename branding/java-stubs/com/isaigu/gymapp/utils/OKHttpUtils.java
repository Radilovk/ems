package com.isaigu.gymapp.utils;

public class OKHttpUtils {
    public abstract static class HttpResponseCallback<T> {
        public abstract void httpResponse(boolean httpSuccess, String message, T result);
    }
}
