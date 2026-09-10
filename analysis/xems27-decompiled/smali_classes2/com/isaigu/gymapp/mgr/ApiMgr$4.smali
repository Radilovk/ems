.class final Lcom/isaigu/gymapp/mgr/ApiMgr$4;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "ApiMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/reflect/Type;

    .line 451
    iput-object p2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$4;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$4;->val$header:Ljava/util/Map;

    iput-object p5, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$4;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 3
    .param p1, "httpSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
            "TT;>;)V"
        }
    .end annotation

    .line 453
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<TT;>;"
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 454
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 455
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 458
    new-instance v1, Lcom/isaigu/gymapp/mgr/ApiMgr$4$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$4$1;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$4;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 472
    .end local v0    # "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$4;->val$callback:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 477
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 451
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/mgr/ApiMgr$4;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
