.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 44
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .line 48
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 55
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .line 76
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 77
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .line 80
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .line 88
    array-length v0, p2

    .line 89
    .local v0, "destLen":I
    add-int v1, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 90
    return v3

    .line 93
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 94
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    .line 95
    return v3

    .line 93
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static checkDate(CCCCCCII)Z
    .locals 6
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .line 714
    const/16 v0, 0x31

    const/4 v1, 0x0

    if-lt p0, v0, :cond_12

    const/16 v2, 0x33

    if-le p0, v2, :cond_0

    goto :goto_5

    .line 717
    :cond_0
    const/16 v3, 0x30

    if-lt p1, v3, :cond_11

    const/16 v4, 0x39

    if-le p1, v4, :cond_1

    goto :goto_4

    .line 720
    :cond_1
    if-lt p2, v3, :cond_10

    if-le p2, v4, :cond_2

    goto :goto_3

    .line 723
    :cond_2
    if-lt p3, v3, :cond_f

    if-le p3, v4, :cond_3

    goto :goto_2

    .line 727
    :cond_3
    const/16 v5, 0x32

    if-ne p4, v3, :cond_5

    .line 728
    if-lt p5, v0, :cond_4

    if-le p5, v4, :cond_6

    .line 729
    :cond_4
    return v1

    .line 731
    :cond_5
    if-ne p4, v0, :cond_e

    .line 732
    if-eq p5, v3, :cond_6

    if-eq p5, v0, :cond_6

    if-eq p5, v5, :cond_6

    .line 733
    return v1

    .line 739
    :cond_6
    if-ne p6, v3, :cond_8

    .line 740
    if-lt p7, v0, :cond_7

    if-le p7, v4, :cond_c

    .line 741
    :cond_7
    return v1

    .line 743
    :cond_8
    if-eq p6, v0, :cond_b

    if-ne p6, v5, :cond_9

    goto :goto_0

    .line 747
    :cond_9
    if-ne p6, v2, :cond_a

    .line 748
    if-eq p7, v3, :cond_c

    if-eq p7, v0, :cond_c

    .line 749
    return v1

    .line 752
    :cond_a
    return v1

    .line 744
    :cond_b
    :goto_0
    if-lt p7, v3, :cond_d

    if-le p7, v4, :cond_c

    goto :goto_1

    .line 755
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 745
    :cond_d
    :goto_1
    return v1

    .line 736
    :cond_e
    return v1

    .line 724
    :cond_f
    :goto_2
    return v1

    .line 721
    :cond_10
    :goto_3
    return v1

    .line 718
    :cond_11
    :goto_4
    return v1

    .line 715
    :cond_12
    :goto_5
    return v1
.end method

