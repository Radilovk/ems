.class public Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;
.super Lorg/apache/poi/ss/usermodel/DateUtil;
.source "HSSFDateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;-><init>()V

    return-void
.end method

.method protected static absoluteDay(Ljava/util/Calendar;Z)I
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "use1904windowing"    # Z

    .line 36
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(Ljava/util/Calendar;Z)I

    move-result v0

    return v0
.end method
