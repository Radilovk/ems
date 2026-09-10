.class final Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;
.super Ljava/lang/Object;
.source "MailHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/util/logging/MailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetAndSetContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NOT_MODIFIED:Ljava/lang/Object;


# instance fields
.field private final source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4001
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->$assertionsDisabled:Z

    .line 4006
    const-class v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    return-void

    .line 4001
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 4017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4018
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    .line 4019
    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 4028
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 4029
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4031
    .local v0, "ccl":Ljava/lang/ClassLoader;
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 4032
    const/4 v2, 0x0

    .line 4044
    .local v2, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-eq v0, v2, :cond_5

    .line 4045
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 4048
    .end local v0    # "ccl":Ljava/lang/ClassLoader;
    :goto_1
    return-object v0

    .line 4033
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .restart local v0    # "ccl":Ljava/lang/ClassLoader;
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/ClassLoader;

    if-eqz v3, :cond_1

    .line 4034
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ClassLoader;

    .line 4035
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 4036
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4037
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Thread;

    if-eqz v3, :cond_3

    .line 4038
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4039
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 4040
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 4041
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 4048
    :cond_5
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    goto :goto_1
.end method