.method private checkTime(CCCCCC)Z
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .line 659
    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    .line 660
    if-lt p2, v2, :cond_0

    if-le p2, v0, :cond_4

    .line 661
    :cond_0
    return v1

    .line 663
    :cond_1
    const/16 v3, 0x31

    if-ne p1, v3, :cond_3

    .line 664
    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_4

    .line 665
    :cond_2
    return v1

    .line 667
    :cond_3
    const/16 v3, 0x32

    if-ne p1, v3, :cond_e

    .line 668
    if-lt p2, v2, :cond_d

    const/16 v3, 0x34

    if-le p2, v3, :cond_4

    goto :goto_0

    .line 675
    :cond_4
    const/16 v3, 0x35

    const/16 v4, 0x36

    if-lt p3, v2, :cond_6

    if-gt p3, v3, :cond_6

    .line 676
    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_7

    .line 677
    :cond_5
    return v1

    .line 679
    :cond_6
    if-ne p3, v4, :cond_c

    .line 680
    if-eq p4, v2, :cond_7

    .line 681
    return v1

    .line 687
    :cond_7
    if-lt p5, v2, :cond_9

    if-gt p5, v3, :cond_9

    .line 688
    if-lt p6, v2, :cond_8

    if-le p6, v0, :cond_a

    .line 689
    :cond_8
    return v1

    .line 691
    :cond_9
    if-ne p5, v4, :cond_b

    .line 692
    if-eq p6, v2, :cond_a

    .line 693
    return v1

    .line 699
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 696
    :cond_b
    return v1

    .line 684
    :cond_c
    return v1

    .line 669
    :cond_d
    :goto_0
    return v1

    .line 672
    :cond_e
    return v1
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .locals 50
    .param p1, "strict"    # Z
    .param p2, "rest"    # I

    .line 214
    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ge v10, v11, :cond_0

    .line 215
    return v12

    .line 218
    :cond_0
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 219
    .local v13, "c0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 220
    .local v15, "c1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v8, 0x2

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 221
    .local v7, "c2":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 222
    .local v6, "c3":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 223
    .local v5, "c4":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v4, 0x5

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 224
    .local v3, "c5":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 225
    .local v2, "c6":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 227
    .local v1, "c7":C
    const/16 v0, 0x2f

    const/16 v11, 0xd

    if-nez p1, :cond_6

    if-le v10, v11, :cond_6

    .line 228
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v10

    sub-int/2addr v11, v14

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 229
    .local v11, "c_r0":C
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v8

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 230
    .local v14, "c_r1":C
    if-ne v13, v0, :cond_5

    const/16 v8, 0x44

    if-ne v15, v8, :cond_5

    const/16 v8, 0x61

    if-ne v7, v8, :cond_5

    const/16 v8, 0x74

    if-ne v6, v8, :cond_5

    const/16 v8, 0x65

    if-ne v5, v8, :cond_5

    const/16 v8, 0x28

    if-ne v3, v8, :cond_5

    if-ne v11, v0, :cond_5

    const/16 v8, 0x29

    if-ne v14, v8, :cond_5

    .line 232
    const/4 v0, -0x1

    .line 233
    .local v0, "plusIndex":I
    const/4 v8, 0x6

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_3

    .line 234
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v8

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 235
    .local v4, "c":C
    const/16 v12, 0x2b

    if-ne v4, v12, :cond_1

    .line 236
    move v0, v8

    const/16 v12, 0x39

    goto :goto_1

    .line 237
    :cond_1
    const/16 v12, 0x30

    if-lt v4, v12, :cond_3

    const/16 v12, 0x39

    if-le v4, v12, :cond_2

    .line 238
    goto :goto_2

    .line 233
    .end local v4    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 241
    .end local v8    # "i":I
    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 242
    const/4 v4, 0x0

    return v4

    .line 244
    :cond_4
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x6

    .line 245
    .local v4, "offset":I
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v0

    sub-int/2addr v8, v4

    invoke-virtual {v9, v4, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "numberText":Ljava/lang/String;
    move/from16 v21, v11

    .end local v11    # "c_r0":C
    .local v21, "c_r0":C
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 248
    .local v11, "millis":J
    move/from16 v16, v0

    .end local v0    # "plusIndex":I
    .local v16, "plusIndex":I
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    move/from16 v18, v4

    .end local v4    # "offset":I
    .local v18, "offset":I
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 249
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    const/4 v4, 0x5

    iput v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 252
    const/4 v0, 0x1

    return v0

    .line 230
    .end local v8    # "numberText":Ljava/lang/String;
    .end local v16    # "plusIndex":I
    .end local v18    # "offset":I
    .end local v21    # "c_r0":C
    .local v11, "c_r0":C
    :cond_5
    move/from16 v21, v11

    const/4 v4, 0x5

    const/16 v12, 0x39

    .end local v11    # "c_r0":C
    .restart local v21    # "c_r0":C
    goto :goto_3

    .line 227
    .end local v14    # "c_r1":C
    .end local v21    # "c_r0":C
    :cond_6
    const/4 v4, 0x5

    const/16 v12, 0x39

    .line 257
    :goto_3
    const/16 v11, 0x54

    const/16 v14, 0x10

    const/16 v0, 0xe

    const/16 v12, 0x2d

    const/16 v4, 0x8

    if-eq v10, v4, :cond_45

    if-eq v10, v0, :cond_45

    if-ne v10, v14, :cond_9

    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xa

    .line 259
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move/from16 v26, v4

    .local v26, "c10":C
    if-eq v4, v11, :cond_7

    const/16 v4, 0x20

    move/from16 v0, v26

    .end local v26    # "c10":C
    .local v0, "c10":C
    if-eq v0, v4, :cond_8

    goto :goto_4

    .end local v0    # "c10":C
    .restart local v26    # "c10":C
    :cond_7
    move/from16 v0, v26

    .end local v26    # "c10":C
    .restart local v0    # "c10":C
    :cond_8
    move v14, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v46, v5

    move/from16 v39, v6

    move/from16 v40, v7

    const/16 v8, 0xe

    const/16 v11, 0x10

    const/16 v12, 0xb

    goto/16 :goto_18

    .end local v0    # "c10":C
    :cond_9
    :goto_4
    const/16 v0, 0x11

    if-ne v10, v0, :cond_a

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x6

    .line 260
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_a

    move v14, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v46, v5

    move/from16 v39, v6

    move/from16 v40, v7

    const/16 v8, 0xe

    const/16 v11, 0x10

    const/16 v12, 0xb

    goto/16 :goto_18

    .line 370
    :cond_a
    const/16 v0, 0x9

    if-ge v10, v0, :cond_b

    .line 371
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_b
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v14, 0x8

    add-int/2addr v4, v14

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 375
    .local v14, "c8":C
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 377
    .local v4, "c9":C
    const/16 v0, 0xa

    .line 379
    .local v0, "date_len":I
    if-ne v5, v12, :cond_c

    if-eq v1, v12, :cond_d

    :cond_c
    const/16 v8, 0x2f

    if-ne v5, v8, :cond_e

    if-ne v1, v8, :cond_e

    .line 382
    :cond_d
    move v8, v13

    .line 383
    .local v8, "y0":C
    move/from16 v23, v15

    .line 384
    .local v23, "y1":C
    move/from16 v30, v7

    .line 385
    .local v30, "y2":C
    move/from16 v31, v6

    .line 386
    .local v31, "y3":C
    move/from16 v32, v3

    .line 387
    .local v32, "M0":C
    move/from16 v33, v2

    .line 388
    .local v33, "M1":C
    move/from16 v34, v14

    .line 389
    .local v34, "d0":C
    move/from16 v35, v4

    move v11, v0

    move v12, v8

    move/from16 v44, v34

    move/from16 v45, v35

    .local v35, "d1":C
    goto/16 :goto_c

    .line 390
    .end local v8    # "y0":C
    .end local v23    # "y1":C
    .end local v30    # "y2":C
    .end local v31    # "y3":C
    .end local v32    # "M0":C
    .end local v33    # "M1":C
    .end local v34    # "d0":C
    .end local v35    # "d1":C
    :cond_e
    if-ne v5, v12, :cond_10

    if-ne v2, v12, :cond_10

    .line 392
    move v8, v13

    .line 393
    .restart local v8    # "y0":C
    move/from16 v23, v15

    .line 394
    .restart local v23    # "y1":C
    move/from16 v30, v7

    .line 395
    .restart local v30    # "y2":C
    move/from16 v31, v6

    .line 396
    .restart local v31    # "y3":C
    const/16 v32, 0x30

    .line 397
    .restart local v32    # "M0":C
    move/from16 v33, v3

    .line 399
    .restart local v33    # "M1":C
    const/16 v11, 0x20

    if-ne v14, v11, :cond_f

    .line 400
    const/16 v11, 0x30

    .line 401
    .local v11, "d0":C
    move/from16 v35, v1

    .line 402
    .restart local v35    # "d1":C
    const/16 v0, 0x8

    move v12, v8

    move/from16 v44, v11

    move/from16 v45, v35

    move v11, v0

    goto/16 :goto_c

    .line 404
    .end local v11    # "d0":C
    .end local v35    # "d1":C
    :cond_f
    move v11, v1

    .line 405
    .restart local v11    # "d0":C
    move/from16 v35, v14

    .line 406
    .restart local v35    # "d1":C
    const/16 v0, 0x9

    move v12, v8

    move/from16 v44, v11

    move/from16 v45, v35

    move v11, v0

    goto/16 :goto_c

    .line 408
    .end local v8    # "y0":C
    .end local v11    # "d0":C
    .end local v23    # "y1":C
    .end local v30    # "y2":C
    .end local v31    # "y3":C
    .end local v32    # "M0":C
    .end local v33    # "M1":C
    .end local v35    # "d1":C
    :cond_10
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_11

    const/16 v8, 0x2e

    if-eq v3, v8, :cond_12

    :cond_11
    if-ne v7, v12, :cond_13

    if-ne v3, v12, :cond_13

    .line 411
    :cond_12
    move v8, v13

    .line 412
    .local v8, "d0":C
    move/from16 v35, v15

    .line 413
    .restart local v35    # "d1":C
    move/from16 v32, v6

    .line 414
    .restart local v32    # "M0":C
    move/from16 v33, v5

    .line 415
    .restart local v33    # "M1":C
    move v11, v2

    .line 416
    .local v11, "y0":C
    move/from16 v23, v1

    .line 417
    .restart local v23    # "y1":C
    move/from16 v30, v14

    .line 418
    .restart local v30    # "y2":C
    move/from16 v31, v4

    move/from16 v44, v8

    move v12, v11

    move/from16 v45, v35

    move v11, v0

    .restart local v31    # "y3":C
    goto/16 :goto_c

    .line 420
    .end local v8    # "d0":C
    .end local v11    # "y0":C
    .end local v23    # "y1":C
    .end local v30    # "y2":C
    .end local v31    # "y3":C
    .end local v32    # "M0":C
    .end local v33    # "M1":C
    .end local v35    # "d1":C
    :cond_13
    const/16 v8, 0x5e74

    if-eq v5, v8, :cond_15

    const v8, 0xb144

    if-ne v5, v8, :cond_14

    goto :goto_5

    .line 455
    :cond_14
    const/4 v8, 0x0

    return v8

    .line 421
    :cond_15
    :goto_5
    move v8, v13

    .line 422
    .local v8, "y0":C
    move/from16 v23, v15

    .line 423
    .restart local v23    # "y1":C
    move/from16 v30, v7

    .line 424
    .restart local v30    # "y2":C
    move/from16 v31, v6

    .line 426
    .restart local v31    # "y3":C
    const/16 v11, 0x6708

    if-eq v1, v11, :cond_1d

    const v11, 0xc6d4

    if-ne v1, v11, :cond_16

    goto :goto_9

    .line 439
    :cond_16
    const/16 v11, 0x6708

    if-eq v2, v11, :cond_18

    const v11, 0xc6d4

    if-ne v2, v11, :cond_17

    goto :goto_6

    .line 452
    :cond_17
    const/4 v11, 0x0

    return v11

    .line 440
    :cond_18
    :goto_6
    const/16 v32, 0x30

    .line 441
    .restart local v32    # "M0":C
    move/from16 v33, v3

    .line 442
    .restart local v33    # "M1":C
    const/16 v11, 0x65e5

    if-eq v14, v11, :cond_1c

    const v12, 0xc77c

    if-ne v14, v12, :cond_19

    goto :goto_8

    .line 445
    :cond_19
    if-eq v4, v11, :cond_1b

    if-ne v4, v12, :cond_1a

    goto :goto_7

    .line 449
    :cond_1a
    const/4 v11, 0x0

    return v11

    .line 446
    :cond_1b
    :goto_7
    move v11, v1

    .line 447
    .local v11, "d0":C
    move v12, v14

    move/from16 v44, v11

    move/from16 v45, v12

    move v11, v0

    move v12, v8

    .local v12, "d1":C
    goto :goto_c

    .line 443
    .end local v11    # "d0":C
    .end local v12    # "d1":C
    :cond_1c
    :goto_8
    const/16 v11, 0x30

    .line 444
    .restart local v11    # "d0":C
    move v12, v1

    move/from16 v44, v11

    move/from16 v45, v12

    move v11, v0

    move v12, v8

    .restart local v12    # "d1":C
    goto :goto_c

    .line 427
    .end local v11    # "d0":C
    .end local v12    # "d1":C
    .end local v32    # "M0":C
    .end local v33    # "M1":C
    :cond_1d
    :goto_9
    move/from16 v32, v3

    .line 428
    .restart local v32    # "M0":C
    move/from16 v33, v2

    .line 429
    .restart local v33    # "M1":C
    const/16 v11, 0x65e5

    if-eq v4, v11, :cond_21

    const v12, 0xc77c

    if-ne v4, v12, :cond_1e

    goto :goto_b

    .line 432
    :cond_1e
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_20

    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0xa

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    const v12, 0xc77c

    if-ne v11, v12, :cond_1f

    goto :goto_a

    .line 437
    :cond_1f
    const/4 v11, 0x0

    return v11

    .line 433
    :cond_20
    :goto_a
    move v11, v14

    .line 434
    .restart local v11    # "d0":C
    move v12, v4

    .line 435
    .restart local v12    # "d1":C
    const/16 v0, 0xb

    move/from16 v44, v11

    move/from16 v45, v12

    move v11, v0

    move v12, v8

    goto :goto_c

    .line 430
    .end local v11    # "d0":C
    .end local v12    # "d1":C
    :cond_21
    :goto_b
    const/16 v11, 0x30

    .line 431
    .restart local v11    # "d0":C
    move v12, v14

    move/from16 v44, v11

    move/from16 v45, v12

    move v11, v0

    move v12, v8

    .line 459
    .end local v0    # "date_len":I
    .end local v8    # "y0":C
    .local v11, "date_len":I
    .local v12, "y0":C
    .local v44, "d0":C
    .local v45, "d1":C
    :goto_c
    move/from16 v36, v12

    move/from16 v37, v23

    move/from16 v38, v30

    move/from16 v39, v31

    move/from16 v40, v32

    move/from16 v41, v33

    move/from16 v42, v44

    move/from16 v43, v45

    invoke-static/range {v36 .. v43}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_22

    .line 460
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_22
    const/16 v8, 0xe

    move-object/from16 v0, p0

    move/from16 v27, v14

    move v14, v1

    .end local v1    # "c7":C
    .local v14, "c7":C
    .local v27, "c8":C
    move v1, v12

    move/from16 v36, v2

    .end local v2    # "c6":C
    .local v36, "c6":C
    move/from16 v2, v23

    move/from16 v37, v3

    .end local v3    # "c5":C
    .local v37, "c5":C
    move/from16 v3, v30

    move/from16 v21, v4

    move/from16 v25, v12

    const/4 v12, 0x5

    .end local v4    # "c9":C
    .end local v12    # "y0":C
    .local v21, "c9":C
    .local v25, "y0":C
    move/from16 v4, v31

    move/from16 v46, v5

    .end local v5    # "c4":C
    .local v46, "c4":C
    move/from16 v5, v32

    move/from16 v39, v6

    .end local v6    # "c3":C
    .local v39, "c3":C
    move/from16 v6, v33

    move/from16 v40, v7

    .end local v7    # "c2":C
    .local v40, "c2":C
    move/from16 v7, v44

    move/from16 v8, v45

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 465
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 466
    .local v7, "t":C
    const/16 v0, 0x54

    if-eq v7, v0, :cond_2b

    const/16 v0, 0x20

    if-ne v7, v0, :cond_23

    if-nez p1, :cond_23

    const/16 v5, 0xb

    const/4 v6, 0x2

    const/16 v8, 0xe

    goto/16 :goto_10

    .line 470
    :cond_23
    const/16 v0, 0x22

    if-eq v7, v0, :cond_2a

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_2a

    const/16 v0, 0x65e5

    if-eq v7, v0, :cond_2a

    const v0, 0xc77c

    if-ne v7, v0, :cond_24

    const/4 v0, 0x0

    const/16 v8, 0xe

    goto :goto_f

    .line 480
    :cond_24
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_26

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_25

    goto :goto_d

    .line 495
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_26
    :goto_d
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v1, v11, 0x6

    if-ne v0, v1, :cond_29

    .line 482
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_28

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x4

    .line 483
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_28

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    .line 484
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_27

    goto :goto_e

    .line 488
    :cond_27
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 489
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v8, 0xe

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 490
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    const/4 v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v7, v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 491
    return v1

    .line 485
    :cond_28
    :goto_e
    const/4 v0, 0x0

    return v0

    .line 493
    :cond_29
    const/4 v0, 0x0

    return v0

    .line 470
    :cond_2a
    const/4 v0, 0x0

    const/16 v8, 0xe

    .line 471
    :goto_f
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 472
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 473
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 474
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 476
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 478
    iput v12, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 479
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_2b
    const/16 v5, 0xb

    const/4 v6, 0x2

    const/16 v8, 0xe

    .line 467
    :goto_10
    add-int/lit8 v0, v11, 0x9

    if-ge v10, v0, :cond_2c

    .line 468
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_2c
    const/4 v0, 0x0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2d

    .line 499
    return v0

    .line 501
    :cond_2d
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2e

    .line 502
    return v0

    .line 505
    :cond_2e
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    .line 506
    .local v19, "h0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/2addr v0, v6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 507
    .local v20, "h1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 508
    .local v26, "m0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 509
    .local v28, "m1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 510
    .local v29, "s0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 512
    .local v16, "s1":C
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v26

    move/from16 v4, v28

    const/16 v12, 0xb

    move/from16 v5, v29

    const/4 v8, 0x2

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 513
    const/4 v0, 0x0

    return v0

    .line 516
    :cond_2f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v26

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 518
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 519
    .local v6, "dot":C
    const/16 v0, 0x2e

    if-ne v6, v0, :cond_43

    .line 520
    add-int/lit8 v0, v11, 0xb

    if-ge v10, v0, :cond_30

    .line 521
    const/4 v0, 0x0

    return v0

    .line 543
    :cond_30
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 544
    .local v5, "S0":C
    const/16 v0, 0x30

    if-lt v5, v0, :cond_42

    const/16 v0, 0x39

    if-le v5, v0, :cond_31

    move/from16 v43, v5

    const/4 v0, 0x0

    goto/16 :goto_17

    .line 547
    :cond_31
    add-int/lit8 v0, v5, -0x30

    .line 548
    .local v0, "millis":I
    const/4 v1, 0x1

    .line 550
    .local v1, "millisLen":I
    add-int/lit8 v2, v11, 0xb

    if-le v10, v2, :cond_32

    .line 551
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/2addr v2, v12

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 552
    .local v2, "S1":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_32

    const/16 v3, 0x39

    if-gt v2, v3, :cond_32

    .line 553
    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v4, v2, -0x30

    add-int v0, v3, v4

    .line 554
    const/4 v1, 0x2

    .line 558
    .end local v2    # "S1":C
    :cond_32
    if-ne v1, v8, :cond_33

    .line 559
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 560
    .local v2, "S2":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_33

    const/16 v3, 0x39

    if-gt v2, v3, :cond_33

    .line 561
    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v4, v2, -0x30

    add-int v0, v3, v4

    .line 562
    const/4 v1, 0x3

    move v12, v0

    move/from16 v24, v1

    goto :goto_11

    .line 566
    .end local v2    # "S2":C
    :cond_33
    move v12, v0

    move/from16 v24, v1

    .end local v0    # "millis":I
    .end local v1    # "millisLen":I
    .local v12, "millis":I
    .local v24, "millisLen":I
    :goto_11
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "timzeZoneLength":I
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v24

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 570
    .local v4, "timeZoneFlag":C
    const/16 v1, 0x2b

    if-eq v4, v1, :cond_37

    const/16 v1, 0x2d

    if-ne v4, v1, :cond_34

    goto :goto_12

    .line 606
    :cond_34
    const/16 v1, 0x5a

    if-ne v4, v1, :cond_36

    .line 607
    const/4 v0, 0x1

    .line 608
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_35

    .line 609
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_35

    .line 611
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 612
    .local v1, "timeZone":Ljava/util/TimeZone;
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 617
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .end local v2    # "timeZoneIDs":[Ljava/lang/String;
    :cond_35
    move/from16 v42, v4

    move/from16 v43, v5

    goto/16 :goto_14

    .line 606
    :cond_36
    move/from16 v42, v4

    move/from16 v43, v5

    goto/16 :goto_14

    .line 571
    :cond_37
    :goto_12
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v24

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 572
    .local v3, "t0":C
    const/16 v1, 0x30

    if-lt v3, v1, :cond_41

    const/16 v1, 0x31

    if-le v3, v1, :cond_38

    move/from16 v38, v0

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v5

    const/4 v0, 0x0

    goto/16 :goto_16

    .line 576
    :cond_38
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v24

    add-int/2addr v1, v8

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 577
    .local v8, "t1":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_40

    const/16 v1, 0x39

    if-le v8, v1, :cond_39

    move/from16 v38, v0

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v5

    goto/16 :goto_15

    .line 581
    :cond_39
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v24

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 582
    .local v2, "t2":C
    const/16 v1, 0x30

    .local v1, "t3":C
    const/16 v35, 0x30

    .line 583
    .local v35, "t4":C
    move/from16 v38, v0

    const/16 v0, 0x3a

    .end local v0    # "timzeZoneLength":I
    .local v38, "timzeZoneLength":I
    if-ne v2, v0, :cond_3c

    .line 584
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xa

    add-int v0, v0, v24

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 585
    const/16 v0, 0x30

    if-eq v1, v0, :cond_3a

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3a

    .line 586
    const/4 v0, 0x0

    return v0

    .line 589
    :cond_3a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xa

    add-int v0, v0, v24

    const/16 v17, 0x5

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 590
    .end local v35    # "t4":C
    .local v0, "t4":C
    move/from16 v17, v1

    const/16 v1, 0x30

    .end local v1    # "t3":C
    .local v17, "t3":C
    if-eq v0, v1, :cond_3b

    .line 591
    const/4 v1, 0x0

    return v1

    .line 593
    :cond_3b
    const/4 v1, 0x6

    move/from16 v35, v0

    move/from16 v22, v17

    move/from16 v17, v1

    .end local v38    # "timzeZoneLength":I
    .local v1, "timzeZoneLength":I
    goto :goto_13

    .line 594
    .end local v0    # "t4":C
    .end local v17    # "t3":C
    .local v1, "t3":C
    .restart local v35    # "t4":C
    .restart local v38    # "timzeZoneLength":I
    :cond_3c
    move v0, v1

    const/16 v1, 0x30

    .end local v1    # "t3":C
    .local v0, "t3":C
    if-ne v2, v1, :cond_3e

    .line 595
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v24

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 596
    .end local v0    # "t3":C
    .restart local v1    # "t3":C
    const/16 v0, 0x30

    if-eq v1, v0, :cond_3d

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3d

    .line 597
    const/4 v0, 0x0

    return v0

    .line 599
    :cond_3d
    const/4 v0, 0x5

    move/from16 v17, v0

    move/from16 v22, v1

    .end local v38    # "timzeZoneLength":I
    .local v0, "timzeZoneLength":I
    goto :goto_13

    .line 601
    .end local v1    # "t3":C
    .local v0, "t3":C
    .restart local v38    # "timzeZoneLength":I
    :cond_3e
    const/4 v1, 0x3

    move/from16 v22, v0

    move/from16 v17, v1

    .line 604
    .end local v0    # "t3":C
    .end local v38    # "timzeZoneLength":I
    .local v17, "timzeZoneLength":I
    .local v22, "t3":C
    :goto_13
    move-object/from16 v0, p0

    move v1, v4

    move/from16 v38, v2

    .end local v2    # "t2":C
    .local v38, "t2":C
    move v2, v3

    move/from16 v41, v3

    .end local v3    # "t0":C
    .local v41, "t0":C
    move v3, v8

    move/from16 v42, v4

    .end local v4    # "timeZoneFlag":C
    .local v42, "timeZoneFlag":C
    move/from16 v4, v22

    move/from16 v43, v5

    .end local v5    # "S0":C
    .local v43, "S0":C
    move/from16 v5, v35

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 606
    .end local v8    # "t1":C
    .end local v22    # "t3":C
    .end local v35    # "t4":C
    .end local v38    # "t2":C
    .end local v41    # "t0":C
    move/from16 v0, v17

    .line 617
    .end local v17    # "timzeZoneLength":I
    .local v0, "timzeZoneLength":I
    :goto_14
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v11, 0xa

    add-int v2, v2, v24

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 618
    .local v1, "end":C
    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3f

    .line 619
    const/4 v2, 0x0

    return v2

    .line 621
    :cond_3f
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v11, 0xa

    add-int v3, v3, v24

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 623
    const/4 v2, 0x5

    iput v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 624
    const/4 v2, 0x1

    return v2

    .line 577
    .end local v1    # "end":C
    .end local v42    # "timeZoneFlag":C
    .end local v43    # "S0":C
    .restart local v3    # "t0":C
    .restart local v4    # "timeZoneFlag":C
    .restart local v5    # "S0":C
    .restart local v8    # "t1":C
    :cond_40
    move/from16 v38, v0

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v5

    .line 578
    .end local v0    # "timzeZoneLength":I
    .end local v3    # "t0":C
    .end local v4    # "timeZoneFlag":C
    .end local v5    # "S0":C
    .local v38, "timzeZoneLength":I
    .restart local v41    # "t0":C
    .restart local v42    # "timeZoneFlag":C
    .restart local v43    # "S0":C
    :goto_15
    const/4 v0, 0x0

    return v0

    .line 572
    .end local v8    # "t1":C
    .end local v38    # "timzeZoneLength":I
    .end local v41    # "t0":C
    .end local v42    # "timeZoneFlag":C
    .end local v43    # "S0":C
    .restart local v0    # "timzeZoneLength":I
    .restart local v3    # "t0":C
    .restart local v4    # "timeZoneFlag":C
    .restart local v5    # "S0":C
    :cond_41
    move/from16 v38, v0

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v5

    const/4 v0, 0x0

    .line 573
    .end local v0    # "timzeZoneLength":I
    .end local v3    # "t0":C
    .end local v4    # "timeZoneFlag":C
    .end local v5    # "S0":C
    .restart local v38    # "timzeZoneLength":I
    .restart local v41    # "t0":C
    .restart local v42    # "timeZoneFlag":C
    .restart local v43    # "S0":C
    :goto_16
    return v0

    .line 544
    .end local v12    # "millis":I
    .end local v24    # "millisLen":I
    .end local v38    # "timzeZoneLength":I
    .end local v41    # "t0":C
    .end local v42    # "timeZoneFlag":C
    .end local v43    # "S0":C
    .restart local v5    # "S0":C
    :cond_42
    move/from16 v43, v5

    const/4 v0, 0x0

    .line 545
    .end local v5    # "S0":C
    .restart local v43    # "S0":C
    :goto_17
    return v0

    .line 524
    .end local v43    # "S0":C
    :cond_43
    const/4 v0, 0x0

    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v1, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 526
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v11, 0x9

    add-int/2addr v0, v1

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 528
    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 530
    const/16 v0, 0x5a

    if-ne v6, v0, :cond_44

    .line 532
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_44

    .line 533
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_44

    .line 535
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 536
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 540
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    :cond_44
    const/4 v0, 0x1

    return v0

    .line 257
    .end local v11    # "date_len":I
    .end local v14    # "c7":C
    .end local v16    # "s1":C
    .end local v19    # "h0":C
    .end local v20    # "h1":C
    .end local v21    # "c9":C
    .end local v23    # "y1":C
    .end local v25    # "y0":C
    .end local v26    # "m0":C
    .end local v27    # "c8":C
    .end local v28    # "m1":C
    .end local v29    # "s0":C
    .end local v30    # "y2":C
    .end local v31    # "y3":C
    .end local v32    # "M0":C
    .end local v33    # "M1":C
    .end local v36    # "c6":C
    .end local v37    # "c5":C
    .end local v39    # "c3":C
    .end local v40    # "c2":C
    .end local v44    # "d0":C
    .end local v45    # "d1":C
    .end local v46    # "c4":C
    .local v1, "c7":C
    .local v2, "c6":C
    .local v3, "c5":C
    .local v5, "c4":C
    .local v6, "c3":C
    .local v7, "c2":C
    :cond_45
    move v14, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v46, v5

    move/from16 v39, v6

    move/from16 v40, v7

    const/16 v8, 0xe

    const/16 v11, 0x10

    const/16 v12, 0xb

    .line 261
    .end local v1    # "c7":C
    .end local v2    # "c6":C
    .end local v3    # "c5":C
    .end local v5    # "c4":C
    .end local v6    # "c3":C
    .end local v7    # "c2":C
    .restart local v14    # "c7":C
    .restart local v36    # "c6":C
    .restart local v37    # "c5":C
    .restart local v39    # "c3":C
    .restart local v40    # "c2":C
    .restart local v46    # "c4":C
    :goto_18
    if-eqz p1, :cond_46

    .line 262
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_46
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 271
    .local v20, "c8":C
    move/from16 v7, v46

    const/16 v0, 0x2d

    .end local v46    # "c4":C
    .local v7, "c4":C
    if-ne v7, v0, :cond_47

    if-ne v14, v0, :cond_47

    const/4 v0, 0x1

    goto :goto_19

    :cond_47
    const/4 v0, 0x0

    :goto_19
    move/from16 v21, v0

    .line 272
    .local v21, "c_47":Z
    if-eqz v21, :cond_48

    if-ne v10, v11, :cond_48

    const/4 v0, 0x1

    goto :goto_1a

    :cond_48
    const/4 v0, 0x0

    :goto_1a
    move/from16 v23, v0

    .line 273
    .local v23, "sperate16":Z
    if-eqz v21, :cond_49

    const/16 v0, 0x11

    if-ne v10, v0, :cond_49

    const/4 v0, 0x1

    goto :goto_1b

    :cond_49
    const/4 v0, 0x0

    :goto_1b
    move/from16 v25, v0

    .line 274
    .local v25, "sperate17":Z
    if-nez v25, :cond_4b

    if-eqz v23, :cond_4a

    goto :goto_1c

    .line 284
    :cond_4a
    move v0, v13

    .line 285
    .local v0, "y0":C
    move v1, v15

    .line 286
    .local v1, "y1":C
    move/from16 v2, v40

    .line 287
    .local v2, "y2":C
    move/from16 v3, v39

    .line 288
    .local v3, "y3":C
    move v4, v7

    .line 289
    .local v4, "M0":C
    move/from16 v5, v37

    .line 290
    .local v5, "M1":C
    move/from16 v6, v36

    .line 291
    .local v6, "d0":C
    move/from16 v27, v14

    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v35, v6

    move/from16 v49, v27

    .local v27, "d1":C
    goto :goto_1d

    .line 275
    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v6    # "d0":C
    .end local v27    # "d1":C
    :cond_4b
    :goto_1c
    move v0, v13

    .line 276
    .restart local v0    # "y0":C
    move v1, v15

    .line 277
    .restart local v1    # "y1":C
    move/from16 v2, v40

    .line 278
    .restart local v2    # "y2":C
    move/from16 v3, v39

    .line 279
    .restart local v3    # "y3":C
    move/from16 v4, v37

    .line 280
    .restart local v4    # "M0":C
    move/from16 v5, v36

    .line 281
    .restart local v5    # "M1":C
    move/from16 v6, v20

    .line 282
    .restart local v6    # "d0":C
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v24, 0x9

    add-int/lit8 v8, v8, 0x9

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v35, v6

    move/from16 v49, v8

    .line 295
    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v6    # "d0":C
    .local v28, "y0":C
    .local v29, "y1":C
    .restart local v30    # "y2":C
    .restart local v31    # "y3":C
    .restart local v32    # "M0":C
    .restart local v33    # "M1":C
    .local v35, "d0":C
    .local v49, "d1":C
    :goto_1d
    move/from16 v41, v28

    move/from16 v42, v29

    move/from16 v43, v30

    move/from16 v44, v31

    move/from16 v45, v32

    move/from16 v46, v33

    move/from16 v47, v35

    move/from16 v48, v49

    invoke-static/range {v41 .. v48}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 296
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_4c
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v41, v7

    .end local v7    # "c4":C
    .local v41, "c4":C
    move/from16 v7, v35

    move/from16 v8, v49

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 302
    const/16 v0, 0x8

    if-eq v10, v0, :cond_5a

    .line 303
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 304
    .local v7, "c9":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 305
    .local v8, "c10":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 306
    .local v16, "c11":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v24

    .line 307
    .local v24, "c12":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0xd

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 311
    .local v6, "c13":C
    if-eqz v25, :cond_4d

    const/16 v0, 0x54

    if-ne v8, v0, :cond_4d

    const/16 v0, 0x3a

    if-ne v6, v0, :cond_4d

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_50

    :cond_4d
    if-eqz v23, :cond_51

    const/16 v0, 0x20

    if-eq v8, v0, :cond_4f

    const/16 v0, 0x54

    if-ne v8, v0, :cond_4e

    goto :goto_1e

    :cond_4e
    const/16 v5, 0xe

    goto :goto_1f

    :cond_4f
    :goto_1e
    const/16 v0, 0x3a

    if-ne v6, v0, :cond_51

    .line 313
    :cond_50
    move/from16 v0, v16

    .line 314
    .local v0, "h0":C
    move/from16 v1, v24

    .line 315
    .local v1, "h1":C
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v5, 0xe

    add-int/2addr v2, v5

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 316
    .local v2, "m0":C
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 317
    .local v3, "m1":C
    const/16 v4, 0x30

    .line 318
    .local v4, "s0":C
    const/16 v17, 0x30

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v42, v3

    move/from16 v43, v4

    move/from16 v44, v17

    move/from16 v17, v0

    .local v17, "s1":C
    goto :goto_20

    .line 311
    .end local v0    # "h0":C
    .end local v1    # "h1":C
    .end local v2    # "m0":C
    .end local v3    # "m1":C
    .end local v4    # "s0":C
    .end local v17    # "s1":C
    :cond_51
    const/16 v5, 0xe

    .line 320
    :goto_1f
    move/from16 v0, v20

    .line 321
    .restart local v0    # "h0":C
    move v1, v7

    .line 322
    .restart local v1    # "h1":C
    move v2, v8

    .line 323
    .restart local v2    # "m0":C
    move/from16 v3, v16

    .line 324
    .restart local v3    # "m1":C
    move/from16 v4, v24

    .line 325
    .restart local v4    # "s0":C
    move/from16 v17, v6

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v42, v3

    move/from16 v43, v4

    move/from16 v44, v17

    move/from16 v17, v0

    .line 328
    .end local v0    # "h0":C
    .end local v1    # "h1":C
    .end local v2    # "m0":C
    .end local v3    # "m1":C
    .end local v4    # "s0":C
    .local v17, "h0":C
    .local v26, "h1":C
    .local v27, "m0":C
    .local v42, "m1":C
    .local v43, "s0":C
    .local v44, "s1":C
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v42

    const/16 v12, 0xe

    move/from16 v5, v43

    move/from16 v45, v6

    .end local v6    # "c13":C
    .local v45, "c13":C
    move/from16 v6, v44

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_52

    .line 329
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_52
    const/16 v0, 0x11

    if-ne v10, v0, :cond_59

    if-nez v25, :cond_59

    .line 333
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 334
    .local v0, "S0":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 335
    .local v1, "S1":C
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 336
    .local v2, "S2":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_58

    const/16 v4, 0x39

    if-le v0, v4, :cond_53

    const/4 v3, 0x0

    goto :goto_23

    .line 339
    :cond_53
    if-lt v1, v3, :cond_57

    if-le v1, v4, :cond_54

    const/4 v3, 0x0

    goto :goto_22

    .line 342
    :cond_54
    if-lt v2, v3, :cond_56

    if-le v2, v4, :cond_55

    goto :goto_21

    .line 346
    :cond_55
    add-int/lit8 v3, v0, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v1, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x30

    add-int/2addr v3, v4

    .line 347
    .end local v0    # "S0":C
    .end local v1    # "S1":C
    .end local v2    # "S2":C
    .local v3, "millis":I
    goto :goto_24

    .line 343
    .end local v3    # "millis":I
    .restart local v0    # "S0":C
    .restart local v1    # "S1":C
    .restart local v2    # "S2":C
    :cond_56
    :goto_21
    const/4 v3, 0x0

    return v3

    .line 339
    :cond_57
    const/4 v3, 0x0

    .line 340
    :goto_22
    return v3

    .line 336
    :cond_58
    const/4 v3, 0x0

    .line 337
    :goto_23
    return v3

    .line 348
    .end local v0    # "S0":C
    .end local v1    # "S1":C
    .end local v2    # "S2":C
    :cond_59
    const/4 v3, 0x0

    .line 351
    .restart local v3    # "millis":I
    :goto_24
    add-int/lit8 v0, v17, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v26, -0x30

    add-int/2addr v0, v1

    .line 352
    .local v0, "hour":I
    add-int/lit8 v1, v27, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v42, -0x30

    add-int/2addr v1, v2

    .line 353
    .local v1, "minute":I
    add-int/lit8 v2, v43, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v44, -0x30

    add-int/2addr v2, v4

    .line 354
    .end local v7    # "c9":C
    .end local v16    # "c11":C
    .end local v17    # "h0":C
    .end local v24    # "c12":C
    .end local v26    # "h1":C
    .end local v27    # "m0":C
    .end local v42    # "m1":C
    .end local v43    # "s0":C
    .end local v44    # "s1":C
    .end local v45    # "c13":C
    .local v2, "seconds":I
    goto :goto_25

    .line 355
    .end local v0    # "hour":I
    .end local v1    # "minute":I
    .end local v2    # "seconds":I
    .end local v3    # "millis":I
    .end local v8    # "c10":C
    :cond_5a
    const/16 v12, 0xe

    const/4 v0, 0x0

    .line 356
    .restart local v0    # "hour":I
    const/4 v1, 0x0

    .line 357
    .restart local v1    # "minute":I
    const/4 v2, 0x0

    .line 358
    .restart local v2    # "seconds":I
    const/4 v3, 0x0

    .line 361
    .restart local v3    # "millis":I
    :goto_25
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 362
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 363
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v12, v3}, Ljava/util/Calendar;->set(II)V

    .line 366
    const/4 v4, 0x5

    iput v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 367
    const/4 v4, 0x1

    return v4
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .line 703
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 704
    add-int/lit8 v0, p1, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p2, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x30

    add-int/2addr v0, v1

    .line 705
    .local v0, "year":I
    add-int/lit8 v1, p5, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p6, -0x30

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 706
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int/2addr v3, v4

    .line 708
    .local v3, "day":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 709
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 710
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 711
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .line 2058
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2059
    return-void
