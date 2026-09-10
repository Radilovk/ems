.class public Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;
.super Ljava/lang/Object;
.source "JSONPResponseBodyAdvice.java"

# interfaces
.implements Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/springframework/core/annotation/Order;
    value = -0x80000000
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ControllerAdvice;
.end annotation


# instance fields
.field public final logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->logger:Lorg/apache/commons/logging/Log;

    .line 45
    return-void
.end method


# virtual methods
.method public beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Ljava/lang/Object;
    .locals 13
    .param p1, "body"    # Ljava/lang/Object;
    .param p2, "returnType"    # Lorg/springframework/core/MethodParameter;
    .param p3, "selectedContentType"    # Lorg/springframework/http/MediaType;
    .param p5, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p6, "response"    # Lorg/springframework/http/server/ServerHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/springframework/core/MethodParameter;",
            "Lorg/springframework/http/MediaType;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/springframework/http/converter/HttpMessageConverter<",
            "*>;>;",
            "Lorg/springframework/http/server/ServerHttpRequest;",
            "Lorg/springframework/http/server/ServerHttpResponse;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    .local p4, "selectedConverterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    move-object v6, p0

    const-class v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    move-object v7, p2

    invoke-virtual {p2, v0}, Lorg/springframework/core/MethodParameter;->getMethodAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    .line 61
    .local v0, "responseJsonp":Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p2}, Lorg/springframework/core/MethodParameter;->getContainingClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    move-object v8, v0

    goto :goto_0

    .line 61
    :cond_0
    move-object v8, v0

    .line 65
    .end local v0    # "responseJsonp":Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;
    .local v8, "responseJsonp":Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;
    :goto_0
    move-object/from16 v0, p5

    check-cast v0, Lorg/springframework/http/server/ServletServerHttpRequest;

    invoke-virtual {v0}, Lorg/springframework/http/server/ServletServerHttpRequest;->getServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v9

    .line 66
    .local v9, "servletRequest":Ljavax/servlet/http/HttpServletRequest;
    invoke-interface {v8}, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;->callback()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "callbackMethodName":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    iget-object v1, v6, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, v6, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->logger:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid jsonp parameter value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 72
    :cond_1
    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_1

    .line 68
    :cond_2
    move-object v10, v0

    .line 75
    .end local v0    # "callbackMethodName":Ljava/lang/String;
    .local v10, "callbackMethodName":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPObject;

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/JSONPObject;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 76
    .local v11, "jsonpObject":Lcom/alibaba/fastjson/JSONPObject;
    move-object v12, p1

    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson/JSONPObject;->addParameter(Ljava/lang/Object;)V

    .line 77
    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p3

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/JSONPObject;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    .line 78
    return-object v11
.end method

.method public beforeBodyWriteInternal(Lcom/alibaba/fastjson/JSONPObject;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .locals 0
    .param p1, "jsonpObject"    # Lcom/alibaba/fastjson/JSONPObject;
    .param p2, "contentType"    # Lorg/springframework/http/MediaType;
    .param p3, "returnType"    # Lorg/springframework/core/MethodParameter;
    .param p4, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p5, "response"    # Lorg/springframework/http/server/ServerHttpResponse;

    .line 86
    return-void
.end method

.method protected getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;
    .locals 1
    .param p1, "contentType"    # Lorg/springframework/http/MediaType;
    .param p2, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p3, "response"    # Lorg/springframework/http/server/ServerHttpResponse;

    .line 98
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;

    return-object v0
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "returnType"    # Lorg/springframework/core/MethodParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/springframework/http/converter/HttpMessageConverter<",
            "*>;>;)Z"
        }
    .end annotation

    .line 51
    .local p2, "converterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    const-class v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Lorg/springframework/core/MethodParameter;->getContainingClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    invoke-virtual {p1, v0}, Lorg/springframework/core/MethodParameter;->hasMethodAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
.end method
