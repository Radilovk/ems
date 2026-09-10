.class Lcom/sun/mail/util/logging/LogManagerProperties$1;
.super Ljava/lang/Object;
.source "LogManagerProperties.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/util/logging/LogManagerProperties;->getClassLoaders()[Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/LogManagerProperties$1;->run()[Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/ClassLoader;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 696
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/ClassLoader;

    .line 698
    .local v1, "loaders":[Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 708
    :goto_1
    return-object v1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "ignore":Ljava/lang/SecurityException;
    aput-object v6, v1, v4

    goto :goto_0

    .line 705
    .end local v0    # "ignore":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 706
    .restart local v0    # "ignore":Ljava/lang/SecurityException;
    aput-object v6, v1, v5

    goto :goto_1
.end method
