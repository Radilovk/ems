.class final Lorg/apache/poi/ss/format/CellNumberFormatter$1;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 72
    if-nez p2, :cond_0

    .line 73
    return-void

    .line 74
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 75
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 76
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    .line 77
    invoke-static {}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$000()Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$100()Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 80
    .end local v0    # "num":Ljava/lang/Number;
    :goto_0
    goto :goto_1

    .line 81
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/format/CellTextFormatter;->SIMPLE_TEXT:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 83
    :goto_1
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellNumberFormatter$1;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 87
    return-void
.end method
