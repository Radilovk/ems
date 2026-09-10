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
        "Ljava/security/PrivilegedAction<",
        "[",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/LogManagerProperties$1;->run()[Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/ClassLoader;
    .locals 4

    .line 696
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/ClassLoader;

    .line 698
    .local v0, "loaders":[Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    goto :goto_0

    :catch_0
    move-exception v3

    .line 700
    .local v3, "ignore":Ljava/lang/SecurityException;
    aput-object v1, v0, v2

    .line 704
    .end local v3    # "ignore":Ljava/lang/SecurityException;
    :goto_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    goto :goto_1

    :catch_1
    move-exception v3

    .line 706
    .restart local v3    # "ignore":Ljava/lang/SecurityException;
    aput-object v1, v0, v2

    .line 708
    .end local v3    # "ignore":Ljava/lang/SecurityException;
    :goto_1
    return-object v0
.end method
