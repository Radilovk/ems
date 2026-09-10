.class public Lorg/apache/poi/ss/format/CellGeneralFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellGeneralFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const-string v0, "General"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 12
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 41
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 42
    .local v0, "val":D
    const-wide/16 v2, 0x0

    const/16 v4, 0x30

    cmpl-double v5, v0, v2

    if-nez v5, :cond_0

    .line 43
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    return-void

    .line 48
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    .line 49
    .local v2, "exp":D
    const/4 v5, 0x1

    .line 50
    .local v5, "stripZeros":Z
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v8, v2, v6

    if-gtz v8, :cond_3

    const-wide/high16 v6, -0x3fde000000000000L    # -9.0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    double-to-long v6, v0

    long-to-double v6, v6

    cmpl-double v8, v6, v0

    if-eqz v8, :cond_2

    .line 53
    const-string v6, "%1.9f"

    .local v6, "fmt":Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local v6    # "fmt":Ljava/lang/String;
    :cond_2
    const-string v6, "%1.0f"

    .line 56
    .restart local v6    # "fmt":Ljava/lang/String;
    const/4 v5, 0x0

    goto :goto_1

    .line 51
    .end local v6    # "fmt":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v6, "%1.5E"

    .line 59
    .restart local v6    # "fmt":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/util/Formatter;

    invoke-direct {v7, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 61
    .local v7, "formatter":Ljava/util/Formatter;
    :try_start_0
    sget-object v8, Lorg/apache/poi/ss/format/CellGeneralFormatter;->LOCALE:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-virtual {v7, v8, v6, v10}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    .line 64
    nop

    .line 65
    if-eqz v5, :cond_6

    .line 68
    const-string v8, "E"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 69
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v9

    .local v8, "removeFrom":I
    goto :goto_2

    .line 71
    .end local v8    # "removeFrom":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v9

    .line 72
    .restart local v8    # "removeFrom":I
    :goto_2
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_5

    .line 73
    add-int/lit8 v9, v8, -0x1

    .end local v8    # "removeFrom":I
    .local v9, "removeFrom":I
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move v8, v9

    goto :goto_2

    .line 75
    .end local v9    # "removeFrom":I
    .restart local v8    # "removeFrom":I
    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v9, 0x2e

    if-ne v4, v9, :cond_6

    .line 76
    add-int/lit8 v4, v8, -0x1

    .end local v8    # "removeFrom":I
    .local v4, "removeFrom":I
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 79
    .end local v0    # "val":D
    .end local v2    # "exp":D
    .end local v4    # "removeFrom":I
    .end local v5    # "stripZeros":Z
    .end local v6    # "fmt":Ljava/lang/String;
    .end local v7    # "formatter":Ljava/util/Formatter;
    :cond_6
    goto :goto_3

    .line 63
    .restart local v0    # "val":D
    .restart local v2    # "exp":D
    .restart local v5    # "stripZeros":Z
    .restart local v6    # "fmt":Ljava/lang/String;
    .restart local v7    # "formatter":Ljava/util/Formatter;
    :catchall_0
    move-exception v4

    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    throw v4

    .line 79
    .end local v0    # "val":D
    .end local v2    # "exp":D
    .end local v5    # "stripZeros":Z
    .end local v6    # "fmt":Ljava/lang/String;
    .end local v7    # "formatter":Ljava/util/Formatter;
    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 82
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :goto_3
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellGeneralFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 89
    return-void
.end method
