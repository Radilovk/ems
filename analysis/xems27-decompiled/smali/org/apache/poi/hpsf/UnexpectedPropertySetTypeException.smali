.class public Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
.super Lorg/apache/poi/hpsf/HPSFException;
.source "UnexpectedPropertySetTypeException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hpsf/HPSFException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
