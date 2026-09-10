.class public Lorg/apache/poi/ss/format/CellGeneralFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellGeneralFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "General"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 13
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v12, 0x30

    .line 40
    instance-of v7, p2, Ljava/lang/Number;

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 41
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 42
    .local v8, "val":D
    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_1

    .line 43
    invoke-virtual {p1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    .end local v8    # "val":D
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v8    # "val":D
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    .line 49
    .local v0, "exp":D
    const/4 v6, 0x1

    .line 50
    .local v6, "stripZeros":Z
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v7, v0, v10

    if-gtz v7, :cond_2

    const-wide/high16 v10, -0x3fde000000000000L    # -9.0

    cmpg-double v7, v0, v10

    if-gez v7, :cond_3

    .line 51
    :cond_2
    const-string v2, "%1.5E"

    .line 59
    .local v2, "fmt":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 61
    .local v3, "formatter":Ljava/util/Formatter;
    :try_start_0
    sget-object v7, Lorg/apache/poi/ss/format/CellGeneralFormatter;->LOCALE:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-virtual {v3, v7, v2, v10}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 65
    if-eqz v6, :cond_0

    .line 68
    const-string v7, "E"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 69
    const-string v7, "E"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 72
    .local v4, "removeFrom":I
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_6

    .line 73
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "removeFrom":I
    .local v5, "removeFrom":I
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move v4, v5

    .end local v5    # "removeFrom":I
    .restart local v4    # "removeFrom":I
    goto :goto_2

    .line 52
    .end local v2    # "fmt":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/util/Formatter;
    .end local v4    # "removeFrom":I
    :cond_3
    double-to-long v10, v8

    long-to-double v10, v10

    cmpl-double v7, v10, v8

    if-eqz v7, :cond_4

    .line 53
    const-string v2, "%1.9f"

    .restart local v2    # "fmt":Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local v2    # "fmt":Ljava/lang/String;
    :cond_4
    const-string v2, "%1.0f"

    .line 56
    .restart local v2    # "fmt":Ljava/lang/String;
    const/4 v6, 0x0

    goto :goto_1

    .line 63
    .restart local v3    # "formatter":Ljava/util/Formatter;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    throw v7

    .line 71
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "removeFrom":I
    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v10, 0x2e

    if-ne v7, v10, :cond_0

    .line 76
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "removeFrom":I
    .restart local v5    # "removeFrom":I
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    .end local v0    # "exp":D
    .end local v2    # "fmt":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/util/Formatter;
    .end local v5    # "removeFrom":I
    .end local v6    # "stripZeros":Z
    .end local v8    # "val":D
    :cond_7
    instance-of v7, p2, Ljava/lang/Boolean;

    if-eqz v7, :cond_8

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellGeneralFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 89
    return-void
.end method