.end method

.method public bytesValue()[B
    .locals 10

    .line 115
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_4

    .line 116
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "start":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 117
    .local v1, "len":I
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    .line 121
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 122
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 124
    .local v4, "c0":C
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 126
    .local v5, "c1":C
    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0x39

    if-gt v4, v8, :cond_0

    const/16 v9, 0x30

    goto :goto_1

    :cond_0
    const/16 v9, 0x37

    :goto_1
    sub-int v9, v4, v9

    .line 127
    .local v9, "b0":I
    if-gt v5, v8, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x37

    :goto_2
    sub-int v6, v5, v6

    .line 128
    .local v6, "b1":I
    shl-int/lit8 v7, v9, 0x4

    or-int/2addr v7, v6

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 122
    .end local v4    # "c0":C
    .end local v5    # "c1":C
    .end local v6    # "b1":I
    .end local v9    # "b0":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 118
    .end local v2    # "bytes":[B
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0    # "start":I
    .end local v1    # "len":I
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 61
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    .line 62
    const/16 v0, 0x1a

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 85
    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 8

    .line 186
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 189
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 190
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 193
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v2, "offset":I
    move v3, v1

    .line 194
    .local v3, "count":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v6, v2, v3

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v4, v2, v6, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v4, v6, v5, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v4

    .line 198
    :cond_2
    new-array v4, v3, [C

    .line 199
    .local v4, "chars":[C
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v7, v2, v3

    invoke-virtual {v6, v2, v7, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v5
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2064
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2066
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2062
    return-object v0
.end method

.method public isEOF()Z
    .locals 3

    .line 760
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public matchField2([C)Z
    .locals 6
    .param p1, "fieldName"    # [C

    .line 2174
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_1

    .line 2179
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2180
    return v1

    .line 2183
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    .line 2184
    .local v0, "offset":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2185
    .local v0, "ch":C
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2186
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v4, v5

    goto :goto_1

    .line 2189
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_3

    .line 2190
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2191
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2192
    const/4 v1, 0x1

    return v1

    .line 2194
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2195
    return v1
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1171
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1173
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-object v0

    .line 1174
    .end local v0    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    .local v0, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0

    .line 1179
    .end local v0    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-object v0

    .line 1181
    .end local v0    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final next()C
    .locals 2

    .line 69
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 70
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 70
    return v1
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 177
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 178
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 179
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 182
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 20
    .param p1, "seperator"    # C

    .line 1931
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1932
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1933
    .local v2, "startPos":I
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1935
    .local v3, "startChar":C
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1937
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1940
    .local v4, "ch":C
    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/16 v8, 0x2c

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v4, v6, :cond_5

    .line 1941
    move v11, v5

    .line 1942
    .local v11, "startIndex":I
    invoke-virtual {v0, v6, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v6

    .line 1943
    .local v6, "endIndex":I
    if-eq v6, v10, :cond_4

    .line 1947
    sub-int v12, v6, v11

    .line 1948
    .local v12, "rest":I
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1949
    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1950
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1957
    .local v1, "dateVal":Ljava/util/Date;
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1958
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1961
    :goto_0
    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_0

    goto :goto_1

    .line 1965
    :cond_0
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1966
    add-int/lit8 v6, v6, 0x1

    .line 1967
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 1969
    :cond_1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1970
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1971
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1973
    return-object v9

    .line 1962
    :cond_2
    :goto_1
    add-int/lit8 v13, v6, 0x1

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1963
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1964
    nop

    .line 1976
    .end local v6    # "endIndex":I
    .end local v11    # "startIndex":I
    .end local v12    # "rest":I
    goto/16 :goto_5

    .line 1952
    .end local v1    # "dateVal":Ljava/util/Date;
    .restart local v6    # "endIndex":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "rest":I
    :cond_3
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1953
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1954
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1955
    return-object v9

    .line 1944
    .end local v12    # "rest":I
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "unclosed str"

    invoke-direct {v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1976
    .end local v6    # "endIndex":I
    .end local v11    # "startIndex":I
    :cond_5
    const/16 v1, 0x2d

    const/16 v6, 0x39

    const/16 v11, 0x30

    if-eq v4, v1, :cond_a

    if-lt v4, v11, :cond_6

    if-gt v4, v6, :cond_6

    goto :goto_3

    .line 2012
    :cond_6
    const/16 v1, 0x6e

    if-ne v4, v1, :cond_9

    add-int/lit8 v1, v5, 0x1

    .line 2013
    .end local v5    # "index":I
    .local v1, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v1, 0x1

    .line 2014
    .end local v1    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x6c

    if-ne v1, v6, :cond_9

    add-int/lit8 v1, v5, 0x1

    .line 2015
    .end local v5    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_7

    .line 2016
    const/4 v5, 0x0

    .line 2017
    .local v5, "dateVal":Ljava/util/Date;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2018
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v19, v5

    move v5, v1

    move-object/from16 v1, v19

    goto :goto_5

    .line 2015
    .end local v5    # "dateVal":Ljava/util/Date;
    :cond_7
    move v5, v1

    goto :goto_2

    .line 2013
    :cond_8
    move v5, v1

    .line 2020
    .end local v1    # "index":I
    .local v5, "index":I
    :cond_9
    :goto_2
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2021
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2022
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2024
    return-object v9

    .line 1977
    :cond_a
    :goto_3
    const-wide/16 v12, 0x0

    .line 1979
    .local v12, "millis":J
    const/4 v14, 0x0

    .line 1980
    .local v14, "negative":Z
    if-ne v4, v1, :cond_b

    .line 1981
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1982
    const/4 v14, 0x1

    move v5, v1

    .line 1985
    .end local v1    # "index":I
    .restart local v5    # "index":I
    :cond_b
    if-lt v4, v11, :cond_f

    if-gt v4, v6, :cond_f

    .line 1986
    add-int/lit8 v1, v4, -0x30

    int-to-long v12, v1

    .line 1988
    :goto_4
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1989
    if-lt v4, v11, :cond_c

    if-gt v4, v6, :cond_c

    .line 1990
    const-wide/16 v15, 0xa

    mul-long v15, v15, v12

    add-int/lit8 v5, v4, -0x30

    move-wide/from16 v17, v12

    .end local v12    # "millis":J
    .local v17, "millis":J
    int-to-long v11, v5

    add-long v12, v15, v11

    move v5, v1

    const/16 v11, 0x30

    .end local v17    # "millis":J
    .restart local v12    # "millis":J
    goto :goto_4

    .line 1989
    :cond_c
    move-wide/from16 v17, v12

    .line 1992
    .end local v12    # "millis":J
    .restart local v17    # "millis":J
    if-eq v4, v8, :cond_d

    if-ne v4, v7, :cond_e

    .line 1993
    :cond_d
    add-int/lit8 v5, v1, -0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2000
    :cond_e
    move v5, v1

    move-wide/from16 v12, v17

    .end local v1    # "index":I
    .end local v17    # "millis":J
    .restart local v5    # "index":I
    .restart local v12    # "millis":J
    :cond_f
    const-wide/16 v15, 0x0

    cmp-long v1, v12, v15

    if-gez v1, :cond_10

    .line 2001
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2002
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2003
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2004
    return-object v9

    .line 2007
    :cond_10
    if-eqz v14, :cond_11

    .line 2008
    neg-long v12, v12

    .line 2011
    :cond_11
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 2012
    .end local v12    # "millis":J
    .end local v14    # "negative":Z
    .local v1, "dateVal":Ljava/util/Date;
    nop

    .line 2027
    :goto_5
    if-ne v4, v8, :cond_12

    .line 2028
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2029
    const/4 v6, 0x3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2030
    return-object v1

    .line 2033
    :cond_12
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2034
    if-ne v4, v8, :cond_13

    .line 2035
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2036
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 2037
    :cond_13
    if-ne v4, v7, :cond_14

    .line 2038
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2039
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 2040
    :cond_14
    const/16 v6, 0x7d

    if-ne v4, v6, :cond_15

    .line 2041
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2042
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 2043
    :cond_15
    const/16 v6, 0x1a

    if-ne v4, v6, :cond_16

    .line 2044
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2045
    const/16 v6, 0x14

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2052
    :goto_6
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2054
    return-object v1

    .line 2047
    :cond_16
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2048
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2049
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2050
    return-object v9
.end method

.method public scanDouble(C)D
    .locals 23
    .param p1, "seperator"    # C

    .line 1690
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1692
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1693
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1694
    .local v2, "chLocal":C
    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1695
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1696
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v3, v7

    .line 1699
    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1700
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 1701
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "offset":I
    .local v9, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v3, v9

    .line 1705
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_13

    const/16 v14, 0x39

    if-gt v2, v14, :cond_13

    .line 1706
    add-int/lit8 v15, v2, -0x30

    move/from16 v17, v2

    .end local v2    # "chLocal":C
    .local v17, "chLocal":C
    int-to-long v1, v15

    .line 1708
    .local v1, "intVal":J
    :goto_2
    add-int/lit8 v15, v3, 0x1

    .end local v3    # "offset":I
    .local v15, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1709
    .end local v17    # "chLocal":C
    .local v3, "chLocal":C
    const-wide/16 v17, 0xa

    if-lt v3, v13, :cond_4

    if-gt v3, v14, :cond_4

    .line 1710
    mul-long v17, v17, v1

    add-int/lit8 v9, v3, -0x30

    int-to-long v4, v9

    add-long v1, v17, v4

    .line 1711
    move/from16 v17, v3

    move v3, v15

    const/16 v4, 0x22

    goto :goto_2

    .line 1717
    :cond_4
    const-wide/16 v4, 0x1

    .line 1718
    .local v4, "power":J
    const/16 v9, 0x2e

    if-ne v3, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 1719
    .local v9, "small":Z
    :goto_3
    if-eqz v9, :cond_7

    .line 1720
    add-int/lit8 v19, v15, 0x1

    .end local v15    # "offset":I
    .local v19, "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1721
    if-lt v3, v13, :cond_6

    if-gt v3, v14, :cond_6

    .line 1722
    mul-long v20, v1, v17

    add-int/lit8 v15, v3, -0x30

    move/from16 v22, v8

    .end local v8    # "negative":Z
    .local v22, "negative":Z
    int-to-long v7, v15

    add-long v20, v20, v7

    .line 1723
    .end local v1    # "intVal":J
    .local v20, "intVal":J
    const-wide/16 v1, 0xa

    move-wide v4, v1

    move/from16 v7, v19

    move-wide/from16 v1, v20

    .line 1725
    .end local v19    # "offset":I
    .end local v20    # "intVal":J
    .restart local v1    # "intVal":J
    .restart local v7    # "offset":I
    :goto_4
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "offset":I
    .restart local v15    # "offset":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1726
    if-lt v3, v13, :cond_8

    if-gt v3, v14, :cond_8

    .line 1727
    mul-long v7, v1, v17

    add-int/lit8 v14, v3, -0x30

    int-to-long v13, v14

    add-long v1, v7, v13

    .line 1728
    mul-long v4, v4, v17

    .line 1729
    move v7, v15

    const/16 v13, 0x30

    const/16 v14, 0x39

    goto :goto_4

    .line 1721
    .end local v15    # "offset":I
    .end local v22    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v19    # "offset":I
    :cond_6
    move/from16 v22, v8

    .line 1735
    .end local v8    # "negative":Z
    .restart local v22    # "negative":Z
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1736
    return-wide v10

    .line 1719
    .end local v19    # "offset":I
    .end local v22    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v15    # "offset":I
    :cond_7
    move/from16 v22, v8

    .line 1740
    .end local v8    # "negative":Z
    .restart local v22    # "negative":Z
    :cond_8
    const/16 v7, 0x65

    if-eq v3, v7, :cond_a

    const/16 v7, 0x45

    if-ne v3, v7, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v16, 0x1

    :goto_6
    move/from16 v7, v16

    .line 1741
    .local v7, "exp":Z
    if-eqz v7, :cond_d

    .line 1742
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "offset":I
    .local v8, "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1743
    const/16 v13, 0x2b

    if-eq v3, v13, :cond_c

    const/16 v13, 0x2d

    if-ne v3, v13, :cond_b

    goto :goto_7

    :cond_b
    move v15, v8

    goto :goto_8

    .line 1744
    :cond_c
    :goto_7
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "offset":I
    .local v13, "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v13

    .line 1747
    .end local v13    # "offset":I
    .restart local v15    # "offset":I
    :goto_8
    const/16 v8, 0x30

    if-lt v3, v8, :cond_d

    const/16 v13, 0x39

    if-gt v3, v13, :cond_d

    .line 1748
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .local v14, "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v14

    goto :goto_8

    .line 1756
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_d
    if-eqz v6, :cond_f

    .line 1757
    const/16 v8, 0x22

    if-eq v3, v8, :cond_e

    .line 1758
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1759
    return-wide v10

    .line 1761
    :cond_e
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "offset":I
    .restart local v8    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1763
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    .line 1764
    .local v10, "start":I
    sub-int v11, v8, v10

    add-int/lit8 v11, v11, -0x2

    move v15, v8

    .local v11, "count":I
    goto :goto_9

    .line 1766
    .end local v8    # "offset":I
    .end local v10    # "start":I
    .end local v11    # "count":I
    .restart local v15    # "offset":I
    :cond_f
    const/4 v11, 0x1

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1767
    .restart local v10    # "start":I
    sub-int v8, v15, v10

    add-int/lit8 v11, v8, -0x1

    .line 1770
    .restart local v11    # "count":I
    :goto_9
    if-nez v7, :cond_10

    const/16 v8, 0x14

    if-ge v11, v8, :cond_10

    .line 1771
    long-to-double v13, v1

    move-wide/from16 v16, v1

    .end local v1    # "intVal":J
    .local v16, "intVal":J
    long-to-double v1, v4

    div-double/2addr v13, v1

    .line 1772
    .local v13, "value":D
    if-eqz v22, :cond_11

    .line 1773
    neg-double v13, v13

    goto :goto_a

    .line 1770
    .end local v13    # "value":D
    .end local v16    # "intVal":J
    .restart local v1    # "intVal":J
    :cond_10
    move-wide/from16 v16, v1

    .line 1776
    .end local v1    # "intVal":J
    .restart local v16    # "intVal":J
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 1779
    .end local v1    # "text":Ljava/lang/String;
    .end local v4    # "power":J
    .end local v7    # "exp":Z
    .end local v9    # "small":Z
    .end local v10    # "start":I
    .end local v11    # "count":I
    .end local v16    # "intVal":J
    .restart local v13    # "value":D
    :cond_11
    :goto_a
    nop

    .line 1817
    move/from16 v1, p1

    if-ne v3, v1, :cond_12

    .line 1818
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1819
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1820
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1821
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1822
    return-wide v13

    .line 1824
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1825
    return-wide v13

    .line 1705
    .end local v13    # "value":D
    .end local v15    # "offset":I
    .end local v22    # "negative":Z
    .restart local v2    # "chLocal":C
    .local v3, "offset":I
    .local v8, "negative":Z
    :cond_13
    move/from16 v1, p1

    move/from16 v17, v2

    move/from16 v22, v8

    .line 1779
    .end local v2    # "chLocal":C
    .end local v8    # "negative":Z
    .restart local v17    # "chLocal":C
    .restart local v22    # "negative":Z
    const/16 v2, 0x6e

    move/from16 v4, v17

    .end local v17    # "chLocal":C
    .local v4, "chLocal":C
    if-ne v4, v2, :cond_1a

    add-int/lit8 v2, v3, 0x1

    .line 1780
    .end local v3    # "offset":I
    .local v2, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_19

    add-int/lit8 v3, v2, 0x1

    .line 1781
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v5, 0x6c

    if-ne v2, v5, :cond_1a

    add-int/lit8 v2, v3, 0x1

    .line 1782
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_18

    .line 1783
    const/4 v3, 0x5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1784
    const-wide/16 v7, 0x0

    .line 1785
    .local v7, "value":D
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1787
    .end local v4    # "chLocal":C
    .local v2, "chLocal":C
    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v2, v4, :cond_14

    .line 1788
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .local v4, "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v5, v4

    .line 1792
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_14
    :goto_b
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_15

    .line 1793
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1794
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1795
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1796
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1797
    return-wide v7

    .line 1798
    :cond_15
    const/16 v4, 0x10

    const/16 v9, 0x5d

    if-ne v2, v9, :cond_16

    .line 1799
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1800
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1801
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1802
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1803
    return-wide v7

    .line 1804
    :cond_16
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1805
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "offset":I
    .local v9, "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1806
    move v5, v9

    goto :goto_b

    .line 1810
    .end local v9    # "offset":I
    .restart local v5    # "offset":I
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1811
    return-wide v10

    .line 1782
    .end local v5    # "offset":I
    .end local v7    # "value":D
    .local v2, "offset":I
    .local v4, "chLocal":C
    :cond_18
    move v3, v2

    goto :goto_c

    .line 1780
    :cond_19
    move v3, v2

    .line 1813
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1a
    :goto_c
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1814
    return-wide v10
.end method

.method public scanFieldBoolean([C)Z
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1453
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1455
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1457
    return v0

    .line 1460
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1461
    .local v1, "startPos":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 1463
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1465
    .local v2, "ch":C
    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1466
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 1467
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v3, v7

    .line 1471
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_2
    const/16 v7, 0x74

    const/16 v8, 0x65

    const/4 v9, -0x1

    if-ne v2, v7, :cond_8

    .line 1472
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v10, 0x72

    if-eq v3, v10, :cond_3

    .line 1473
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1474
    return v0

    .line 1476
    :cond_3
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v10, 0x75

    if-eq v7, v10, :cond_4

    .line 1477
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1478
    return v0

    .line 1480
    :cond_4
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_5

    .line 1481
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1482
    return v0

    .line 1485
    :cond_5
    if-eqz v6, :cond_7

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_6

    .line 1486
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1487
    return v0

    .line 1485
    :cond_6
    move v7, v3

    .line 1490
    .end local v3    # "index":I
    .restart local v7    # "index":I
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1491
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1492
    const/4 v3, 0x1

    .local v3, "value":Z
    goto/16 :goto_1

    .line 1493
    .end local v7    # "index":I
    .local v3, "index":I
    :cond_8
    const/16 v7, 0x66

    if-ne v2, v7, :cond_f

    .line 1494
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v10, 0x61

    if-eq v3, v10, :cond_9

    .line 1495
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1496
    return v0

    .line 1498
    :cond_9
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v10, 0x6c

    if-eq v7, v10, :cond_a

    .line 1499
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1500
    return v0

    .line 1502
    :cond_a
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v10, 0x73

    if-eq v3, v10, :cond_b

    .line 1503
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1504
    return v0

    .line 1506
    :cond_b
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_c

    .line 1507
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1508
    return v0

    .line 1511
    :cond_c
    if-eqz v6, :cond_d

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_e

    .line 1512
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1513
    return v0

    .line 1511
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_d
    move v7, v3

    .line 1516
    .end local v3    # "index":I
    .restart local v7    # "index":I
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1517
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1518
    const/4 v3, 0x0

    .local v3, "value":Z
    goto :goto_1

    .line 1519
    .end local v7    # "index":I
    .local v3, "index":I
    :cond_f
    const/16 v7, 0x31

    if-ne v2, v7, :cond_12

    .line 1520
    if-eqz v6, :cond_11

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_10

    .line 1521
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1522
    return v0

    .line 1520
    :cond_10
    move v3, v7

    .line 1525
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_11
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1526
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1527
    const/4 v4, 0x1

    move v7, v3

    move v3, v4

    .local v4, "value":Z
    goto :goto_1

    .line 1528
    .end local v4    # "value":Z
    :cond_12
    const/16 v7, 0x30

    if-ne v2, v7, :cond_1d

    .line 1529
    if-eqz v6, :cond_14

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_13

    .line 1530
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1531
    return v0

    .line 1529
    :cond_13
    move v3, v7

    .line 1534
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_14
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1535
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1536
    const/4 v4, 0x0

    move v7, v3

    move v3, v4

    .line 1543
    .local v3, "value":Z
    .restart local v7    # "index":I
    :goto_1
    const/16 v4, 0x10

    const/16 v8, 0x2c

    if-ne v2, v8, :cond_15

    .line 1544
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1545
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1546
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1547
    goto :goto_4

    .line 1548
    :cond_15
    const/16 v10, 0x7d

    if-ne v2, v10, :cond_1b

    .line 1549
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1551
    :goto_2
    if-ne v2, v8, :cond_16

    .line 1552
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1553
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1554
    :cond_16
    const/16 v11, 0x5d

    if-ne v2, v11, :cond_17

    .line 1555
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1556
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1557
    :cond_17
    if-ne v2, v10, :cond_18

    .line 1558
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1559
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1560
    :cond_18
    const/16 v11, 0x1a

    if-ne v2, v11, :cond_19

    .line 1561
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1571
    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1572
    nop

    .line 1583
    :goto_4
    return v3

    .line 1562
    :cond_19
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 1563
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1564
    goto :goto_2

    .line 1566
    :cond_1a
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1567
    return v0

    .line 1573
    :cond_1b
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1574
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto/16 :goto_1

    .line 1576
    :cond_1c
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1577
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1578
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1579
    return v0

    .line 1538
    .end local v7    # "index":I
    .local v3, "index":I
    :cond_1d
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1539
    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 20
    .param p1, "fieldName"    # [C

    .line 983
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 984
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 985
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 987
    .local v4, "startChar":C
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 988
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 989
    return-object v6

    .line 992
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v7, v1

    add-int/2addr v5, v7

    .line 994
    .local v5, "index":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "index":I
    .local v7, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 997
    .local v5, "ch":C
    const/16 v8, 0x22

    const/16 v9, 0x7d

    const/16 v10, 0x2c

    const/4 v11, -0x1

    if-ne v5, v8, :cond_6

    .line 998
    move v12, v7

    .line 999
    .local v12, "startIndex":I
    invoke-virtual {v0, v8, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v8

    .line 1000
    .local v8, "endIndex":I
    if-eq v8, v11, :cond_5

    .line 1004
    sub-int v13, v8, v12

    .line 1005
    .local v13, "rest":I
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1006
    invoke-direct {v0, v2, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1007
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1013
    .local v2, "dateVal":Ljava/util/Date;
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1014
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1017
    :goto_0
    if-eq v5, v10, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    .line 1021
    :cond_1
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1022
    add-int/lit8 v8, v8, 0x1

    .line 1023
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    goto :goto_0

    .line 1025
    :cond_2
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1027
    return-object v6

    .line 1018
    :cond_3
    :goto_1
    add-int/lit8 v14, v8, 0x1

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1019
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1020
    nop

    .line 1030
    .end local v8    # "endIndex":I
    .end local v12    # "startIndex":I
    .end local v13    # "rest":I
    goto/16 :goto_4

    .line 1009
    .end local v2    # "dateVal":Ljava/util/Date;
    .restart local v8    # "endIndex":I
    .restart local v12    # "startIndex":I
    .restart local v13    # "rest":I
    :cond_4
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1010
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1011
    return-object v6

    .line 1001
    .end local v13    # "rest":I
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed str"

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1030
    .end local v8    # "endIndex":I
    .end local v12    # "startIndex":I
    :cond_6
    const/16 v2, 0x2d

    const/16 v8, 0x39

    const/16 v12, 0x30

    if-eq v5, v2, :cond_8

    if-lt v5, v12, :cond_7

    if-gt v5, v8, :cond_7

    goto :goto_2

    .line 1065
    :cond_7
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1067
    return-object v6

    .line 1031
    :cond_8
    :goto_2
    const-wide/16 v13, 0x0

    .line 1033
    .local v13, "millis":J
    const/4 v15, 0x0

    .line 1034
    .local v15, "negative":Z
    if-ne v5, v2, :cond_9

    .line 1035
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .local v2, "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1036
    const/4 v15, 0x1

    move v7, v2

    .line 1039
    .end local v2    # "index":I
    .restart local v7    # "index":I
    :cond_9
    if-lt v5, v12, :cond_d

    if-gt v5, v8, :cond_d

    .line 1040
    add-int/lit8 v2, v5, -0x30

    int-to-long v13, v2

    .line 1042
    :goto_3
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1043
    if-lt v5, v12, :cond_a

    if-gt v5, v8, :cond_a

    .line 1044
    const-wide/16 v16, 0xa

    mul-long v16, v16, v13

    add-int/lit8 v7, v5, -0x30

    move-wide/from16 v18, v13

    .end local v13    # "millis":J
    .local v18, "millis":J
    int-to-long v12, v7

    add-long v13, v16, v12

    move v7, v2

    const/16 v12, 0x30

    .end local v18    # "millis":J
    .restart local v13    # "millis":J
    goto :goto_3

    .line 1043
    :cond_a
    move-wide/from16 v18, v13

    .line 1046
    .end local v13    # "millis":J
    .restart local v18    # "millis":J
    if-eq v5, v10, :cond_b

    if-ne v5, v9, :cond_c

    .line 1047
    :cond_b
    add-int/lit8 v7, v2, -0x1

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1054
    :cond_c
    move v7, v2

    move-wide/from16 v13, v18

    .end local v2    # "index":I
    .end local v18    # "millis":J
    .restart local v7    # "index":I
    .restart local v13    # "millis":J
    :cond_d
    const-wide/16 v16, 0x0

    cmp-long v2, v13, v16

    if-gez v2, :cond_e

    .line 1055
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1056
    return-object v6

    .line 1059
    :cond_e
    if-eqz v15, :cond_f

    .line 1060
    neg-long v13, v13

    .line 1063
    :cond_f
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 1064
    .end local v13    # "millis":J
    .end local v15    # "negative":Z
    .local v2, "dateVal":Ljava/util/Date;
    nop

    .line 1070
    :goto_4
    const/16 v8, 0x10

    if-ne v5, v10, :cond_10

    .line 1071
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1072
    const/4 v6, 0x3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1073
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1074
    return-object v2

    .line 1077
    :cond_10
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1078
    if-ne v5, v10, :cond_11

    .line 1079
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1080
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 1081
    :cond_11
    const/16 v8, 0x5d

    if-ne v5, v8, :cond_12

    .line 1082
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1083
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 1084
    :cond_12
    if-ne v5, v9, :cond_13

    .line 1085
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1086
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 1087
    :cond_13
    const/16 v8, 0x1a

    if-ne v5, v8, :cond_14

    .line 1088
    const/16 v6, 0x14

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1095
    :goto_5
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1097
    return-object v2

    .line 1090
    :cond_14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1091
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1092
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1093
    return-object v6
.end method

.method public scanFieldInt([C)I
    .locals 17
    .param p1, "fieldName"    # [C

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 765
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 766
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 768
    .local v4, "startChar":C
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 769
    const/4 v5, -0x2

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 770
    return v2

    .line 773
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v6, v1

    add-int/2addr v5, v6

    .line 775
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 777
    .local v5, "ch":C
    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ne v5, v7, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 779
    .local v9, "quote":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 780
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "index":I
    .local v10, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v6, v10

    .line 783
    .end local v10    # "index":I
    .restart local v6    # "index":I
    :cond_2
    const/16 v10, 0x2d

    if-ne v5, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 784
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 785
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "index":I
    .local v11, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v6, v11

    .line 789
    .end local v11    # "index":I
    .restart local v6    # "index":I
    :cond_4
    const/16 v11, 0x30

    const/4 v12, -0x1

    if-lt v5, v11, :cond_16

    const/16 v13, 0x39

    if-gt v5, v13, :cond_16

    .line 790
    add-int/lit8 v14, v5, -0x30

    .line 792
    .local v14, "value":I
    :goto_2
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "index":I
    .local v15, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 793
    if-lt v5, v11, :cond_5

    if-gt v5, v13, :cond_5

    .line 794
    mul-int/lit8 v6, v14, 0xa

    add-int/lit8 v16, v5, -0x30

    add-int v14, v6, v16

    move v6, v15

    goto :goto_2

    .line 795
    :cond_5
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_6

    .line 796
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 797
    return v2

    .line 803
    :cond_6
    if-gez v14, :cond_7

    .line 804
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 805
    return v2

    .line 808
    :cond_7
    if-eqz v9, :cond_9

    .line 809
    if-eq v5, v7, :cond_8

    .line 810
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 811
    return v2

    .line 813
    :cond_8
    add-int/lit8 v6, v15, 0x1

    .end local v15    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v15, v6

    .line 818
    .end local v6    # "index":I
    .restart local v15    # "index":I
    :cond_9
    :goto_3
    const/16 v6, 0x7d

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_c

    if-ne v5, v6, :cond_a

    goto :goto_4

    .line 821
    :cond_a
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 822
    add-int/lit8 v6, v15, 0x1

    .end local v15    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 823
    move v15, v6

    goto :goto_3

    .line 825
    .end local v6    # "index":I
    .restart local v15    # "index":I
    :cond_b
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 826
    return v2

    .line 819
    :cond_c
    :goto_4
    add-int/lit8 v11, v15, -0x1

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 820
    nop

    .line 834
    const/16 v11, 0x10

    if-ne v5, v7, :cond_e

    .line 835
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 836
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 837
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 838
    if-eqz v10, :cond_d

    neg-int v2, v14

    goto :goto_5

    :cond_d
    move v2, v14

    :goto_5
    return v2

    .line 841
    :cond_e
    if-ne v5, v6, :cond_14

    .line 842
    add-int/lit8 v13, v15, -0x1

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 843
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v13, v8

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 845
    :goto_6
    if-ne v5, v7, :cond_f

    .line 846
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 847
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 848
    goto :goto_7

    .line 849
    :cond_f
    const/16 v13, 0x5d

    if-ne v5, v13, :cond_10

    .line 850
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 851
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 852
    goto :goto_7

    .line 853
    :cond_10
    if-ne v5, v6, :cond_11

    .line 854
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 855
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 856
    goto :goto_7

    .line 857
    :cond_11
    const/16 v13, 0x1a

    if-ne v5, v13, :cond_12

    .line 858
    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 859
    nop

    .line 870
    :goto_7
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_8

    .line 860
    :cond_12
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 861
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v13, v8

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 862
    goto :goto_6

    .line 864
    :cond_13
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 865
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 866
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 867
    return v2

    .line 873
    :cond_14
    :goto_8
    if-eqz v10, :cond_15

    neg-int v2, v14

    goto :goto_9

    :cond_15
    move v2, v14

    :goto_9
    return v2

    .line 830
    .end local v14    # "value":I
    .end local v15    # "index":I
    .restart local v6    # "index":I
    :cond_16
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 831
    return v2
.end method

.method public scanFieldLong([C)J
    .locals 19
    .param p1, "fieldName"    # [C

    .line 1339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1340
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1341
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1343
    .local v4, "startChar":C
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    .line 1344
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1345
    return-wide v6

    .line 1348
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, v1

    add-int/2addr v5, v8

    .line 1350
    .local v5, "index":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index":I
    .local v8, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1352
    .local v5, "ch":C
    const/16 v9, 0x22

    if-ne v5, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 1353
    .local v11, "quote":Z
    :goto_0
    if-eqz v11, :cond_2

    .line 1354
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "index":I
    .local v12, "index":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v8, v12

    .line 1357
    .end local v12    # "index":I
    .restart local v8    # "index":I
    :cond_2
    const/4 v12, 0x0

    .line 1358
    .local v12, "negative":Z
    const/16 v13, 0x2d

    if-ne v5, v13, :cond_3

    .line 1359
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "index":I
    .local v13, "index":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1360
    const/4 v12, 0x1

    move v8, v13

    .line 1364
    .end local v13    # "index":I
    .restart local v8    # "index":I
    :cond_3
    const/16 v13, 0x30

    const/4 v14, -0x1

    if-lt v5, v13, :cond_17

    const/16 v15, 0x39

    if-gt v5, v15, :cond_17

    .line 1365
    add-int/lit8 v2, v5, -0x30

    int-to-long v9, v2

    .line 1367
    .local v9, "value":J
    :goto_1
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .local v2, "index":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1368
    if-lt v5, v13, :cond_4

    if-gt v5, v15, :cond_4

    .line 1369
    const-wide/16 v17, 0xa

    mul-long v17, v17, v9

    add-int/lit8 v8, v5, -0x30

    int-to-long v6, v8

    add-long v9, v17, v6

    move v8, v2

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 1370
    :cond_4
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5

    .line 1371
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1372
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1374
    :cond_5
    const-wide/16 v6, 0x0

    if-eqz v11, :cond_7

    .line 1375
    const/16 v8, 0x22

    if-eq v5, v8, :cond_6

    .line 1376
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1377
    return-wide v6

    .line 1379
    :cond_6
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v2, v6

    .line 1383
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_7
    const/16 v6, 0x7d

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_8

    if-ne v5, v6, :cond_9

    .line 1384
    :cond_8
    add-int/lit8 v8, v2, -0x1

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1390
    :cond_9
    const-wide/16 v17, 0x0

    cmp-long v8, v9, v17

    if-gez v8, :cond_b

    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v8, v9, v17

    if-nez v8, :cond_a

    if-eqz v12, :cond_a

    goto :goto_2

    :cond_a
    const/16 v16, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/16 v16, 0x1

    :goto_3
    move/from16 v8, v16

    .line 1391
    .local v8, "valid":Z
    if-nez v8, :cond_c

    .line 1392
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1393
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1394
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1395
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1397
    .end local v8    # "valid":Z
    :cond_c
    nop

    .line 1405
    :goto_4
    const/16 v8, 0x10

    if-ne v5, v7, :cond_e

    .line 1406
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1407
    const/4 v6, 0x3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1408
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1409
    if-eqz v12, :cond_d

    neg-long v6, v9

    goto :goto_5

    :cond_d
    move-wide v6, v9

    :goto_5
    return-wide v6

    .line 1410
    :cond_e
    if-ne v5, v6, :cond_15

    .line 1411
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1413
    :goto_6
    if-ne v5, v7, :cond_f

    .line 1414
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1415
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v15

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1416
    goto :goto_7

    .line 1417
    :cond_f
    const/16 v13, 0x5d

    if-ne v5, v13, :cond_10

    .line 1418
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1419
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1420
    goto :goto_7

    .line 1421
    :cond_10
    if-ne v5, v6, :cond_11

    .line 1422
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1423
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1424
    goto :goto_7

    .line 1425
    :cond_11
    const/16 v13, 0x1a

    if-ne v5, v13, :cond_13

    .line 1426
    const/16 v6, 0x14

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1427
    nop

    .line 1437
    :goto_7
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1438
    nop

    .line 1449
    if-eqz v12, :cond_12

    neg-long v6, v9

    goto :goto_8

    :cond_12
    move-wide v6, v9

    :goto_8
    return-wide v6

    .line 1428
    :cond_13
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1429
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 1431
    :cond_14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1432
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1433
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1434
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1439
    :cond_15
    const/4 v15, 0x1

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1440
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1441
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1442
    move v2, v8

    goto/16 :goto_4

    .line 1444
    .end local v8    # "index":I
    .restart local v2    # "index":I
    :cond_16
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1445
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1398
    .end local v2    # "index":I
    .end local v9    # "value":J
    .restart local v8    # "index":I
    :cond_17
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1399
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1400
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1401
    const-wide/16 v6, 0x0

    return-wide v6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 13
    .param p1, "fieldName"    # [C

    .line 877
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 878
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 879
    .local v0, "startPos":I
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 882
    .local v1, "startChar":C
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 883
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 885
    goto :goto_0

    .line 887
    :cond_0
    const/4 v2, -0x2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 888
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 894
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 896
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 897
    .local v2, "ch":C
    const/16 v4, 0x22

    const/4 v5, -0x1

    if-eq v2, v4, :cond_2

    .line 898
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 900
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 905
    :cond_2
    move v6, v3

    .line 906
    .local v6, "startIndex":I
    invoke-virtual {p0, v4, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v7

    .line 907
    .local v7, "endIndex":I
    if-eq v7, v5, :cond_e

    .line 911
    sub-int v8, v7, v6

    invoke-virtual {p0, v6, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 912
    .local v8, "stringVal":Ljava/lang/String;
    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v5, :cond_5

    .line 914
    :goto_1
    const/4 v10, 0x0

    .line 915
    .local v10, "slashCount":I
    add-int/lit8 v11, v7, -0x1

    .local v11, "i":I
    :goto_2
    if-ltz v11, :cond_3

    .line 916
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_3

    .line 917
    add-int/lit8 v10, v10, 0x1

    .line 915
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 922
    .end local v11    # "i":I
    :cond_3
    rem-int/lit8 v11, v10, 0x2

    if-nez v11, :cond_4

    .line 923
    nop

    .line 928
    .end local v10    # "slashCount":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v9, p1

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x1

    sub-int v4, v7, v4

    .line 929
    .local v4, "chars_len":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v10, p1

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v9

    .line 931
    .local v9, "chars":[C
    invoke-static {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 925
    .end local v4    # "chars_len":I
    .end local v9    # "chars":[C
    .restart local v10    # "slashCount":I
    :cond_4
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p0, v4, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v7

    .line 926
    .end local v10    # "slashCount":I
    goto :goto_1

    .line 934
    :cond_5
    :goto_3
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 937
    :goto_4
    const/16 v4, 0x7d

    const/16 v9, 0x2c

    if-eq v2, v9, :cond_8

    if-ne v2, v4, :cond_6

    goto :goto_5

    .line 942
    :cond_6
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 943
    add-int/lit8 v7, v7, 0x1

    .line 944
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_4

    .line 946
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 948
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 938
    :cond_8
    :goto_5
    add-int/lit8 v10, v7, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 939
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 940
    move-object v10, v8

    .line 941
    .local v10, "strVal":Ljava/lang/String;
    nop

    .line 953
    .end local v6    # "startIndex":I
    .end local v7    # "endIndex":I
    .end local v8    # "stringVal":Ljava/lang/String;
    if-ne v2, v9, :cond_9

    .line 954
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 955
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 956
    return-object v10

    .line 959
    :cond_9
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 960
    if-ne v2, v9, :cond_a

    .line 961
    const/16 v4, 0x10

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 962
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 963
    :cond_a
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_b

    .line 964
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 965
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 966
    :cond_b
    if-ne v2, v4, :cond_c

    .line 967
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 968
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 969
    :cond_c
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_d

    .line 970
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 977
    :goto_6
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 979
    return-object v10

    .line 972
    :cond_d
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 973
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 974
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 975
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 908
    .end local v10    # "strVal":Ljava/lang/String;
    .restart local v6    # "startIndex":I
    .restart local v7    # "endIndex":I
    :cond_e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "unclosed str"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 17
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1189
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1191
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v2, v3, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1192
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1193
    return-object v3

    .line 1196
    :cond_0
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v4

    .line 1210
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v6, v1

    add-int/2addr v5, v6

    .line 1212
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1214
    .local v5, "ch":C
    const/16 v7, 0x5b

    const-string v8, "ull"

    const/4 v12, -0x1

    if-ne v5, v7, :cond_a

    .line 1215
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1218
    :goto_0
    const/16 v6, 0x22

    if-ne v5, v6, :cond_5

    .line 1219
    move v13, v7

    .line 1220
    .local v13, "startIndex":I
    invoke-virtual {v0, v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v14

    .line 1221
    .local v14, "endIndex":I
    if-eq v14, v12, :cond_4

    .line 1225
    sub-int v15, v14, v13

    invoke-virtual {v0, v13, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v15

    .line 1226
    .local v15, "stringVal":Ljava/lang/String;
    const/16 v11, 0x5c

    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v12, :cond_3

    .line 1228
    :goto_1
    const/4 v9, 0x0

    .line 1229
    .local v9, "slashCount":I
    add-int/lit8 v16, v14, -0x1

    move/from16 v12, v16

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_1

    .line 1230
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_1

    .line 1231
    add-int/lit8 v9, v9, 0x1

    .line 1229
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 1236
    .end local v12    # "i":I
    :cond_1
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_2

    .line 1237
    nop

    .line 1242
    .end local v9    # "slashCount":I
    sub-int v6, v14, v13

    .line 1243
    .local v6, "chars_len":I
    invoke-virtual {v0, v13, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v9

    .line 1245
    .local v9, "chars":[C
    invoke-static {v9, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 1239
    .end local v6    # "chars_len":I
    .local v9, "slashCount":I
    :cond_2
    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v0, v6, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v14

    .line 1240
    .end local v9    # "slashCount":I
    const/4 v12, -0x1

    goto :goto_1

    .line 1248
    :cond_3
    :goto_3
    add-int/lit8 v6, v14, 0x1

    .line 1249
    .end local v7    # "index":I
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1251
    invoke-interface {v4, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1252
    .end local v13    # "startIndex":I
    .end local v14    # "endIndex":I
    .end local v15    # "stringVal":Ljava/lang/String;
    goto :goto_4

    .line 1222
    .restart local v13    # "startIndex":I
    .restart local v14    # "endIndex":I
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed str"

    invoke-direct {v3, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1252
    .end local v13    # "startIndex":I
    .end local v14    # "endIndex":I
    :cond_5
    const/16 v6, 0x6e

    if-ne v5, v6, :cond_8

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1253
    add-int/lit8 v7, v7, 0x3

    .line 1254
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1255
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v7, v6

    .line 1264
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_4
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_6

    .line 1265
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1266
    move v7, v6

    const/4 v12, -0x1

    goto :goto_0

    .line 1269
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_6
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_7

    .line 1270
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1271
    :goto_5
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1272
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v6, v7

    goto :goto_5

    .line 1277
    :cond_7
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1278
    return-object v3

    .line 1256
    :cond_8
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_9

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 1257
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1258
    goto :goto_6

    .line 1260
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_9
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1261
    return-object v3

    .line 1280
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_a
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1281
    const/4 v7, 0x3

    add-int/2addr v6, v7

    .line 1282
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1283
    const/4 v4, 0x0

    move v6, v7

    .line 1289
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_b
    :goto_6
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1290
    const/16 v7, 0x2c

    if-ne v5, v7, :cond_c

    .line 1291
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1292
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1293
    return-object v4

    .line 1294
    :cond_c
    const/16 v7, 0x7d

    if-ne v5, v7, :cond_13

    .line 1295
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1297
    :goto_7
    const/16 v8, 0x2c

    if-ne v5, v8, :cond_d

    .line 1298
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1299
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1300
    goto :goto_8

    .line 1301
    :cond_d
    const/16 v9, 0x5d

    if-ne v5, v9, :cond_e

    .line 1302
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1303
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1304
    goto :goto_8

    .line 1305
    :cond_e
    if-ne v5, v7, :cond_f

    .line 1306
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1307
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1308
    goto :goto_8

    .line 1309
    :cond_f
    const/16 v10, 0x1a

    if-ne v5, v10, :cond_10

    .line 1310
    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1311
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1312
    nop

    .line 1329
    :goto_8
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1335
    return-object v4

    .line 1314
    :cond_10
    const/4 v10, 0x0

    .line 1315
    .local v10, "space":Z
    :goto_9
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1316
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "index":I
    .local v11, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1317
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1318
    const/4 v10, 0x1

    move v6, v11

    goto :goto_9

    .line 1320
    .end local v11    # "index":I
    .restart local v6    # "index":I
    :cond_11
    if-eqz v10, :cond_12

    .line 1321
    goto :goto_7

    .line 1324
    :cond_12
    const/4 v7, -0x1

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1325
    return-object v3

    .line 1331
    .end local v10    # "space":Z
    :cond_13
    const/4 v7, -0x1

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1332
    return-object v3

    .line 1285
    :cond_14
    const/4 v7, -0x1

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1286
    return-object v3
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 16
    .param p1, "fieldName"    # [C
    .param p2, "argTypesCount"    # I
    .param p3, "typeSymbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 2071
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2072
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2074
    .local v4, "starChar":C
    :goto_0
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2080
    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    .line 2081
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2082
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2083
    const/4 v5, -0x2

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2084
    return-object v7

    .line 2087
    :cond_1
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v9, v1

    add-int/2addr v8, v9

    .line 2088
    .local v8, "offset":I
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "offset":I
    .local v10, "offset":I
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2089
    .local v8, "ch":C
    :goto_1
    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2090
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .local v11, "offset":I
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v10, v11

    goto :goto_1

    .line 2093
    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :cond_2
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_3

    .line 2094
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .restart local v11    # "offset":I
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2100
    :goto_2
    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2101
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v11, v10

    goto :goto_2

    .line 2096
    :cond_3
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2097
    return-object v7

    .line 2104
    .end local v8    # "ch":C
    .end local v10    # "offset":I
    :cond_4
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v8, 0x1

    .line 2105
    .restart local v11    # "offset":I
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2108
    .restart local v8    # "ch":C
    :cond_5
    const/16 v9, 0x5b

    const/4 v10, 0x4

    if-ne v8, v9, :cond_f

    .line 2109
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2110
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2120
    if-ltz v2, :cond_6

    new-array v9, v2, [Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-array v9, v10, [Ljava/lang/String;

    .line 2121
    .local v9, "types":[Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    .line 2123
    .local v10, "typeIndex":I
    :goto_4
    iget-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2124
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_4

    .line 2127
    :cond_7
    iget-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x22

    if-eq v12, v13, :cond_8

    .line 2128
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2129
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2130
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2131
    return-object v7

    .line 2134
    :cond_8
    move-object/from16 v12, p3

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v13

    .line 2135
    .local v13, "type":Ljava/lang/String;
    array-length v14, v9

    if-ne v10, v14, :cond_9

    .line 2136
    array-length v14, v9

    array-length v15, v9

    shr-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    .line 2137
    .local v14, "newCapacity":I
    new-array v15, v14, [Ljava/lang/String;

    .line 2138
    .local v15, "array":[Ljava/lang/String;
    array-length v7, v9

    invoke-static {v9, v6, v15, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2139
    move-object v7, v15

    move-object v9, v7

    .line 2141
    .end local v14    # "newCapacity":I
    .end local v15    # "array":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "typeIndex":I
    .local v7, "typeIndex":I
    aput-object v13, v9, v10

    .line 2142
    :goto_5
    iget-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_5

    .line 2145
    :cond_a
    iget-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_b

    .line 2146
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2147
    move v10, v7

    const/4 v7, 0x0

    goto :goto_4

    .line 2151
    .end local v13    # "type":Ljava/lang/String;
    :cond_b
    array-length v10, v9

    if-eq v10, v7, :cond_c

    .line 2152
    new-array v10, v7, [Ljava/lang/String;

    .line 2153
    .local v10, "array":[Ljava/lang/String;
    invoke-static {v9, v6, v10, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2154
    move-object v9, v10

    .line 2157
    .end local v10    # "array":[Ljava/lang/String;
    :cond_c
    :goto_6
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_6

    .line 2161
    :cond_d
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x5d

    if-ne v6, v10, :cond_e

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2170
    return-object v9

    .line 2164
    :cond_e
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2165
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2166
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2167
    const/4 v5, 0x0

    return-object v5

    .line 2111
    .end local v7    # "typeIndex":I
    .end local v9    # "types":[Ljava/lang/String;
    :cond_f
    move-object/from16 v12, p3

    const/16 v6, 0x6e

    if-ne v8, v6, :cond_10

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    const-string v9, "ull"

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2112
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2113
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2114
    const/4 v6, 0x0

    return-object v6

    .line 2111
    :cond_10
    const/4 v6, 0x0

    .line 2116
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2117
    return-object v6
.end method

.method public scanFieldSymbol([C)J
    .locals 11
    .param p1, "fieldName"    # [C

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1105
    return-wide v1

    .line 1108
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    .line 1110
    .local v0, "index":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1111
    .local v0, "ch":C
    const/16 v4, 0x22

    const/4 v5, -0x1

    if-eq v0, v4, :cond_1

    .line 1112
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1113
    return-wide v1

    .line 1116
    :cond_1
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1118
    .local v6, "hash":J
    :goto_0
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1119
    if-ne v0, v4, :cond_9

    .line 1120
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1121
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v0, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1122
    nop

    .line 1133
    :goto_1
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    .line 1134
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1135
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1136
    return-wide v6

    .line 1137
    :cond_2
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_7

    .line 1138
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 1141
    if-ne v0, v3, :cond_3

    .line 1142
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1143
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1144
    :cond_3
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_4

    .line 1145
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1146
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1147
    :cond_4
    if-ne v0, v4, :cond_5

    .line 1148
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1149
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1150
    :cond_5
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_6

    .line 1151
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1156
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1157
    nop

    .line 1167
    return-wide v6

    .line 1153
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1154
    return-wide v1

    .line 1158
    :cond_7
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1159
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1160
    goto :goto_1

    .line 1162
    :cond_8
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1163
    return-wide v1

    .line 1123
    :cond_9
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v8, v3, :cond_a

    .line 1124
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1125
    return-wide v1

    .line 1128
    :cond_a
    int-to-long v9, v0

    xor-long/2addr v6, v9

    .line 1129
    const-wide v9, 0x100000001b3L

    mul-long v6, v6, v9

    move v3, v8

    goto/16 :goto_0
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2
    .param p1, "strict"    # Z

    .line 209
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int/2addr v0, v1

    .line 210
    .local v0, "rest":I
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    return v1
.end method

.method public final scanInt(C)I
    .locals 13
    .param p1, "expectNext"    # C

    .line 1587
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1589
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1590
    .local v1, "offset":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1592
    .local v1, "chLocal":C
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1593
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v2, v3

    goto :goto_0

    .line 1596
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_0
    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 1598
    .local v5, "quote":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 1599
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v2, v6

    .line 1602
    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    :cond_2
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1603
    .local v4, "negative":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 1604
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v2, v6

    .line 1608
    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    const/16 v6, 0x10

    const/16 v7, 0x30

    const/4 v8, -0x1

    if-lt v1, v7, :cond_e

    const/16 v9, 0x39

    if-gt v1, v9, :cond_e

    .line 1609
    add-int/lit8 v10, v1, -0x30

    .line 1611
    .local v10, "value":I
    :goto_3
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "offset":I
    .local v11, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1612
    if-lt v1, v7, :cond_5

    if-gt v1, v9, :cond_5

    .line 1613
    mul-int/lit8 v2, v10, 0xa

    add-int/lit8 v12, v1, -0x30

    add-int v10, v2, v12

    move v2, v11

    goto :goto_3

    .line 1614
    :cond_5
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_6

    .line 1615
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1616
    return v0

    .line 1618
    :cond_6
    if-eqz v5, :cond_8

    .line 1619
    if-eq v1, v3, :cond_7

    .line 1620
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1621
    return v0

    .line 1623
    :cond_7
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v11, v2

    .line 1629
    .end local v2    # "offset":I
    .restart local v11    # "offset":I
    :cond_8
    if-gez v10, :cond_9

    .line 1630
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1631
    return v0

    .line 1672
    :cond_9
    :goto_4
    if-ne v1, p1, :cond_b

    .line 1673
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1674
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1675
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1676
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1677
    if-eqz v4, :cond_a

    neg-int v0, v10

    goto :goto_5

    :cond_a
    move v0, v10

    :goto_5
    return v0

    .line 1679
    :cond_b
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1680
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "offset":I
    .local v0, "offset":I
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1681
    move v11, v0

    goto :goto_4

    .line 1683
    .end local v0    # "offset":I
    .restart local v11    # "offset":I
    :cond_c
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1684
    if-eqz v4, :cond_d

    neg-int v0, v10

    goto :goto_6

    :cond_d
    move v0, v10

    :goto_6
    return v0

    .line 1633
    .end local v10    # "value":I
    .end local v11    # "offset":I
    .restart local v2    # "offset":I
    :cond_e
    const/16 v7, 0x6e

    if-ne v1, v7, :cond_15

    add-int/lit8 v7, v2, 0x1

    .line 1634
    .end local v2    # "offset":I
    .local v7, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v9, 0x75

    if-ne v2, v9, :cond_14

    add-int/lit8 v2, v7, 0x1

    .line 1635
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v9, 0x6c

    if-ne v7, v9, :cond_15

    add-int/lit8 v7, v2, 0x1

    .line 1636
    .end local v2    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_13

    .line 1637
    const/4 v2, 0x5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1638
    const/4 v9, 0x0

    .line 1639
    .local v9, "value":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "offset":I
    .local v10, "offset":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1641
    if-eqz v5, :cond_f

    if-ne v1, v3, :cond_f

    .line 1642
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v10, v3

    .line 1646
    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    :cond_f
    :goto_7
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_10

    .line 1647
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1648
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1649
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1650
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1651
    return v9

    .line 1652
    :cond_10
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_11

    .line 1653
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1654
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1655
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1656
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1657
    return v9

    .line 1658
    :cond_11
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1659
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1660
    move v10, v3

    goto :goto_7

    .line 1664
    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    :cond_12
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1665
    return v0

    .line 1636
    .end local v9    # "value":I
    .end local v10    # "offset":I
    .restart local v7    # "offset":I
    :cond_13
    move v2, v7

    goto :goto_8

    .line 1634
    :cond_14
    move v2, v7

    .line 1667
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    :cond_15
    :goto_8
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1668
    return v0
.end method

.method public scanLong(C)J
    .locals 19
    .param p1, "seperator"    # C

    .line 1830
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1832
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1833
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1834
    .local v2, "chLocal":C
    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1836
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1837
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v3, v7

    .line 1840
    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 1841
    .local v7, "negative":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 1842
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "offset":I
    .local v8, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v3, v8

    .line 1846
    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v9, 0x30

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    if-lt v2, v9, :cond_e

    const/16 v13, 0x39

    if-gt v2, v13, :cond_e

    .line 1847
    add-int/lit8 v14, v2, -0x30

    int-to-long v14, v14

    .line 1849
    .local v14, "value":J
    :goto_2
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "offset":I
    .local v1, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1850
    if-lt v2, v9, :cond_4

    if-gt v2, v13, :cond_4

    .line 1851
    const-wide/16 v17, 0xa

    mul-long v17, v17, v14

    add-int/lit8 v3, v2, -0x30

    int-to-long v8, v3

    add-long v14, v17, v8

    move v3, v1

    const/4 v1, 0x0

    const/16 v9, 0x30

    goto :goto_2

    .line 1852
    :cond_4
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_5

    .line 1853
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1854
    return-wide v10

    .line 1856
    :cond_5
    if-eqz v6, :cond_7

    .line 1857
    if-eq v2, v4, :cond_6

    .line 1858
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1859
    return-wide v10

    .line 1861
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v1, v3

    .line 1868
    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    :cond_7
    cmp-long v3, v14, v10

    if-gez v3, :cond_9

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v8, v14, v3

    if-nez v8, :cond_8

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v3, v16

    .line 1869
    .local v3, "valid":Z
    if-nez v3, :cond_a

    .line 1870
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1871
    return-wide v10

    .line 1873
    .end local v3    # "valid":Z
    :cond_a
    nop

    .line 1912
    :goto_5
    move/from16 v5, p1

    if-ne v2, v5, :cond_c

    .line 1913
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1914
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1915
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1916
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1917
    if-eqz v7, :cond_b

    neg-long v3, v14

    goto :goto_6

    :cond_b
    move-wide v3, v14

    :goto_6
    return-wide v3

    .line 1919
    :cond_c
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1920
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1921
    move v1, v3

    goto :goto_5

    .line 1924
    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    :cond_d
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1925
    return-wide v14

    .line 1846
    .end local v1    # "offset":I
    .end local v14    # "value":J
    .restart local v3    # "offset":I
    :cond_e
    move/from16 v5, p1

    .line 1873
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_15

    add-int/lit8 v1, v3, 0x1

    .line 1874
    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v8, 0x75

    if-ne v3, v8, :cond_14

    add-int/lit8 v3, v1, 0x1

    .line 1875
    .end local v1    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v8, 0x6c

    if-ne v1, v8, :cond_15

    add-int/lit8 v1, v3, 0x1

    .line 1876
    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_13

    .line 1877
    const/4 v3, 0x5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1878
    const-wide/16 v8, 0x0

    .line 1879
    .local v8, "value":J
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "offset":I
    .local v13, "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1881
    .end local v2    # "chLocal":C
    .local v1, "chLocal":C
    if-eqz v6, :cond_f

    if-ne v1, v4, :cond_f

    .line 1882
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "offset":I
    .local v2, "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v13, v2

    .line 1886
    .end local v2    # "offset":I
    .restart local v13    # "offset":I
    :cond_f
    :goto_7
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_10

    .line 1887
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1888
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1889
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1890
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1891
    return-wide v8

    .line 1892
    :cond_10
    const/16 v2, 0x10

    const/16 v4, 0x5d

    if-ne v1, v4, :cond_11

    .line 1893
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1894
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1895
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1896
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1897
    return-wide v8

    .line 1898
    :cond_11
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1899
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "offset":I
    .local v4, "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1900
    move v13, v4

    goto :goto_7

    .line 1904
    .end local v4    # "offset":I
    .restart local v13    # "offset":I
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1905
    return-wide v10

    .line 1876
    .end local v8    # "value":J
    .end local v13    # "offset":I
    .local v1, "offset":I
    .local v2, "chLocal":C
    :cond_13
    move v3, v1

    goto :goto_8

    .line 1874
    :cond_14
    move v3, v1

    .line 1907
    .end local v1    # "offset":I
    .restart local v3    # "offset":I
    :cond_15
    :goto_8
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1908
    return-wide v10
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .line 628
    add-int/lit8 v0, p1, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p2, -0x30

    add-int/2addr v0, v1

    .line 629
    .local v0, "hour":I
    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p4, -0x30

    add-int/2addr v1, v2

    .line 630
    .local v1, "minute":I
    add-int/lit8 v2, p5, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p6, -0x30

    add-int/2addr v2, v3

    .line 631
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 632
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 633
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 634
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 6
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .line 637
    const/16 v4, 0x30

    const/16 v5, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 638
    return-void
.end method

.method protected setTimeZone(CCCCC)V
    .locals 4
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C
    .param p4, "t3"    # C
    .param p5, "t4"    # C

    .line 641
    add-int/lit8 v0, p2, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p3, -0x30

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    .line 643
    .local v0, "timeZoneOffset":I
    add-int/lit8 v1, p4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p5, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    .line 645
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_0

    .line 646
    neg-int v0, v0

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 650
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 652
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 653
    .local v2, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 656
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    .end local v2    # "timeZone":Ljava/util/TimeZone;
    :cond_1
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 149
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v0, v2, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 154
    :cond_0
    new-array v0, p2, [C

    .line 155
    .local v0, "chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v2, p1, v3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 156
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 159
    .end local v0    # "chars":[C
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final sub_chars(II)[C
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 164
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object v0

    .line 168
    :cond_0
    new-array v0, p2, [C

    .line 169
    .local v0, "chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v2, p1, v3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 170
    return-object v0
.end method
