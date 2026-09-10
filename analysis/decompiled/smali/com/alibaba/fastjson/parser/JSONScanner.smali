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

    .prologue
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

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

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

    .prologue
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

    .prologue
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

    .prologue
    const/4 v2, 0x0

    .line 88
    array-length v0, p2

    .line 89
    .local v0, "destLen":I
    add-int v3, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 94
    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
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

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 714
    if-lt p0, v3, :cond_0

    const/16 v1, 0x33

    if-le p0, v1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    .line 720
    if-lt p2, v2, :cond_0

    if-gt p2, v4, :cond_0

    .line 723
    if-lt p3, v2, :cond_0

    if-gt p3, v4, :cond_0

    .line 727
    if-ne p4, v2, :cond_4

    .line 728
    if-lt p5, v3, :cond_0

    if-gt p5, v4, :cond_0

    .line 739
    :cond_2
    if-ne p6, v2, :cond_5

    .line 740
    if-lt p7, v3, :cond_0

    if-gt p7, v4, :cond_0

    .line 755
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 731
    :cond_4
    if-ne p4, v3, :cond_0

    .line 732
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v5, :cond_2

    goto :goto_0

    .line 743
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v5, :cond_7

    .line 744
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v4, :cond_3

    goto :goto_0

    .line 747
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 748
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 659
    if-ne p1, v2, :cond_1

    .line 660
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 663
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 664
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 675
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 676
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 687
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 688
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 699
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 667
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 668
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 679
    :cond_6
    if-ne p3, v5, :cond_0

    .line 680
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 691
    :cond_7
    if-ne p5, v5, :cond_0

    .line 692
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .locals 69
    .param p1, "strict"    # Z
    .param p2, "rest"    # I

    .prologue
    .line 214
    const/16 v12, 0x8

    move/from16 v0, p2

    if-ge v0, v12, :cond_0

    .line 215
    const/4 v12, 0x0

    .line 624
    :goto_0
    return v12

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 219
    .local v32, "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 220
    .local v33, "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 221
    .local v38, "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v39

    .line 222
    .local v39, "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v40

    .line 223
    .local v40, "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v41

    .line 224
    .local v41, "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v42

    .line 225
    .local v42, "c6":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v43

    .line 227
    .local v43, "c7":C
    if-nez p1, :cond_5

    const/16 v12, 0xd

    move/from16 v0, p2

    if-le v0, v12, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, p2

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v47

    .line 229
    .local v47, "c_r0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, p2

    add-int/lit8 v12, v12, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v48

    .line 230
    .local v48, "c_r1":C
    const/16 v12, 0x2f

    move/from16 v0, v32

    if-ne v0, v12, :cond_5

    const/16 v12, 0x44

    move/from16 v0, v33

    if-ne v0, v12, :cond_5

    const/16 v12, 0x61

    move/from16 v0, v38

    if-ne v0, v12, :cond_5

    const/16 v12, 0x74

    move/from16 v0, v39

    if-ne v0, v12, :cond_5

    const/16 v12, 0x65

    move/from16 v0, v40

    if-ne v0, v12, :cond_5

    const/16 v12, 0x28

    move/from16 v0, v41

    if-ne v0, v12, :cond_5

    const/16 v12, 0x2f

    move/from16 v0, v47

    if-ne v0, v12, :cond_5

    const/16 v12, 0x29

    move/from16 v0, v48

    if-ne v0, v12, :cond_5

    .line 232
    const/16 v60, -0x1

    .line 233
    .local v60, "plusIndex":I
    const/16 v53, 0x6

    .local v53, "i":I
    :goto_1
    move/from16 v0, v53

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v53

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    .line 235
    .local v31, "c":C
    const/16 v12, 0x2b

    move/from16 v0, v31

    if-ne v0, v12, :cond_2

    .line 236
    move/from16 v60, v53

    .line 233
    :cond_1
    add-int/lit8 v53, v53, 0x1

    goto :goto_1

    .line 237
    :cond_2
    const/16 v12, 0x30

    move/from16 v0, v31

    if-lt v0, v12, :cond_3

    const/16 v12, 0x39

    move/from16 v0, v31

    if-le v0, v12, :cond_1

    .line 241
    .end local v31    # "c":C
    :cond_3
    const/4 v12, -0x1

    move/from16 v0, v60

    if-ne v0, v12, :cond_4

    .line 242
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v59, v12, 0x6

    .line 245
    .local v59, "offset":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v60

    sub-int v12, v12, v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v58

    .line 246
    .local v58, "numberText":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 248
    .local v54, "millis":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v54

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 252
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 257
    .end local v47    # "c_r0":C
    .end local v48    # "c_r1":C
    .end local v53    # "i":I
    .end local v54    # "millis":J
    .end local v58    # "numberText":Ljava/lang/String;
    .end local v59    # "offset":I
    .end local v60    # "plusIndex":I
    :cond_5
    const/16 v12, 0x8

    move/from16 v0, p2

    if-eq v0, v12, :cond_7

    const/16 v12, 0xe

    move/from16 v0, p2

    if-eq v0, v12, :cond_7

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .local v34, "c10":C
    const/16 v12, 0x54

    move/from16 v0, v34

    if-eq v0, v12, :cond_7

    const/16 v12, 0x20

    move/from16 v0, v34

    if-eq v0, v12, :cond_7

    .end local v34    # "c10":C
    :cond_6
    const/16 v12, 0x11

    move/from16 v0, p2

    if-ne v0, v12, :cond_1c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x2d

    move/from16 v0, v19

    if-eq v12, v0, :cond_1c

    .line 261
    :cond_7
    if-eqz p1, :cond_8

    .line 262
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 269
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v44

    .line 271
    .local v44, "c8":C
    const/16 v12, 0x2d

    move/from16 v0, v40

    if-ne v0, v12, :cond_a

    const/16 v12, 0x2d

    move/from16 v0, v43

    if-ne v0, v12, :cond_a

    const/16 v46, 0x1

    .line 272
    .local v46, "c_47":Z
    :goto_2
    if-eqz v46, :cond_b

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    const/16 v62, 0x1

    .line 273
    .local v62, "sperate16":Z
    :goto_3
    if-eqz v46, :cond_c

    const/16 v12, 0x11

    move/from16 v0, p2

    if-ne v0, v12, :cond_c

    const/16 v63, 0x1

    .line 274
    .local v63, "sperate17":Z
    :goto_4
    if-nez v63, :cond_9

    if-eqz v62, :cond_d

    .line 275
    :cond_9
    move/from16 v4, v32

    .line 276
    .local v4, "y0":C
    move/from16 v5, v33

    .line 277
    .local v5, "y1":C
    move/from16 v6, v38

    .line 278
    .local v6, "y2":C
    move/from16 v7, v39

    .line 279
    .local v7, "y3":C
    move/from16 v8, v41

    .line 280
    .local v8, "M0":C
    move/from16 v9, v42

    .line 281
    .local v9, "M1":C
    move/from16 v10, v44

    .line 282
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 295
    .local v11, "d1":C
    :goto_5
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-nez v12, :cond_e

    .line 296
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 271
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v46    # "c_47":Z
    .end local v62    # "sperate16":Z
    .end local v63    # "sperate17":Z
    :cond_a
    const/16 v46, 0x0

    goto :goto_2

    .line 272
    .restart local v46    # "c_47":Z
    :cond_b
    const/16 v62, 0x0

    goto :goto_3

    .line 273
    .restart local v62    # "sperate16":Z
    :cond_c
    const/16 v63, 0x0

    goto :goto_4

    .line 284
    .restart local v63    # "sperate17":Z
    :cond_d
    move/from16 v4, v32

    .line 285
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 286
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 287
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 288
    .restart local v7    # "y3":C
    move/from16 v8, v40

    .line 289
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 290
    .restart local v9    # "M1":C
    move/from16 v10, v42

    .line 291
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto :goto_5

    :cond_e
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 299
    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 302
    const/16 v12, 0x8

    move/from16 v0, p2

    if-eq v0, v12, :cond_1b

    .line 303
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v45

    .line 304
    .local v45, "c9":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 305
    .restart local v34    # "c10":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 306
    .local v35, "c11":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 307
    .local v36, "c12":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 311
    .local v37, "c13":C
    if-eqz v63, :cond_f

    const/16 v12, 0x54

    move/from16 v0, v34

    if-ne v0, v12, :cond_f

    const/16 v12, 0x3a

    move/from16 v0, v37

    if-ne v0, v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x5a

    move/from16 v0, v19

    if-eq v12, v0, :cond_11

    :cond_f
    if-eqz v62, :cond_12

    const/16 v12, 0x20

    move/from16 v0, v34

    if-eq v0, v12, :cond_10

    const/16 v12, 0x54

    move/from16 v0, v34

    if-ne v0, v12, :cond_12

    :cond_10
    const/16 v12, 0x3a

    move/from16 v0, v37

    if-ne v0, v12, :cond_12

    .line 313
    :cond_11
    move/from16 v13, v35

    .line 314
    .local v13, "h0":C
    move/from16 v14, v36

    .line 315
    .local v14, "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 316
    .local v15, "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 317
    .local v16, "m1":C
    const/16 v17, 0x30

    .line 318
    .local v17, "s0":C
    const/16 v18, 0x30

    .local v18, "s1":C
    :goto_6
    move-object/from16 v12, p0

    .line 328
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-nez v12, :cond_13

    .line 329
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 320
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    :cond_12
    move/from16 v13, v44

    .line 321
    .restart local v13    # "h0":C
    move/from16 v14, v45

    .line 322
    .restart local v14    # "h1":C
    move/from16 v15, v34

    .line 323
    .restart local v15    # "m0":C
    move/from16 v16, v35

    .line 324
    .restart local v16    # "m1":C
    move/from16 v17, v36

    .line 325
    .restart local v17    # "s0":C
    move/from16 v18, v37

    .restart local v18    # "s1":C
    goto :goto_6

    .line 332
    :cond_13
    const/16 v12, 0x11

    move/from16 v0, p2

    if-ne v0, v12, :cond_1a

    if-nez v63, :cond_1a

    .line 333
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 334
    .local v28, "S0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 335
    .local v29, "S1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 336
    .local v30, "S2":C
    const/16 v12, 0x30

    move/from16 v0, v28

    if-lt v0, v12, :cond_14

    const/16 v12, 0x39

    move/from16 v0, v28

    if-le v0, v12, :cond_15

    .line 337
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 339
    :cond_15
    const/16 v12, 0x30

    move/from16 v0, v29

    if-lt v0, v12, :cond_16

    const/16 v12, 0x39

    move/from16 v0, v29

    if-le v0, v12, :cond_17

    .line 340
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 342
    :cond_17
    const/16 v12, 0x30

    move/from16 v0, v30

    if-lt v0, v12, :cond_18

    const/16 v12, 0x39

    move/from16 v0, v30

    if-le v0, v12, :cond_19

    .line 343
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 346
    :cond_19
    add-int/lit8 v12, v28, -0x30

    mul-int/lit8 v12, v12, 0x64

    add-int/lit8 v19, v29, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v12, v12, v19

    add-int/lit8 v19, v30, -0x30

    add-int v54, v12, v19

    .line 351
    .end local v28    # "S0":C
    .end local v29    # "S1":C
    .end local v30    # "S2":C
    .local v54, "millis":I
    :goto_7
    add-int/lit8 v12, v13, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v14, -0x30

    add-int v52, v12, v19

    .line 352
    .local v52, "hour":I
    add-int/lit8 v12, v15, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v16, -0x30

    add-int v57, v12, v19

    .line 353
    .local v57, "minute":I
    add-int/lit8 v12, v17, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v18, -0x30

    add-int v61, v12, v19

    .line 361
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v34    # "c10":C
    .end local v35    # "c11":C
    .end local v36    # "c12":C
    .end local v37    # "c13":C
    .end local v45    # "c9":C
    .local v61, "seconds":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    move/from16 v0, v19

    move/from16 v1, v52

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v57

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    move/from16 v0, v19

    move/from16 v1, v61

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 364
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v54

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 366
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 367
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 348
    .end local v52    # "hour":I
    .end local v54    # "millis":I
    .end local v57    # "minute":I
    .end local v61    # "seconds":I
    .restart local v13    # "h0":C
    .restart local v14    # "h1":C
    .restart local v15    # "m0":C
    .restart local v16    # "m1":C
    .restart local v17    # "s0":C
    .restart local v18    # "s1":C
    .restart local v34    # "c10":C
    .restart local v35    # "c11":C
    .restart local v36    # "c12":C
    .restart local v37    # "c13":C
    .restart local v45    # "c9":C
    :cond_1a
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_7

    .line 355
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v34    # "c10":C
    .end local v35    # "c11":C
    .end local v36    # "c12":C
    .end local v37    # "c13":C
    .end local v45    # "c9":C
    .end local v54    # "millis":I
    :cond_1b
    const/16 v52, 0x0

    .line 356
    .restart local v52    # "hour":I
    const/16 v57, 0x0

    .line 357
    .restart local v57    # "minute":I
    const/16 v61, 0x0

    .line 358
    .restart local v61    # "seconds":I
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_8

    .line 370
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v44    # "c8":C
    .end local v46    # "c_47":Z
    .end local v52    # "hour":I
    .end local v54    # "millis":I
    .end local v57    # "minute":I
    .end local v61    # "seconds":I
    .end local v62    # "sperate16":Z
    .end local v63    # "sperate17":Z
    :cond_1c
    const/16 v12, 0x9

    move/from16 v0, p2

    if-ge v0, v12, :cond_1d

    .line 371
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 374
    :cond_1d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v44

    .line 375
    .restart local v44    # "c8":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v45

    .line 377
    .restart local v45    # "c9":C
    const/16 v49, 0xa

    .line 379
    .local v49, "date_len":I
    const/16 v12, 0x2d

    move/from16 v0, v40

    if-ne v0, v12, :cond_1e

    const/16 v12, 0x2d

    move/from16 v0, v43

    if-eq v0, v12, :cond_1f

    :cond_1e
    const/16 v12, 0x2f

    move/from16 v0, v40

    if-ne v0, v12, :cond_20

    const/16 v12, 0x2f

    move/from16 v0, v43

    if-ne v0, v12, :cond_20

    .line 382
    :cond_1f
    move/from16 v4, v32

    .line 383
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 384
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 385
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 386
    .restart local v7    # "y3":C
    move/from16 v8, v41

    .line 387
    .restart local v8    # "M0":C
    move/from16 v9, v42

    .line 388
    .restart local v9    # "M1":C
    move/from16 v10, v44

    .line 389
    .restart local v10    # "d0":C
    move/from16 v11, v45

    .line 459
    .restart local v11    # "d1":C
    :goto_9
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-nez v12, :cond_34

    .line 460
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 390
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_20
    const/16 v12, 0x2d

    move/from16 v0, v40

    if-ne v0, v12, :cond_22

    const/16 v12, 0x2d

    move/from16 v0, v42

    if-ne v0, v12, :cond_22

    .line 392
    move/from16 v4, v32

    .line 393
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 394
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 395
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 396
    .restart local v7    # "y3":C
    const/16 v8, 0x30

    .line 397
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 399
    .restart local v9    # "M1":C
    const/16 v12, 0x20

    move/from16 v0, v44

    if-ne v0, v12, :cond_21

    .line 400
    const/16 v10, 0x30

    .line 401
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .line 402
    .restart local v11    # "d1":C
    const/16 v49, 0x8

    goto :goto_9

    .line 404
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_21
    move/from16 v10, v43

    .line 405
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .line 406
    .restart local v11    # "d1":C
    const/16 v49, 0x9

    goto :goto_9

    .line 408
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_22
    const/16 v12, 0x2e

    move/from16 v0, v38

    if-ne v0, v12, :cond_23

    const/16 v12, 0x2e

    move/from16 v0, v41

    if-eq v0, v12, :cond_24

    :cond_23
    const/16 v12, 0x2d

    move/from16 v0, v38

    if-ne v0, v12, :cond_25

    const/16 v12, 0x2d

    move/from16 v0, v41

    if-ne v0, v12, :cond_25

    .line 411
    :cond_24
    move/from16 v10, v32

    .line 412
    .restart local v10    # "d0":C
    move/from16 v11, v33

    .line 413
    .restart local v11    # "d1":C
    move/from16 v8, v39

    .line 414
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 415
    .restart local v9    # "M1":C
    move/from16 v4, v42

    .line 416
    .restart local v4    # "y0":C
    move/from16 v5, v43

    .line 417
    .restart local v5    # "y1":C
    move/from16 v6, v44

    .line 418
    .restart local v6    # "y2":C
    move/from16 v7, v45

    .restart local v7    # "y3":C
    goto :goto_9

    .line 420
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_25
    const/16 v12, 0x5e74

    move/from16 v0, v40

    if-eq v0, v12, :cond_26

    const v12, 0xb144

    move/from16 v0, v40

    if-ne v0, v12, :cond_33

    .line 421
    :cond_26
    move/from16 v4, v32

    .line 422
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 423
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 424
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 426
    .restart local v7    # "y3":C
    const/16 v12, 0x6708

    move/from16 v0, v43

    if-eq v0, v12, :cond_27

    const v12, 0xc6d4

    move/from16 v0, v43

    if-ne v0, v12, :cond_2c

    .line 427
    :cond_27
    move/from16 v8, v41

    .line 428
    .restart local v8    # "M0":C
    move/from16 v9, v42

    .line 429
    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    move/from16 v0, v45

    if-eq v0, v12, :cond_28

    const v12, 0xc77c

    move/from16 v0, v45

    if-ne v0, v12, :cond_29

    .line 430
    :cond_28
    const/16 v10, 0x30

    .line 431
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 432
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_29
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x65e5

    move/from16 v0, v19

    if-eq v12, v0, :cond_2a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const v19, 0xc77c

    move/from16 v0, v19

    if-ne v12, v0, :cond_2b

    .line 433
    :cond_2a
    move/from16 v10, v44

    .line 434
    .restart local v10    # "d0":C
    move/from16 v11, v45

    .line 435
    .restart local v11    # "d1":C
    const/16 v49, 0xb

    goto/16 :goto_9

    .line 437
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 439
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_2c
    const/16 v12, 0x6708

    move/from16 v0, v42

    if-eq v0, v12, :cond_2d

    const v12, 0xc6d4

    move/from16 v0, v42

    if-ne v0, v12, :cond_32

    .line 440
    :cond_2d
    const/16 v8, 0x30

    .line 441
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 442
    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    move/from16 v0, v44

    if-eq v0, v12, :cond_2e

    const v12, 0xc77c

    move/from16 v0, v44

    if-ne v0, v12, :cond_2f

    .line 443
    :cond_2e
    const/16 v10, 0x30

    .line 444
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 445
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2f
    const/16 v12, 0x65e5

    move/from16 v0, v45

    if-eq v0, v12, :cond_30

    const v12, 0xc77c

    move/from16 v0, v45

    if-ne v0, v12, :cond_31

    .line 446
    :cond_30
    move/from16 v10, v43

    .line 447
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 449
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_31
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 452
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_32
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 455
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    :cond_33
    const/4 v12, 0x0

    goto/16 :goto_0

    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    .restart local v8    # "M0":C
    .restart local v9    # "M1":C
    .restart local v10    # "d0":C
    .restart local v11    # "d1":C
    :cond_34
    move-object/from16 v19, p0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    .line 463
    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 465
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v64

    .line 466
    .local v64, "t":C
    const/16 v12, 0x54

    move/from16 v0, v64

    if-eq v0, v12, :cond_35

    const/16 v12, 0x20

    move/from16 v0, v64

    if-ne v0, v12, :cond_36

    if-nez p1, :cond_36

    .line 467
    :cond_35
    add-int/lit8 v12, v49, 0x9

    move/from16 v0, p2

    if-ge v0, v12, :cond_3e

    .line 468
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 470
    :cond_36
    const/16 v12, 0x22

    move/from16 v0, v64

    if-eq v0, v12, :cond_37

    const/16 v12, 0x1a

    move/from16 v0, v64

    if-eq v0, v12, :cond_37

    const/16 v12, 0x65e5

    move/from16 v0, v64

    if-eq v0, v12, :cond_37

    const v12, 0xc77c

    move/from16 v0, v64

    if-ne v0, v12, :cond_38

    .line 471
    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    const/16 v25, 0x0

    move/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    const/16 v25, 0x0

    move/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    const/16 v25, 0x0

    move/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v25, 0x0

    move/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 476
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 478
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 479
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 480
    :cond_38
    const/16 v12, 0x2b

    move/from16 v0, v64

    if-eq v0, v12, :cond_39

    const/16 v12, 0x2d

    move/from16 v0, v64

    if-ne v0, v12, :cond_3d

    .line 481
    :cond_39
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v19, v49, 0x6

    move/from16 v0, v19

    if-ne v12, v0, :cond_3c

    .line 482
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-ne v12, v0, :cond_3a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x4

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-ne v12, v0, :cond_3a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x5

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-eq v12, v0, :cond_3b

    .line 485
    :cond_3a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 488
    :cond_3b
    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    const/16 v25, 0x30

    move-object/from16 v19, p0

    invoke-virtual/range {v19 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v25, 0x0

    move/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 490
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    add-int v19, v19, v49

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 491
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 493
    :cond_3c
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 495
    :cond_3d
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 498
    :cond_3e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_3f

    .line 499
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 501
    :cond_3f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_40

    .line 502
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 505
    :cond_40
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 506
    .restart local v13    # "h0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 507
    .restart local v14    # "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 508
    .restart local v15    # "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 509
    .restart local v16    # "m1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 510
    .restart local v17    # "s0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .restart local v18    # "s1":C
    move-object/from16 v12, p0

    .line 512
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-nez v12, :cond_41

    .line 513
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_41
    move-object/from16 v12, p0

    .line 516
    invoke-virtual/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 518
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v50

    .line 519
    .local v50, "dot":C
    const/16 v12, 0x2e

    move/from16 v0, v50

    if-ne v0, v12, :cond_42

    .line 520
    add-int/lit8 v12, v49, 0xb

    move/from16 v0, p2

    if-ge v0, v12, :cond_44

    .line 521
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 524
    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v25, 0x0

    move/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 526
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0x9

    add-int v12, v12, v19

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 528
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 530
    const/16 v12, 0x5a

    move/from16 v0, v50

    if-ne v0, v12, :cond_43

    .line 532
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_43

    .line 533
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v67

    .line 534
    .local v67, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v67

    array-length v12, v0

    if-lez v12, :cond_43

    .line 535
    const/4 v12, 0x0

    aget-object v12, v67, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v66

    .line 536
    .local v66, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v66

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 540
    .end local v66    # "timeZone":Ljava/util/TimeZone;
    .end local v67    # "timeZoneIDs":[Ljava/lang/String;
    :cond_43
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 543
    :cond_44
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 544
    .restart local v28    # "S0":C
    const/16 v12, 0x30

    move/from16 v0, v28

    if-lt v0, v12, :cond_45

    const/16 v12, 0x39

    move/from16 v0, v28

    if-le v0, v12, :cond_46

    .line 545
    :cond_45
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 547
    :cond_46
    add-int/lit8 v54, v28, -0x30

    .line 548
    .restart local v54    # "millis":I
    const/16 v56, 0x1

    .line 550
    .local v56, "millisLen":I
    add-int/lit8 v12, v49, 0xb

    move/from16 v0, p2

    if-le v0, v12, :cond_47

    .line 551
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 552
    .restart local v29    # "S1":C
    const/16 v12, 0x30

    move/from16 v0, v29

    if-lt v0, v12, :cond_47

    const/16 v12, 0x39

    move/from16 v0, v29

    if-gt v0, v12, :cond_47

    .line 553
    mul-int/lit8 v12, v54, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v54, v12, v19

    .line 554
    const/16 v56, 0x2

    .line 558
    .end local v29    # "S1":C
    :cond_47
    const/4 v12, 0x2

    move/from16 v0, v56

    if-ne v0, v12, :cond_48

    .line 559
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 560
    .restart local v30    # "S2":C
    const/16 v12, 0x30

    move/from16 v0, v30

    if-lt v0, v12, :cond_48

    const/16 v12, 0x39

    move/from16 v0, v30

    if-gt v0, v12, :cond_48

    .line 561
    mul-int/lit8 v12, v54, 0xa

    add-int/lit8 v19, v30, -0x30

    add-int v54, v12, v19

    .line 562
    const/16 v56, 0x3

    .line 566
    .end local v30    # "S2":C
    :cond_48
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v54

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 568
    const/16 v68, 0x0

    .line 569
    .local v68, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 570
    .local v20, "timeZoneFlag":C
    const/16 v12, 0x2b

    move/from16 v0, v20

    if-eq v0, v12, :cond_49

    const/16 v12, 0x2d

    move/from16 v0, v20

    if-ne v0, v12, :cond_54

    .line 571
    :cond_49
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v21

    .line 572
    .local v21, "t0":C
    const/16 v12, 0x30

    move/from16 v0, v21

    if-lt v0, v12, :cond_4a

    const/16 v12, 0x31

    move/from16 v0, v21

    if-le v0, v12, :cond_4b

    .line 573
    :cond_4a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 576
    :cond_4b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v22

    .line 577
    .local v22, "t1":C
    const/16 v12, 0x30

    move/from16 v0, v22

    if-lt v0, v12, :cond_4c

    const/16 v12, 0x39

    move/from16 v0, v22

    if-le v0, v12, :cond_4d

    .line 578
    :cond_4c
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 581
    :cond_4d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v65

    .line 582
    .local v65, "t2":C
    const/16 v23, 0x30

    .local v23, "t3":C
    const/16 v24, 0x30

    .line 583
    .local v24, "t4":C
    const/16 v12, 0x3a

    move/from16 v0, v65

    if-ne v0, v12, :cond_51

    .line 584
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    .line 585
    const/16 v12, 0x30

    move/from16 v0, v23

    if-eq v0, v12, :cond_4e

    const/16 v12, 0x33

    move/from16 v0, v23

    if-eq v0, v12, :cond_4e

    .line 586
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 589
    :cond_4e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v24

    .line 590
    const/16 v12, 0x30

    move/from16 v0, v24

    if-eq v0, v12, :cond_4f

    .line 591
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 593
    :cond_4f
    const/16 v68, 0x6

    :goto_a
    move-object/from16 v19, p0

    .line 604
    invoke-virtual/range {v19 .. v24}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 617
    .end local v21    # "t0":C
    .end local v22    # "t1":C
    .end local v23    # "t3":C
    .end local v24    # "t4":C
    .end local v65    # "t2":C
    :cond_50
    :goto_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0xa

    add-int v19, v19, v56

    add-int v19, v19, v68

    add-int v12, v12, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v51

    .line 618
    .local v51, "end":C
    const/16 v12, 0x1a

    move/from16 v0, v51

    if-eq v0, v12, :cond_55

    const/16 v12, 0x22

    move/from16 v0, v51

    if-eq v0, v12, :cond_55

    .line 619
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 594
    .end local v51    # "end":C
    .restart local v21    # "t0":C
    .restart local v22    # "t1":C
    .restart local v23    # "t3":C
    .restart local v24    # "t4":C
    .restart local v65    # "t2":C
    :cond_51
    const/16 v12, 0x30

    move/from16 v0, v65

    if-ne v0, v12, :cond_53

    .line 595
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    .line 596
    const/16 v12, 0x30

    move/from16 v0, v23

    if-eq v0, v12, :cond_52

    const/16 v12, 0x33

    move/from16 v0, v23

    if-eq v0, v12, :cond_52

    .line 597
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 599
    :cond_52
    const/16 v68, 0x5

    goto :goto_a

    .line 601
    :cond_53
    const/16 v68, 0x3

    goto :goto_a

    .line 606
    .end local v21    # "t0":C
    .end local v22    # "t1":C
    .end local v23    # "t3":C
    .end local v24    # "t4":C
    .end local v65    # "t2":C
    :cond_54
    const/16 v12, 0x5a

    move/from16 v0, v20

    if-ne v0, v12, :cond_50

    .line 607
    const/16 v68, 0x1

    .line 608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_50

    .line 609
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v67

    .line 610
    .restart local v67    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v67

    array-length v12, v0

    if-lez v12, :cond_50

    .line 611
    const/4 v12, 0x0

    aget-object v12, v67, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v66

    .line 612
    .restart local v66    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v66

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_b

    .line 621
    .end local v66    # "timeZone":Ljava/util/TimeZone;
    .end local v67    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v51    # "end":C
    :cond_55
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0xa

    add-int v19, v19, v56

    add-int v19, v19, v68

    add-int v12, v12, v19

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 623
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 624
    const/4 v12, 0x1

    goto/16 :goto_0
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

    .prologue
    .line 703
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 704
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 705
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 706
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 708
    .local v0, "day":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 709
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 710
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

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

    .prologue
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

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2059
    return-void
.end method

.method public bytesValue()[B
    .locals 13

    .prologue
    const/16 v12, 0x39

    const/16 v10, 0x37

    const/16 v9, 0x30

    .line 115
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v11, 0x1a

    if-ne v8, v11, :cond_3

    .line 116
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v7, v8, 0x1

    .local v7, "start":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 117
    .local v6, "len":I
    rem-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_0

    .line 118
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal state. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 121
    :cond_0
    div-int/lit8 v8, v6, 0x2

    new-array v2, v8, [B

    .line 122
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v2

    if-ge v5, v8, :cond_4

    .line 123
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v7

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 124
    .local v3, "c0":C
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 126
    .local v4, "c1":C
    if-gt v3, v12, :cond_1

    move v8, v9

    :goto_1
    sub-int v0, v3, v8

    .line 127
    .local v0, "b0":I
    if-gt v4, v12, :cond_2

    move v8, v9

    :goto_2
    sub-int v1, v4, v8

    .line 128
    .local v1, "b1":I
    shl-int/lit8 v8, v0, 0x4

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "b0":I
    .end local v1    # "b1":I
    :cond_1
    move v8, v10

    .line 126
    goto :goto_1

    .restart local v0    # "b0":I
    :cond_2
    move v8, v10

    .line 127
    goto :goto_2

    .line 134
    .end local v0    # "b0":I
    .end local v2    # "bytes":[B
    .end local v3    # "c0":C
    .end local v4    # "c1":C
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v7    # "start":I
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v8, v9, v10}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .prologue
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

    .prologue
    .line 61
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    .line 62
    const/16 v0, 0x1a

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 85
    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 186
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "chLocal":C
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 189
    .local v4, "sp":I
    const/16 v5, 0x4c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x53

    if-eq v0, v5, :cond_0

    const/16 v5, 0x42

    if-eq v0, v5, :cond_0

    const/16 v5, 0x46

    if-eq v0, v5, :cond_0

    const/16 v5, 0x44

    if-ne v0, v5, :cond_1

    .line 190
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 193
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v3, "offset":I
    move v2, v4

    .line 194
    .local v2, "count":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 195
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v6, v3, v2

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v5, v3, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v5, v6, v8, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 200
    :goto_0
    return-object v5

    .line 198
    :cond_2
    new-array v1, v2, [C

    .line 199
    .local v1, "chars":[C
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v6, v3, v2

    invoke-virtual {v5, v3, v6, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2064
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2066
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2062
    return-object v0

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2066
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 760
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchField2([C)Z
    .locals 7
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 2174
    :goto_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2179
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2195
    :goto_1
    return v3

    .line 2183
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v5, p1

    add-int v1, v4, v5

    .line 2184
    .local v1, "offset":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    move v1, v2

    .line 2185
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :goto_2
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2186
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_2

    .line 2189
    :cond_2
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_3

    .line 2190
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2191
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2192
    const/4 v3, 0x1

    goto :goto_1

    .line 2194
    :cond_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1172
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1180
    :goto_0
    return-object v2

    .line 1174
    :cond_0
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v3

    .line 1176
    goto :goto_0

    .line 1179
    .end local v3    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v2, v1

    .line 1180
    goto :goto_0

    .line 1181
    .end local v1    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final next()C
    .locals 2

    .prologue
    .line 69
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 70
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 72
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 70
    return v1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

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
    .locals 18
    .param p1, "seperator"    # C

    .prologue
    .line 1931
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1932
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1933
    .local v13, "startPos":I
    move-object/from16 v0, p0

    iget-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1935
    .local v11, "startChar":C
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1937
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1940
    .local v2, "ch":C
    const/16 v14, 0x22

    if-ne v2, v14, :cond_5

    .line 1941
    move v12, v6

    .line 1942
    .local v12, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 1943
    .local v4, "endIndex":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_0

    .line 1944
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1947
    :cond_0
    sub-int v10, v4, v12

    .line 1948
    .local v10, "rest":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1949
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1950
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1957
    .local v3, "dateVal":Ljava/util/Date;
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1958
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1961
    :goto_0
    const/16 v14, 0x2c

    if-eq v2, v14, :cond_1

    const/16 v14, 0x5d

    if-ne v2, v14, :cond_3

    .line 1962
    :cond_1
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1963
    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    move v5, v6

    .line 2027
    .end local v4    # "endIndex":I
    .end local v6    # "index":I
    .end local v10    # "rest":I
    .end local v12    # "startIndex":I
    .restart local v5    # "index":I
    :goto_1
    const/16 v14, 0x2c

    if-ne v2, v14, :cond_f

    .line 2028
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2029
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2054
    .end local v3    # "dateVal":Ljava/util/Date;
    :goto_2
    return-object v3

    .line 1952
    .end local v5    # "index":I
    .restart local v4    # "endIndex":I
    .restart local v6    # "index":I
    .restart local v10    # "rest":I
    .restart local v12    # "startIndex":I
    :cond_2
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1953
    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1954
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1955
    const/4 v3, 0x0

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_2

    .line 1965
    .end local v5    # "index":I
    .restart local v3    # "dateVal":Ljava/util/Date;
    .restart local v6    # "index":I
    :cond_3
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1966
    add-int/lit8 v4, v4, 0x1

    .line 1967
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 1969
    :cond_4
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1970
    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1971
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1973
    const/4 v3, 0x0

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_2

    .line 1976
    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v4    # "endIndex":I
    .end local v5    # "index":I
    .end local v10    # "rest":I
    .end local v12    # "startIndex":I
    .restart local v6    # "index":I
    :cond_5
    const/16 v14, 0x2d

    if-eq v2, v14, :cond_6

    const/16 v14, 0x30

    if-lt v2, v14, :cond_c

    const/16 v14, 0x39

    if-gt v2, v14, :cond_c

    .line 1977
    :cond_6
    const-wide/16 v8, 0x0

    .line 1979
    .local v8, "millis":J
    const/4 v7, 0x0

    .line 1980
    .local v7, "negative":Z
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_15

    .line 1981
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1982
    const/4 v7, 0x1

    .line 1985
    :goto_3
    const/16 v14, 0x30

    if-lt v2, v14, :cond_9

    const/16 v14, 0x39

    if-gt v2, v14, :cond_9

    .line 1986
    add-int/lit8 v14, v2, -0x30

    int-to-long v8, v14

    .line 1988
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1989
    const/16 v14, 0x30

    if-lt v2, v14, :cond_7

    const/16 v14, 0x39

    if-gt v2, v14, :cond_7

    .line 1990
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v8

    add-int/lit8 v16, v2, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v14, v16

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_4

    .line 1992
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_7
    const/16 v14, 0x2c

    if-eq v2, v14, :cond_8

    const/16 v14, 0x5d

    if-ne v2, v14, :cond_14

    .line 1993
    :cond_8
    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v5, v6

    .line 2000
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_9
    :goto_5
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gez v14, :cond_a

    .line 2001
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2002
    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2003
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2004
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2007
    :cond_a
    if-eqz v7, :cond_b

    .line 2008
    neg-long v8, v8

    .line 2011
    :cond_b
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 2012
    .restart local v3    # "dateVal":Ljava/util/Date;
    goto/16 :goto_1

    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v5    # "index":I
    .end local v7    # "negative":Z
    .end local v8    # "millis":J
    .restart local v6    # "index":I
    :cond_c
    const/16 v14, 0x6e

    if-ne v2, v14, :cond_d

    add-int/lit8 v5, v6, 0x1

    .line 2013
    .end local v6    # "index":I
    .restart local v5    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x75

    if-ne v14, v15, :cond_e

    add-int/lit8 v6, v5, 0x1

    .line 2014
    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_d

    add-int/lit8 v5, v6, 0x1

    .line 2015
    .end local v6    # "index":I
    .restart local v5    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_e

    .line 2016
    const/4 v3, 0x0

    .line 2017
    .restart local v3    # "dateVal":Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 2018
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    goto/16 :goto_1

    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_d
    move v5, v6

    .line 2020
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_e
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2021
    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2022
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2024
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2033
    .restart local v3    # "dateVal":Ljava/util/Date;
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 2034
    const/16 v14, 0x2c

    if-ne v2, v14, :cond_10

    .line 2035
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2036
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2052
    :goto_6
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_2

    .line 2037
    :cond_10
    const/16 v14, 0x5d

    if-ne v2, v14, :cond_11

    .line 2038
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2039
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 2040
    :cond_11
    const/16 v14, 0x7d

    if-ne v2, v14, :cond_12

    .line 2041
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2042
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 2043
    :cond_12
    const/16 v14, 0x1a

    if-ne v2, v14, :cond_13

    .line 2044
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2045
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_6

    .line 2047
    :cond_13
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2048
    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2049
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2050
    const/4 v3, 0x0

    goto/16 :goto_2

    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v5    # "index":I
    .restart local v6    # "index":I
    .restart local v7    # "negative":Z
    .restart local v8    # "millis":J
    :cond_14
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_15
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_3
.end method

.method public scanDouble(C)D
    .locals 22
    .param p1, "seperator"    # C

    .prologue
    .line 1690
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1692
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1693
    .local v8, "offset":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1694
    .local v2, "chLocal":C
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/4 v12, 0x1

    .line 1695
    .local v12, "quote":Z
    :goto_0
    if-eqz v12, :cond_0

    .line 1696
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1699
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_0
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    .line 1700
    .local v5, "negative":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 1701
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1705
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_10

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_10

    .line 1706
    add-int/lit8 v18, v2, -0x30

    move/from16 v0, v18

    int-to-long v6, v0

    .local v6, "intVal":J
    move v8, v9

    .line 1708
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1709
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_4

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_4

    .line 1710
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    move v8, v9

    .line 1711
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 1694
    .end local v5    # "negative":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v12    # "quote":Z
    .restart local v9    # "offset":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1699
    .restart local v12    # "quote":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1717
    .restart local v5    # "negative":Z
    .restart local v6    # "intVal":J
    :cond_4
    const-wide/16 v10, 0x1

    .line 1718
    .local v10, "power":J
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    const/4 v13, 0x1

    .line 1719
    .local v13, "small":Z
    :goto_3
    if-eqz v13, :cond_7

    .line 1720
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1721
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_6

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_6

    .line 1722
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 1723
    const-wide/16 v10, 0xa

    .line 1725
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1726
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_7

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_7

    .line 1727
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 1728
    const-wide/16 v18, 0xa

    mul-long v10, v10, v18

    move v8, v9

    .line 1729
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_4

    .line 1718
    .end local v8    # "offset":I
    .end local v13    # "small":Z
    .restart local v9    # "offset":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 1735
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    .restart local v13    # "small":Z
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1736
    const-wide/16 v16, 0x0

    .line 1825
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :goto_5
    return-wide v16

    .line 1740
    .end local v8    # "offset":I
    .restart local v6    # "intVal":J
    .restart local v9    # "offset":I
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    :cond_7
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v2, v0, :cond_8

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    :cond_8
    const/4 v4, 0x1

    .line 1741
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_b

    .line 1742
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1743
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v2, v0, :cond_9

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    .line 1744
    :cond_9
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1747
    :goto_7
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_b

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_b

    .line 1748
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_7

    .line 1740
    .end local v4    # "exp":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    .line 1756
    .restart local v4    # "exp":Z
    :cond_b
    if-eqz v12, :cond_e

    .line 1757
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v2, v0, :cond_c

    .line 1758
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1759
    const-wide/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_5

    .line 1761
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_c
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    add-int/lit8 v14, v18, 0x1

    .line 1764
    .local v14, "start":I
    sub-int v18, v8, v14

    add-int/lit8 v3, v18, -0x2

    .line 1770
    .local v3, "count":I
    :goto_8
    if-nez v4, :cond_f

    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v3, v0, :cond_f

    .line 1771
    long-to-double v0, v6

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 1772
    .local v16, "value":D
    if-eqz v5, :cond_d

    .line 1773
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 1817
    :cond_d
    :goto_9
    move/from16 v0, p1

    if-ne v2, v0, :cond_17

    .line 1818
    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1820
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1821
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_5

    .line 1766
    .end local v3    # "count":I
    .end local v8    # "offset":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1767
    .restart local v14    # "start":I
    sub-int v18, v9, v14

    add-int/lit8 v3, v18, -0x1

    .restart local v3    # "count":I
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_8

    .line 1776
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v15

    .line 1777
    .local v15, "text":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .restart local v16    # "value":D
    goto :goto_9

    .line 1779
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v10    # "power":J
    .end local v13    # "small":Z
    .end local v14    # "start":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_10
    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v2, v0, :cond_15

    add-int/lit8 v8, v9, 0x1

    .line 1780
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    const/16 v19, 0x75

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v9, v8, 0x1

    .line 1781
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    add-int/lit8 v8, v9, 0x1

    .line 1782
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1783
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1784
    const-wide/16 v16, 0x0

    .line 1785
    .restart local v16    # "value":D
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1787
    if-eqz v12, :cond_11

    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    .line 1788
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1792
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_11
    :goto_a
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    .line 1793
    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1795
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1796
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v8, v9

    .line 1797
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_5

    .line 1798
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_13

    .line 1799
    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1801
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1802
    const/16 v18, 0xf

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v8, v9

    .line 1803
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_5

    .line 1804
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_13
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1805
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1806
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_a

    .line 1810
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1811
    const-wide/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_5

    .end local v8    # "offset":I
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_15
    move v8, v9

    .line 1813
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_16
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1814
    const-wide/16 v16, 0x0

    goto/16 :goto_5

    .line 1824
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v6    # "intVal":J
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    .restart local v14    # "start":I
    .restart local v16    # "value":D
    :cond_17
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_5

    .end local v3    # "count":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    :cond_18
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_7
.end method

.method public scanFieldBoolean([C)Z
    .locals 13
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v12, 0x2c

    const/16 v11, 0x10

    const/16 v10, 0x22

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 1453
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1455
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1456
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1583
    :goto_0
    return v5

    .line 1460
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1461
    .local v4, "startPos":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v1, v7, v8

    .line 1463
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1465
    .local v0, "ch":C
    if-ne v0, v10, :cond_2

    const/4 v3, 0x1

    .line 1466
    .local v3, "quote":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 1467
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1471
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_1
    const/16 v7, 0x74

    if-ne v0, v7, :cond_8

    .line 1472
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x72

    if-eq v7, v8, :cond_3

    .line 1473
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1474
    goto :goto_0

    .end local v1    # "index":I
    .end local v3    # "quote":Z
    .restart local v2    # "index":I
    :cond_2
    move v3, v6

    .line 1465
    goto :goto_1

    .line 1476
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v3    # "quote":Z
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-eq v7, v8, :cond_4

    .line 1477
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1478
    goto :goto_0

    .line 1480
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_5

    .line 1481
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1482
    goto :goto_0

    .line 1485
    :cond_5
    if-eqz v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_6

    .line 1486
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1487
    goto :goto_0

    :cond_6
    move v1, v2

    .line 1490
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_7
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1491
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1492
    const/4 v5, 0x1

    .line 1543
    .local v5, "value":Z
    :goto_2
    if-ne v0, v12, :cond_16

    .line 1544
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1545
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1546
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1493
    .end local v1    # "index":I
    .end local v5    # "value":Z
    .restart local v2    # "index":I
    :cond_8
    const/16 v7, 0x66

    if-ne v0, v7, :cond_f

    .line 1494
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-eq v7, v8, :cond_9

    .line 1495
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1496
    goto/16 :goto_0

    .line 1498
    :cond_9
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-eq v7, v8, :cond_a

    .line 1499
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1500
    goto/16 :goto_0

    .line 1502
    :cond_a
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-eq v7, v8, :cond_b

    .line 1503
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1504
    goto/16 :goto_0

    .line 1506
    :cond_b
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_c

    .line 1507
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1508
    goto/16 :goto_0

    .line 1511
    :cond_c
    if-eqz v3, :cond_d

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_e

    .line 1512
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1513
    goto/16 :goto_0

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_d
    move v1, v2

    .line 1516
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_e
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1517
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1518
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto :goto_2

    .line 1519
    .end local v1    # "index":I
    .end local v5    # "value":Z
    .restart local v2    # "index":I
    :cond_f
    const/16 v7, 0x31

    if-ne v0, v7, :cond_12

    .line 1520
    if-eqz v3, :cond_10

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_11

    .line 1521
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1522
    goto/16 :goto_0

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_10
    move v1, v2

    .line 1525
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_11
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1526
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1527
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto/16 :goto_2

    .line 1528
    .end local v1    # "index":I
    .end local v5    # "value":Z
    .restart local v2    # "index":I
    :cond_12
    const/16 v7, 0x30

    if-ne v0, v7, :cond_15

    .line 1529
    if-eqz v3, :cond_13

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_14

    .line 1530
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1531
    goto/16 :goto_0

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_13
    move v1, v2

    .line 1534
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1535
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1536
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto/16 :goto_2

    .line 1538
    .end local v1    # "index":I
    .end local v5    # "value":Z
    .restart local v2    # "index":I
    :cond_15
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1539
    goto/16 :goto_0

    .line 1548
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v5    # "value":Z
    :cond_16
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_1c

    .line 1549
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1551
    :goto_3
    if-ne v0, v12, :cond_17

    .line 1552
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1553
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1571
    :goto_4
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1554
    :cond_17
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_18

    .line 1555
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1556
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1557
    :cond_18
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_19

    .line 1558
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1559
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1560
    :cond_19
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_1a

    .line 1561
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    .line 1562
    :cond_1a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1563
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1564
    goto :goto_3

    .line 1566
    :cond_1b
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1567
    goto/16 :goto_0

    .line 1573
    :cond_1c
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1574
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto/16 :goto_2

    .line 1576
    :cond_1d
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1577
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1578
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1579
    goto/16 :goto_0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 18
    .param p1, "fieldName"    # [C

    .prologue
    .line 983
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 984
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 985
    .local v13, "startPos":I
    move-object/from16 v0, p0

    iget-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 987
    .local v11, "startChar":C
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 988
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 989
    const/4 v3, 0x0

    .line 1097
    :goto_0
    return-object v3

    .line 992
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v5, v14, v15

    .line 994
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 997
    .local v2, "ch":C
    const/16 v14, 0x22

    if-ne v2, v14, :cond_6

    .line 998
    move v12, v6

    .line 999
    .local v12, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 1000
    .local v4, "endIndex":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_1

    .line 1001
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1004
    :cond_1
    sub-int v10, v4, v12

    .line 1005
    .local v10, "rest":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1006
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1013
    .local v3, "dateVal":Ljava/util/Date;
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1014
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1017
    :goto_1
    const/16 v14, 0x2c

    if-eq v2, v14, :cond_2

    const/16 v14, 0x7d

    if-ne v2, v14, :cond_4

    .line 1018
    :cond_2
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1019
    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    move v5, v6

    .line 1070
    .end local v4    # "endIndex":I
    .end local v6    # "index":I
    .end local v10    # "rest":I
    .end local v12    # "startIndex":I
    .restart local v5    # "index":I
    :goto_2
    const/16 v14, 0x2c

    if-ne v2, v14, :cond_e

    .line 1071
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1072
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1073
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_0

    .line 1009
    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v5    # "index":I
    .restart local v4    # "endIndex":I
    .restart local v6    # "index":I
    .restart local v10    # "rest":I
    .restart local v12    # "startIndex":I
    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1010
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1011
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1021
    .restart local v3    # "dateVal":Ljava/util/Date;
    :cond_4
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1022
    add-int/lit8 v4, v4, 0x1

    .line 1023
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 1025
    :cond_5
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1027
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1030
    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v4    # "endIndex":I
    .end local v10    # "rest":I
    .end local v12    # "startIndex":I
    :cond_6
    const/16 v14, 0x2d

    if-eq v2, v14, :cond_7

    const/16 v14, 0x30

    if-lt v2, v14, :cond_d

    const/16 v14, 0x39

    if-gt v2, v14, :cond_d

    .line 1031
    :cond_7
    const-wide/16 v8, 0x0

    .line 1033
    .local v8, "millis":J
    const/4 v7, 0x0

    .line 1034
    .local v7, "negative":Z
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_14

    .line 1035
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1036
    const/4 v7, 0x1

    .line 1039
    :goto_3
    const/16 v14, 0x30

    if-lt v2, v14, :cond_a

    const/16 v14, 0x39

    if-gt v2, v14, :cond_a

    .line 1040
    add-int/lit8 v14, v2, -0x30

    int-to-long v8, v14

    .line 1042
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1043
    const/16 v14, 0x30

    if-lt v2, v14, :cond_8

    const/16 v14, 0x39

    if-gt v2, v14, :cond_8

    .line 1044
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v8

    add-int/lit8 v16, v2, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v14, v16

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_4

    .line 1046
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_8
    const/16 v14, 0x2c

    if-eq v2, v14, :cond_9

    const/16 v14, 0x7d

    if-ne v2, v14, :cond_13

    .line 1047
    :cond_9
    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v5, v6

    .line 1054
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_a
    :goto_5
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gez v14, :cond_b

    .line 1055
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1056
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1059
    :cond_b
    if-eqz v7, :cond_c

    .line 1060
    neg-long v8, v8

    .line 1063
    :cond_c
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1064
    .restart local v3    # "dateVal":Ljava/util/Date;
    goto/16 :goto_2

    .line 1065
    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v5    # "index":I
    .end local v7    # "negative":Z
    .end local v8    # "millis":J
    .restart local v6    # "index":I
    :cond_d
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1067
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1077
    .end local v6    # "index":I
    .restart local v3    # "dateVal":Ljava/util/Date;
    .restart local v5    # "index":I
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1078
    const/16 v14, 0x2c

    if-ne v2, v14, :cond_f

    .line 1079
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1080
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1095
    :goto_6
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1081
    :cond_f
    const/16 v14, 0x5d

    if-ne v2, v14, :cond_10

    .line 1082
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1083
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 1084
    :cond_10
    const/16 v14, 0x7d

    if-ne v2, v14, :cond_11

    .line 1085
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1086
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    .line 1087
    :cond_11
    const/16 v14, 0x1a

    if-ne v2, v14, :cond_12

    .line 1088
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_6

    .line 1090
    :cond_12
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1091
    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1092
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1093
    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v5    # "index":I
    .restart local v6    # "index":I
    .restart local v7    # "negative":Z
    .restart local v8    # "millis":J
    :cond_13
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_14
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_3
.end method

.method public scanFieldInt([C)I
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v3, 0x1

    const/16 v13, 0x7d

    const/16 v12, 0x2c

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 764
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 765
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 766
    .local v6, "startPos":I
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 768
    .local v5, "startChar":C
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v9, v10, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v9

    if-nez v9, :cond_1

    .line 769
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 873
    :cond_0
    :goto_0
    return v7

    .line 773
    :cond_1
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v10, p1

    add-int v1, v9, v10

    .line 775
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 777
    .local v0, "ch":C
    const/16 v9, 0x22

    if-ne v0, v9, :cond_3

    move v4, v3

    .line 779
    .local v4, "quote":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 780
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 783
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_4

    .line 784
    .local v3, "negative":Z
    :goto_2
    if-eqz v3, :cond_15

    .line 785
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 789
    :goto_3
    const/16 v9, 0x30

    if-lt v0, v9, :cond_d

    const/16 v9, 0x39

    if-gt v0, v9, :cond_d

    .line 790
    add-int/lit8 v7, v0, -0x30

    .line 792
    .local v7, "value":I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 793
    const/16 v9, 0x30

    if-lt v0, v9, :cond_5

    const/16 v9, 0x39

    if-gt v0, v9, :cond_5

    .line 794
    mul-int/lit8 v9, v7, 0xa

    add-int/lit8 v10, v0, -0x30

    add-int v7, v9, v10

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_4

    .end local v1    # "index":I
    .end local v3    # "negative":Z
    .end local v4    # "quote":Z
    .end local v7    # "value":I
    .restart local v2    # "index":I
    :cond_3
    move v4, v8

    .line 777
    goto :goto_1

    .restart local v4    # "quote":Z
    :cond_4
    move v3, v8

    .line 783
    goto :goto_2

    .line 795
    .restart local v3    # "negative":Z
    .restart local v7    # "value":I
    :cond_5
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6

    .line 796
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 797
    goto :goto_0

    .line 803
    :cond_6
    if-gez v7, :cond_7

    .line 804
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 805
    goto :goto_0

    .line 808
    :cond_7
    if-eqz v4, :cond_9

    .line 809
    const/16 v9, 0x22

    if-eq v0, v9, :cond_8

    .line 810
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 811
    goto :goto_0

    .line 813
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 818
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_9
    :goto_5
    if-eq v0, v12, :cond_a

    if-ne v0, v13, :cond_b

    .line 819
    :cond_a
    add-int/lit8 v9, v2, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 834
    if-ne v0, v12, :cond_e

    .line 835
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 836
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 837
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 838
    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    .line 821
    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 822
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 823
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_5

    .line 825
    :cond_c
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 826
    goto/16 :goto_0

    .line 830
    .end local v2    # "index":I
    .end local v7    # "value":I
    .restart local v1    # "index":I
    :cond_d
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 831
    goto/16 :goto_0

    .line 841
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v7    # "value":I
    :cond_e
    if-ne v0, v13, :cond_f

    .line 842
    add-int/lit8 v9, v2, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 843
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 845
    :goto_6
    if-ne v0, v12, :cond_10

    .line 846
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 847
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 870
    :goto_7
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 873
    :cond_f
    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    .line 849
    :cond_10
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_11

    .line 850
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 851
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 853
    :cond_11
    if-ne v0, v13, :cond_12

    .line 854
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 855
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 857
    :cond_12
    const/16 v9, 0x1a

    if-ne v0, v9, :cond_13

    .line 858
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_7

    .line 860
    :cond_13
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 861
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 862
    goto :goto_6

    .line 864
    :cond_14
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 865
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 866
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 867
    goto/16 :goto_0

    .end local v7    # "value":I
    :cond_15
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_3
.end method

.method public scanFieldLong([C)J
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    .line 1339
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1340
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1341
    .local v6, "startPos":I
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1343
    .local v5, "startChar":C
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v10, v11, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1344
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1345
    const-wide/16 v8, 0x0

    .line 1449
    :cond_0
    :goto_0
    return-wide v8

    .line 1348
    :cond_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v11, p1

    add-int v1, v10, v11

    .line 1350
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1352
    .local v0, "ch":C
    const/16 v10, 0x22

    if-ne v0, v10, :cond_3

    const/4 v4, 0x1

    .line 1353
    .local v4, "quote":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 1354
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1357
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/4 v3, 0x0

    .line 1358
    .local v3, "negative":Z
    const/16 v10, 0x2d

    if-ne v0, v10, :cond_16

    .line 1359
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1360
    const/4 v3, 0x1

    .line 1364
    :goto_2
    const/16 v10, 0x30

    if-lt v0, v10, :cond_c

    const/16 v10, 0x39

    if-gt v0, v10, :cond_c

    .line 1365
    add-int/lit8 v10, v0, -0x30

    int-to-long v8, v10

    .line 1367
    .local v8, "value":J
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1368
    const/16 v10, 0x30

    if-lt v0, v10, :cond_4

    const/16 v10, 0x39

    if-gt v0, v10, :cond_4

    .line 1369
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    add-int/lit8 v12, v0, -0x30

    int-to-long v12, v12

    add-long v8, v10, v12

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_3

    .line 1352
    .end local v1    # "index":I
    .end local v3    # "negative":Z
    .end local v4    # "quote":Z
    .end local v8    # "value":J
    .restart local v2    # "index":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1370
    .restart local v3    # "negative":Z
    .restart local v4    # "quote":Z
    .restart local v8    # "value":J
    :cond_4
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_5

    .line 1371
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1372
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1374
    :cond_5
    if-eqz v4, :cond_15

    .line 1375
    const/16 v10, 0x22

    if-eq v0, v10, :cond_6

    .line 1376
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1377
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1379
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1383
    :goto_4
    const/16 v10, 0x2c

    if-eq v0, v10, :cond_7

    const/16 v10, 0x7d

    if-ne v0, v10, :cond_8

    .line 1384
    :cond_7
    add-int/lit8 v10, v1, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1390
    :cond_8
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v8, v10

    if-nez v10, :cond_a

    if-eqz v3, :cond_a

    :cond_9
    const/4 v7, 0x1

    .line 1391
    .local v7, "valid":Z
    :goto_5
    if-nez v7, :cond_b

    .line 1392
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1393
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1394
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1395
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 1390
    .end local v7    # "valid":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .restart local v7    # "valid":Z
    :cond_b
    move v2, v1

    .line 1405
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :goto_6
    const/16 v10, 0x2c

    if-ne v0, v10, :cond_d

    .line 1406
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1407
    const/4 v10, 0x3

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1408
    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1409
    if-eqz v3, :cond_0

    neg-long v8, v8

    goto/16 :goto_0

    .line 1398
    .end local v2    # "index":I
    .end local v7    # "valid":Z
    .end local v8    # "value":J
    .restart local v1    # "index":I
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1399
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1400
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1401
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 1410
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v7    # "valid":Z
    .restart local v8    # "value":J
    :cond_d
    const/16 v10, 0x7d

    if-ne v0, v10, :cond_13

    .line 1411
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1413
    :goto_7
    const/16 v10, 0x2c

    if-ne v0, v10, :cond_e

    .line 1414
    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1415
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1437
    :goto_8
    const/4 v10, 0x4

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1449
    if-eqz v3, :cond_0

    neg-long v8, v8

    goto/16 :goto_0

    .line 1417
    :cond_e
    const/16 v10, 0x5d

    if-ne v0, v10, :cond_f

    .line 1418
    const/16 v10, 0xf

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1419
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    .line 1421
    :cond_f
    const/16 v10, 0x7d

    if-ne v0, v10, :cond_10

    .line 1422
    const/16 v10, 0xd

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1423
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    .line 1425
    :cond_10
    const/16 v10, 0x1a

    if-ne v0, v10, :cond_11

    .line 1426
    const/16 v10, 0x14

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_8

    .line 1428
    :cond_11
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1429
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 1431
    :cond_12
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1432
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1433
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1434
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 1439
    :cond_13
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1440
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1441
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1442
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_6

    .line 1444
    :cond_14
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1445
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .end local v7    # "valid":Z
    :cond_15
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_4

    .end local v1    # "index":I
    .end local v8    # "value":J
    .restart local v2    # "index":I
    :cond_16
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_2
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 16
    .param p1, "fieldName"    # [C

    .prologue
    .line 877
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 878
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 879
    .local v11, "startPos":I
    move-object/from16 v0, p0

    iget-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 882
    .local v9, "startChar":C
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-nez v14, :cond_1

    .line 883
    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 887
    :cond_0
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    .line 979
    :goto_1
    return-object v12

    .line 894
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v6, v14, v15

    .line 896
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 897
    .local v1, "ch":C
    const/16 v14, 0x22

    if-eq v1, v14, :cond_2

    .line 898
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 905
    :cond_2
    move v10, v7

    .line 906
    .local v10, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 907
    .local v4, "endIndex":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_3

    .line 908
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 911
    :cond_3
    sub-int v14, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    .line 912
    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 914
    :goto_2
    const/4 v8, 0x0

    .line 915
    .local v8, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_4

    .line 916
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_4

    .line 917
    add-int/lit8 v8, v8, 0x1

    .line 915
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 922
    :cond_4
    rem-int/lit8 v14, v8, 0x2

    if-nez v14, :cond_7

    .line 928
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    sub-int v3, v4, v14

    .line 929
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 931
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    .line 934
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_5
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 937
    :goto_4
    const/16 v14, 0x2c

    if-eq v1, v14, :cond_6

    const/16 v14, 0x7d

    if-ne v1, v14, :cond_8

    .line 938
    :cond_6
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 939
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 940
    move-object v12, v13

    .line 953
    .local v12, "strVal":Ljava/lang/String;
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_a

    .line 954
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 955
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    .line 925
    .end local v12    # "strVal":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "slashCount":I
    :cond_7
    const/16 v14, 0x22

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 926
    goto :goto_2

    .line 942
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 943
    add-int/lit8 v4, v4, 0x1

    .line 944
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 946
    :cond_9
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 959
    .restart local v12    # "strVal":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 960
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_b

    .line 961
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 962
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 977
    :goto_5
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    .line 963
    :cond_b
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_c

    .line 964
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 965
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 966
    :cond_c
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_d

    .line 967
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 968
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 969
    :cond_d
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_e

    .line 970
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_5

    .line 972
    :cond_e
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 973
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 974
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 15
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1191
    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v14, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v13, v14, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1192
    const/4 v13, -0x2

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1193
    const/4 v8, 0x0

    .line 1335
    :goto_0
    return-object v8

    .line 1196
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v8

    .line 1210
    .local v8, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v14, v0

    add-int v6, v13, v14

    .line 1212
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1214
    .local v1, "ch":C
    const/16 v13, 0x5b

    if-ne v1, v13, :cond_b

    .line 1215
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v7, v6

    .line 1218
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_1
    const/16 v13, 0x22

    if-ne v1, v13, :cond_5

    .line 1219
    move v11, v7

    .line 1220
    .local v11, "startIndex":I
    const/16 v13, 0x22

    invoke-virtual {p0, v13, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 1221
    .local v4, "endIndex":I
    const/4 v13, -0x1

    if-ne v4, v13, :cond_1

    .line 1222
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "unclosed str"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1225
    :cond_1
    sub-int v13, v4, v11

    invoke-virtual {p0, v11, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 1226
    .local v12, "stringVal":Ljava/lang/String;
    const/16 v13, 0x5c

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 1228
    :goto_2
    const/4 v9, 0x0

    .line 1229
    .local v9, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_2

    .line 1230
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_2

    .line 1231
    add-int/lit8 v9, v9, 0x1

    .line 1229
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1236
    :cond_2
    rem-int/lit8 v13, v9, 0x2

    if-nez v13, :cond_4

    .line 1242
    sub-int v3, v4, v11

    .line 1243
    .local v3, "chars_len":I
    invoke-virtual {p0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 1245
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v12

    .line 1248
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v9    # "slashCount":I
    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 1249
    .end local v7    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1251
    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v4    # "endIndex":I
    .end local v11    # "startIndex":I
    .end local v12    # "stringVal":Ljava/lang/String;
    :goto_4
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_9

    .line 1265
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v7, v6

    .line 1266
    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1

    .line 1239
    .restart local v4    # "endIndex":I
    .restart local v5    # "i":I
    .restart local v9    # "slashCount":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "stringVal":Ljava/lang/String;
    :cond_4
    const/16 v13, 0x22

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {p0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 1240
    goto :goto_2

    .line 1252
    .end local v4    # "endIndex":I
    .end local v5    # "i":I
    .end local v9    # "slashCount":I
    .end local v11    # "startIndex":I
    .end local v12    # "stringVal":Ljava/lang/String;
    :cond_5
    const/16 v13, 0x6e

    if-ne v1, v13, :cond_6

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v14, "ull"

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1253
    add-int/lit8 v6, v7, 0x3

    .line 1254
    .end local v7    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1255
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1256
    :cond_6
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_8

    .line 1257
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1289
    :cond_7
    :goto_5
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1290
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_d

    .line 1291
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1292
    const/4 v13, 0x3

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1260
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_8
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1261
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1269
    :cond_9
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_a

    .line 1270
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1271
    :goto_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1272
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_6

    .line 1277
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_a
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1278
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1280
    :cond_b
    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v14, "ull"

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1281
    add-int/lit8 v6, v7, 0x3

    .line 1282
    .end local v7    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1283
    const/4 v8, 0x0

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_5

    .line 1285
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_c
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1286
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1294
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_d
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_14

    .line 1295
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1297
    :cond_e
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_f

    .line 1298
    const/16 v13, 0x10

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1299
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1329
    :goto_7
    const/4 v13, 0x4

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1301
    :cond_f
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_10

    .line 1302
    const/16 v13, 0xf

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1303
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1305
    :cond_10
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_11

    .line 1306
    const/16 v13, 0xd

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1307
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1309
    :cond_11
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_12

    .line 1310
    const/16 v13, 0x14

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1311
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1314
    :cond_12
    const/4 v10, 0x0

    .line 1315
    .local v10, "space":Z
    :goto_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1316
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1317
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1318
    const/4 v10, 0x1

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_8

    .line 1320
    :cond_13
    if-nez v10, :cond_e

    .line 1324
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1325
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1331
    .end local v10    # "space":Z
    :cond_14
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1332
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 15
    .param p1, "fieldName"    # [C
    .param p2, "argTypesCount"    # I
    .param p3, "typeSymbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 2071
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2072
    .local v7, "startPos":I
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2074
    .local v6, "starChar":C
    :goto_0
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2075
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2080
    :cond_0
    if-eqz p1, :cond_4

    .line 2081
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2082
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2083
    const/4 v12, -0x2

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2084
    const/4 v11, 0x0

    .line 2170
    :goto_1
    return-object v11

    .line 2087
    :cond_1
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v13, v0

    add-int v4, v12, v13

    .line 2088
    .local v4, "offset":I
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "ch":C
    move v4, v5

    .line 2089
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :goto_2
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2090
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 2093
    :cond_2
    const/16 v12, 0x3a

    if-ne v2, v12, :cond_3

    .line 2094
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v5

    .line 2100
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :goto_3
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2101
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_3

    .line 2096
    :cond_3
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2097
    const/4 v11, 0x0

    goto :goto_1

    .line 2104
    .end local v2    # "ch":C
    .end local v4    # "offset":I
    :cond_4
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v12, 0x1

    .line 2105
    .restart local v4    # "offset":I
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2108
    .restart local v2    # "ch":C
    :cond_5
    const/16 v12, 0x5b

    if-ne v2, v12, :cond_6

    .line 2109
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2110
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2120
    if-ltz p2, :cond_8

    move/from16 v0, p2

    new-array v11, v0, [Ljava/lang/String;

    .line 2121
    .local v11, "types":[Ljava/lang/String;
    :goto_4
    const/4 v9, 0x0

    .line 2123
    .local v9, "typeIndex":I
    :goto_5
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_5

    .line 2111
    .end local v9    # "typeIndex":I
    .end local v11    # "types":[Ljava/lang/String;
    :cond_6
    const/16 v12, 0x6e

    if-ne v2, v12, :cond_7

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v13, "ull"

    iget v14, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2112
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2113
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2114
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2116
    :cond_7
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2117
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2120
    :cond_8
    const/4 v12, 0x4

    new-array v11, v12, [Ljava/lang/String;

    goto :goto_4

    .line 2127
    .restart local v9    # "typeIndex":I
    .restart local v11    # "types":[Ljava/lang/String;
    :cond_9
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x22

    if-eq v12, v13, :cond_a

    .line 2128
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2129
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2130
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2131
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2134
    :cond_a
    const/16 v12, 0x22

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v8

    .line 2135
    .local v8, "type":Ljava/lang/String;
    array-length v12, v11

    if-ne v9, v12, :cond_b

    .line 2136
    array-length v12, v11

    array-length v13, v11

    shr-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 2137
    .local v3, "newCapacity":I
    new-array v1, v3, [Ljava/lang/String;

    .line 2138
    .local v1, "array":[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2139
    move-object v11, v1

    .line 2141
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "newCapacity":I
    :cond_b
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "typeIndex":I
    .local v10, "typeIndex":I
    aput-object v8, v11, v9

    .line 2142
    :goto_6
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2143
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_6

    .line 2145
    :cond_c
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x2c

    if-ne v12, v13, :cond_d

    .line 2146
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    move v9, v10

    .line 2147
    .end local v10    # "typeIndex":I
    .restart local v9    # "typeIndex":I
    goto/16 :goto_5

    .line 2151
    .end local v9    # "typeIndex":I
    .restart local v10    # "typeIndex":I
    :cond_d
    array-length v12, v11

    if-eq v12, v10, :cond_e

    .line 2152
    new-array v1, v10, [Ljava/lang/String;

    .line 2153
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v1, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2154
    move-object v11, v1

    .line 2157
    .end local v1    # "array":[Ljava/lang/String;
    :cond_e
    :goto_7
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_7

    .line 2161
    :cond_f
    iget-char v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x5d

    if-ne v12, v13, :cond_10

    .line 2162
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_1

    .line 2164
    :cond_10
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2165
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2166
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2167
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public scanFieldSymbol([C)J
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v13, 0x7d

    const/16 v12, 0x2c

    const/16 v11, 0x22

    const/4 v10, -0x1

    const-wide/16 v6, 0x0

    .line 1101
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1103
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1104
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1167
    :goto_0
    return-wide v2

    .line 1108
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v1, v5, v8

    .line 1110
    .local v1, "index":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1111
    .local v0, "ch":C
    if-eq v0, v11, :cond_1

    .line 1112
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1113
    goto :goto_0

    .line 1116
    :cond_1
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .local v2, "hash":J
    move v1, v4

    .line 1118
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1119
    if-ne v0, v11, :cond_2

    .line 1120
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1121
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1133
    :goto_2
    if-ne v0, v12, :cond_4

    .line 1134
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1135
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 1123
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v4, v5, :cond_3

    .line 1124
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1125
    goto :goto_0

    .line 1128
    :cond_3
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 1129
    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    move v1, v4

    .end local v4    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 1137
    .end local v1    # "index":I
    .restart local v4    # "index":I
    :cond_4
    if-ne v0, v13, :cond_9

    .line 1138
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 1141
    if-ne v0, v12, :cond_5

    .line 1142
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1143
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1156
    :goto_3
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 1144
    :cond_5
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_6

    .line 1145
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1146
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1147
    :cond_6
    if-ne v0, v13, :cond_7

    .line 1148
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1149
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1150
    :cond_7
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_8

    .line 1151
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1153
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1154
    goto/16 :goto_0

    .line 1158
    :cond_9
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1159
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1160
    goto/16 :goto_2

    .line 1162
    :cond_a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1163
    goto/16 :goto_0
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 3
    .param p1, "strict"    # Z

    .prologue
    .line 209
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v0, v1, v2

    .line 210
    .local v0, "rest":I
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    return v1
.end method

.method public final scanInt(C)I
    .locals 12
    .param p1, "expectNext"    # C

    .prologue
    const/4 v1, 0x1

    const/16 v11, 0x22

    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 1587
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1589
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1590
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .local v0, "chLocal":C
    move v2, v3

    .line 1592
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1593
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 1596
    :cond_0
    if-ne v0, v11, :cond_2

    move v4, v1

    .line 1598
    .local v4, "quote":Z
    :goto_1
    if-eqz v4, :cond_14

    .line 1599
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1602
    :goto_2
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_3

    .line 1603
    .local v1, "negative":Z
    :goto_3
    if-eqz v1, :cond_1

    .line 1604
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1608
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v7, 0x30

    if-lt v0, v7, :cond_7

    const/16 v7, 0x39

    if-gt v0, v7, :cond_7

    .line 1609
    add-int/lit8 v5, v0, -0x30

    .local v5, "value":I
    move v2, v3

    .line 1611
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1612
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 1613
    mul-int/lit8 v7, v5, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v5, v7, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_4

    .end local v1    # "negative":Z
    .end local v4    # "quote":Z
    .end local v5    # "value":I
    :cond_2
    move v4, v6

    .line 1596
    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "quote":Z
    :cond_3
    move v1, v6

    .line 1602
    goto :goto_3

    .line 1614
    .restart local v1    # "negative":Z
    .restart local v5    # "value":I
    :cond_4
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_5

    .line 1615
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 1684
    .end local v5    # "value":I
    :goto_5
    return v5

    .line 1618
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_5
    if-eqz v4, :cond_13

    .line 1619
    if-eq v0, v11, :cond_6

    .line 1620
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 1621
    goto :goto_5

    .line 1623
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1629
    :goto_6
    if-gez v5, :cond_12

    .line 1630
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1631
    goto :goto_5

    .line 1633
    .end local v2    # "offset":I
    .end local v5    # "value":I
    .restart local v3    # "offset":I
    :cond_7
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 1634
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_d

    add-int/lit8 v3, v2, 0x1

    .line 1635
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 1636
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_d

    .line 1637
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1638
    const/4 v5, 0x0

    .line 1639
    .restart local v5    # "value":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1641
    if-eqz v4, :cond_8

    if-ne v0, v11, :cond_8

    .line 1642
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1646
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    :goto_7
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    .line 1647
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1648
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1649
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1650
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1651
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_5

    .line 1652
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    .line 1653
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1654
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1655
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1656
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1657
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_5

    .line 1658
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1659
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1660
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_7

    .line 1664
    :cond_b
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 1665
    goto/16 :goto_5

    .end local v2    # "offset":I
    .end local v5    # "value":I
    .restart local v3    # "offset":I
    :cond_c
    move v2, v3

    .line 1667
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_d
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1668
    goto/16 :goto_5

    .line 1679
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1680
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1672
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_8
    if-ne v0, p1, :cond_e

    .line 1673
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1674
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1675
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1676
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1677
    if-eqz v1, :cond_f

    neg-int v5, v5

    .end local v5    # "value":I
    :cond_f
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_5

    .line 1683
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_10
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1684
    if-eqz v1, :cond_11

    neg-int v5, v5

    .end local v5    # "value":I
    :cond_11
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_5

    .restart local v5    # "value":I
    :cond_12
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_8

    :cond_13
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_6

    .end local v1    # "negative":Z
    .end local v5    # "value":I
    :cond_14
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_2
.end method

.method public scanLong(C)J
    .locals 12
    .param p1, "seperator"    # C

    .prologue
    .line 1830
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1832
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1833
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1834
    .local v0, "chLocal":C
    const/16 v8, 0x22

    if-ne v0, v8, :cond_2

    const/4 v4, 0x1

    .line 1836
    .local v4, "quote":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1837
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1840
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_3

    const/4 v1, 0x1

    .line 1841
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 1842
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1846
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v8, 0x30

    if-lt v0, v8, :cond_b

    const/16 v8, 0x39

    if-gt v0, v8, :cond_b

    .line 1847
    add-int/lit8 v8, v0, -0x30

    int-to-long v6, v8

    .local v6, "value":J
    move v2, v3

    .line 1849
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1850
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    .line 1851
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1834
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1840
    .restart local v4    # "quote":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1852
    .restart local v1    # "negative":Z
    .restart local v6    # "value":J
    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_5

    .line 1853
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1854
    const-wide/16 v6, 0x0

    move v2, v3

    .line 1925
    .end local v3    # "offset":I
    .end local v6    # "value":J
    .restart local v2    # "offset":I
    :goto_3
    return-wide v6

    .line 1856
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_5
    if-eqz v4, :cond_14

    .line 1857
    const/16 v8, 0x22

    if-eq v0, v8, :cond_6

    .line 1858
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1859
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1861
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1868
    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_7

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-nez v8, :cond_8

    if-eqz v1, :cond_8

    :cond_7
    const/4 v5, 0x1

    .line 1869
    .local v5, "valid":Z
    :goto_5
    if-nez v5, :cond_9

    .line 1870
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1871
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 1868
    .end local v5    # "valid":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .restart local v5    # "valid":Z
    :cond_9
    move v3, v2

    .line 1912
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_6
    if-ne v0, p1, :cond_12

    .line 1913
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1914
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1915
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1916
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1917
    if-eqz v1, :cond_a

    neg-long v6, v6

    .end local v6    # "value":J
    :cond_a
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1873
    .end local v2    # "offset":I
    .end local v5    # "valid":Z
    .restart local v3    # "offset":I
    :cond_b
    const/16 v8, 0x6e

    if-ne v0, v8, :cond_10

    add-int/lit8 v2, v3, 0x1

    .line 1874
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v9, 0x75

    if-ne v8, v9, :cond_11

    add-int/lit8 v3, v2, 0x1

    .line 1875
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_10

    add-int/lit8 v2, v3, 0x1

    .line 1876
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_11

    .line 1877
    const/4 v8, 0x5

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1878
    const-wide/16 v6, 0x0

    .line 1879
    .restart local v6    # "value":J
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1881
    if-eqz v4, :cond_c

    const/16 v8, 0x22

    if-ne v0, v8, :cond_c

    .line 1882
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1886
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_c
    :goto_7
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_d

    .line 1887
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1888
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1889
    const/4 v8, 0x5

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1890
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1891
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .line 1892
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_d
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_e

    .line 1893
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1894
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1895
    const/4 v8, 0x5

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1896
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1897
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .line 1898
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1899
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1900
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_7

    .line 1904
    :cond_f
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1905
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .end local v2    # "offset":I
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_10
    move v2, v3

    .line 1907
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_11
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1908
    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 1919
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "valid":Z
    .restart local v6    # "value":J
    :cond_12
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1920
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1921
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_6

    .line 1924
    :cond_13
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .line 1925
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .end local v2    # "offset":I
    .end local v5    # "valid":Z
    .restart local v3    # "offset":I
    :cond_14
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    .line 628
    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    .line 629
    .local v0, "hour":I
    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    .line 630
    .local v1, "minute":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

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

    .prologue
    const/16 v4, 0x30

    .line 637
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 638
    return-void
.end method

.method protected setTimeZone(CCCCC)V
    .locals 5
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C
    .param p4, "t3"    # C
    .param p5, "t4"    # C

    .prologue
    .line 641
    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    .line 643
    .local v2, "timeZoneOffset":I
    add-int/lit8 v3, p4, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p5, -0x30

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    .line 645
    const/16 v3, 0x2d

    if-ne p1, v3, :cond_0

    .line 646
    neg-int v2, v2

    .line 649
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 650
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 652
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 653
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 656
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 149
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 159
    :goto_0
    return-object v1

    .line 154
    :cond_0
    new-array v0, p2, [C

    .line 155
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 156
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 159
    .end local v0    # "chars":[C
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 164
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-array v0, p2, [C

    .line 169
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method
