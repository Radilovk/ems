.class public Lorg/apache/poi/hssf/record/RecordFormatException;
.super Lorg/apache/poi/util/RecordFormatException;
.source "RecordFormatException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thr"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
