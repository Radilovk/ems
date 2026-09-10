.class public Lorg/apache/poi/hpsf/HPSFException;
.super Ljava/lang/Exception;
.source "HPSFException.java"


# instance fields
.field private reason:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lorg/apache/poi/hpsf/HPSFException;->reason:Ljava/lang/Throwable;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 69
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/poi/hpsf/HPSFException;->reason:Ljava/lang/Throwable;

    .line 71
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hpsf/HPSFException;->reason:Ljava/lang/Throwable;

    return-object v0
.end method
