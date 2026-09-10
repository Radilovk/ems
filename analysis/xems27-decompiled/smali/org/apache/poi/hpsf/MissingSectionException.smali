.class public Lorg/apache/poi/hpsf/MissingSectionException;
.super Lorg/apache/poi/hpsf/HPSFRuntimeException;
.source "MissingSectionException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
