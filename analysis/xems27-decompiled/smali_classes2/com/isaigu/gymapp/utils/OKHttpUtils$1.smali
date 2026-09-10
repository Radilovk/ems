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

    .line 176
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v0, :cond_0

    .line 178
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
    .locals 10
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v2, :cond_4

    .line 138
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "content":Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 143
    :cond_0
    const/4 v4, 0x0

    .line 144
    .local v4, "genericTypeName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 145
    .local v5, "targetType":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iget-object v6, v6, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    if-nez v6, :cond_1

    .line 146
    iget-object v6, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 147
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 148
    .local v7, "interfacesTypes":[Ljava/lang/reflect/Type;
    aget-object v8, v7, v1

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 149
    .local v8, "genericType":[Ljava/lang/reflect/Type;
    aget-object v9, v8, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 150
    aget-object v9, v8, v1

    move-object v5, v9

    .line 151
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "interfacesTypes":[Ljava/lang/reflect/Type;
    .end local v8    # "genericType":[Ljava/lang/reflect/Type;
    goto :goto_0

    .line 152
    :cond_1
    iget-object v6, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iget-object v6, v6, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    move-object v5, v6

    .line 153
    iget-object v6, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iget-object v6, v6, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 156
    :goto_0
    const-string v6, "String"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-eqz v6, :cond_2

    .line 157
    :try_start_1
    iget-object v6, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-virtual {v6, v3, v7, v2}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    :cond_2
    new-array v6, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v6

    .line 160
    .local v6, "result":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-virtual {v8, v3, v7, v6}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 162
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "genericTypeName":Ljava/lang/String;
    .end local v5    # "targetType":Ljava/lang/reflect/Type;
    .end local v6    # "result":Ljava/lang/Object;, "TT;"
    :goto_1
    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    .line 164
    .local v2, "code":I
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-virtual {v5, v3, v4, v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    .end local v2    # "code":I
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_3

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    iget-object v3, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v3, :cond_5

    .line 171
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void
.end method
