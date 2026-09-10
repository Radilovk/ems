.class public Lcom/isaigu/gymapp/ApacheMail;
.super Ljava/lang/Object;
.source "ApacheMail.java"


# static fields
.field private static fromAddress:Ljava/lang/String;

.field private static fromName:Ljava/lang/String;

.field private static hostName:Ljava/lang/String;

.field private static password:Ljava/lang/String;

.field private static toAddress:Ljava/lang/String;

.field private static toName:Ljava/lang/String;

.field private static userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "smtp.mxhichina.com"

    sput-object v0, Lcom/isaigu/gymapp/ApacheMail;->hostName:Ljava/lang/String;

    .line 14
    const-string v0, "fbsend@isaigu.com"

    sput-object v0, Lcom/isaigu/gymapp/ApacheMail;->userName:Ljava/lang/String;

    .line 15
    const-string v1, "Abc1234567"

    sput-object v1, Lcom/isaigu/gymapp/ApacheMail;->password:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/isaigu/gymapp/ApacheMail;->fromAddress:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/isaigu/gymapp/ApacheMail;->fromName:Ljava/lang/String;

    .line 21
    const-string v0, "fbrecv@isaigu.com"

    sput-object v0, Lcom/isaigu/gymapp/ApacheMail;->toAddress:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/isaigu/gymapp/ApacheMail;->toName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendHtmlEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "subject"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "utf-8"

    :try_start_0
    const-string v1, "org.apache.commons.mail.HtmlEmail"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "email":Ljava/lang/Object;
    const-string v3, "setHostName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcom/isaigu/gymapp/ApacheMail;->hostName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v3, "setAuthentication"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->userName:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->password:Ljava/lang/String;

    aput-object v8, v6, v4

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "setCharset"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "setFrom"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/Object;

    sget-object v9, Lcom/isaigu/gymapp/ApacheMail;->fromAddress:Ljava/lang/String;

    aput-object v9, v8, v7

    sget-object v9, Lcom/isaigu/gymapp/ApacheMail;->fromName:Ljava/lang/String;

    aput-object v9, v8, v4

    aput-object v0, v8, v5

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "addTo"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->toAddress:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->toName:Ljava/lang/String;

    aput-object v8, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "setSubject"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "setHtmlMsg"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "send"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "email":Ljava/lang/Object;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static sendSimpleEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "subject"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 27
    const-string v0, "utf-8"

    :try_start_0
    const-string v1, "org.apache.commons.mail.SimpleEmail"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 28
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 29
    .local v2, "email":Ljava/lang/Object;
    const-string v3, "setHostName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcom/isaigu/gymapp/ApacheMail;->hostName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v3, "setAuthentication"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->userName:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->password:Ljava/lang/String;

    aput-object v8, v6, v4

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v3, "setCharset"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v3, "setFrom"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/Object;

    sget-object v9, Lcom/isaigu/gymapp/ApacheMail;->fromAddress:Ljava/lang/String;

    aput-object v9, v8, v7

    sget-object v9, Lcom/isaigu/gymapp/ApacheMail;->fromName:Ljava/lang/String;

    aput-object v9, v8, v4

    aput-object v0, v8, v5

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "addTo"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->toAddress:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->toName:Ljava/lang/String;

    aput-object v8, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "setSubject"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "setMsg"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "send"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    nop

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "email":Ljava/lang/Object;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public sendMultiPartEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    .local p3, "attachmentArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "utf-8"

    :try_start_0
    const-string v1, "org.apache.commons.mail.MultiPartEmail"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, "email":Ljava/lang/Object;
    const-string v3, "setHostName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcom/isaigu/gymapp/ApacheMail;->hostName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "setAuthentication"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->userName:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->password:Ljava/lang/String;

    aput-object v8, v6, v4

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "setCharset"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "setFrom"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/Object;

    sget-object v9, Lcom/isaigu/gymapp/ApacheMail;->fromAddress:Ljava/lang/String;

    aput-object v9, v8, v7

    sget-object v9, Lcom/isaigu/gymapp/ApacheMail;->fromName:Ljava/lang/String;

    aput-object v9, v8, v4

    aput-object v0, v8, v5

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "addTo"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->toAddress:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v8, Lcom/isaigu/gymapp/ApacheMail;->toName:Ljava/lang/String;

    aput-object v8, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "setSubject"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "setMsg"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 76
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "attachmentPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    const-string v5, "org.apache.commons.mail.EmailAttachment"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 79
    .local v5, "attachment":Ljava/lang/Object;
    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "setURL"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/net/URL;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "setPath"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "setDisposition"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "attachment"

    aput-object v9, v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "setDescription"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "\u63cf\u8ff0\u4fe1\u606f"

    aput-object v9, v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "setName"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "\u9644\u4ef6"

    invoke-static {v9}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "attach"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, v7

    invoke-virtual {v6, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v3    # "attachmentPath":Ljava/lang/String;
    .end local v5    # "attachment":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_2
    const-string v0, "send"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "email":Ljava/lang/Object;
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
