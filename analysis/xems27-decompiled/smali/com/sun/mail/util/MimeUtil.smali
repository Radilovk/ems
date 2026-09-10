.class public Lcom/sun/mail/util/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# static fields
.field private static final cleanContentType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "meth":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v1, "mail.mime.contenttypehandler"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "cth":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 63
    invoke-static {}, Lcom/sun/mail/util/MimeUtil;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .local v2, "cl":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    .line 65
    .local v3, "clsHandler":Ljava/lang/Class;
    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 67
    :try_start_1
    invoke-static {v1, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 68
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    .line 70
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 71
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 72
    :cond_1
    const-string v5, "cleanContentType"

    .line 73
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljavax/mail/internet/MimePart;

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    .line 72
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    .line 75
    .end local v1    # "cth":Ljava/lang/String;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "clsHandler":Ljava/lang/Class;
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v1

    .line 82
    sput-object v0, Lcom/sun/mail/util/MimeUtil;->cleanContentType:Ljava/lang/reflect/Method;

    .line 83
    throw v1

    .line 79
    :catch_1
    move-exception v1

    goto :goto_2

    .line 77
    :catch_2
    move-exception v1

    goto :goto_2

    .line 75
    :catch_3
    move-exception v1

    .line 82
    :cond_2
    :goto_2
    sput-object v0, Lcom/sun/mail/util/MimeUtil;->cleanContentType:Ljava/lang/reflect/Method;

    .line 84
    .end local v0    # "meth":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mp"    # Ljavax/mail/internet/MimePart;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/sun/mail/util/MimeUtil;->cleanContentType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 102
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1

    .line 107
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object p1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 117
    new-instance v0, Lcom/sun/mail/util/MimeUtil$1;

    invoke-direct {v0}, Lcom/sun/mail/util/MimeUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 116
    return-object v0
.end method
