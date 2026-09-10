.class public Lorg/apache/poi/hpsf/MarkUnsupportedException;
.super Lorg/apache/poi/hpsf/HPSFException;
.source "MarkUnsupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hpsf/HPSFException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
