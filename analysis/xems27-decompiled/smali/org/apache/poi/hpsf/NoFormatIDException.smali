.class public Lorg/apache/poi/hpsf/NoFormatIDException;
.super Lorg/apache/poi/hpsf/HPSFRuntimeException;
.source "NoFormatIDException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
