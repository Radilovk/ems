.class final Lcom/isaigu/gymapp/utils/OKHttpUtils$1;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpRequest(Lokhttp3/Request;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 14
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v10, :cond_1

    .line 138
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 139
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "content":Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->access$000()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http response : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 143
    :cond_0
    const/4 v5, 0x0

    .line 144
    .local v5, "genericTypeName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 145
    .local v9, "targetType":Ljava/lang/reflect/Type;
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iget-object v10, v10, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    if-nez v10, :cond_2

    .line 146
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 148
    .local v6, "interfacesTypes":[Ljava/lang/reflect/Type;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 149
    .local v4, "genericType":[Ljava/lang/reflect/Type;
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    const/4 v10, 0x0

    aget-object v9, v4, v10

    .line 156
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "genericType":[Ljava/lang/reflect/Type;
    .end local v6    # "interfacesTypes":[Ljava/lang/reflect/Type;
    :goto_0
    const-string v10, "String"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v11, 0x1

    const-string v12, ""

    invoke-virtual {v10, v11, v12, v2}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 174
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "genericTypeName":Ljava/lang/String;
    .end local v9    # "targetType":Ljava/lang/reflect/Type;
    :cond_1
    :goto_1
    return-void

    .line 152
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v5    # "genericTypeName":Ljava/lang/String;
    .restart local v9    # "targetType":Ljava/lang/reflect/Type;
    :cond_2
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iget-object v9, v10, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    .line 153
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iget-object v10, v10, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 159
    :cond_3
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, v9, v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v8

    .line 160
    .local v8, "result":Ljava/lang/Object;, "TT;"
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v11, 0x1

    const-string v12, ""

    invoke-virtual {v10, v11, v12, v8}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "genericTypeName":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/Object;, "TT;"
    .end local v9    # "targetType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v10, :cond_1

    .line 171
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v1

    .line 164
    .local v1, "code":I
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v7, v12}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
