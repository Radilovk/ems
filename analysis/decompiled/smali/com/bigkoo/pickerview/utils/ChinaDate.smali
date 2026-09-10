.class public Lcom/bigkoo/pickerview/utils/ChinaDate;
.super Ljava/lang/Object;
.source "ChinaDate.java"


# static fields
.field private static final Animals:[Ljava/lang/String;

.field private static final Gan:[Ljava/lang/String;

.field private static final Zhi:[Ljava/lang/String;

.field private static final lunarInfo:[J

.field private static final nStr1:[Ljava/lang/String;

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const/16 v0, 0xc9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->lunarInfo:[J

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u6b63"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e8c"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u4e09"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u814a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->nStr1:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u7532"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e59"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e19"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u4e01"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u620a"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u5df1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5e9a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u8f9b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u58ec"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u7678"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->Gan:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u5b50"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e11"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5bc5"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u536f"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u8fb0"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u5df3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5348"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u672a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u7533"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u9149"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u620c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u4ea5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->Zhi:[Ljava/lang/String;

    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u9f20"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u725b"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u864e"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u5154"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u9f99"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u7f8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u7334"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u732a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->Animals:[Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy\u5e74M\u6708d\u65e5 EEEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->sdf:Ljava/text/SimpleDateFormat;

    return-void

    .line 23
    nop

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
        0x14b63
        0x9370
        0x49f8
        0x4970
        0x64b0
        0x168a6
        0xea50
        0x6b20
        0x1a6c4
        0xaae0
        0xa2e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x14b55
        0x4b60
        0xa570
        0x54e4
        0xd160
        0xe968
        0xd520
        0xdaa0
        0x16aa6
        0x56d0
        0x4ae0
        0xa9d4
        0xa2d0
        0xd150
        0xf252
        0xd520
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final AnimalsYear(I)Ljava/lang/String;
    .locals 2
    .param p0, "y"    # I

    .prologue
    .line 117
    sget-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->Animals:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final calElement(III)[J
    .locals 16
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # I

    .prologue
    .line 151
    const/4 v10, 0x7

    new-array v5, v10, [J

    .line 152
    .local v5, "nongDate":[J
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v7, 0x0

    .local v7, "temp":I
    const/4 v4, 0x0

    .line 153
    .local v4, "leap":I
    new-instance v10, Ljava/util/GregorianCalendar;

    const/16 v11, 0x76c

    const/4 v12, 0x0

    const/16 v13, 0x1f

    invoke-direct {v10, v11, v12, v13}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 154
    .local v2, "baseDate":Ljava/util/Date;
    new-instance v10, Ljava/util/GregorianCalendar;

    add-int/lit8 v11, p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v10, v0, v11, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 155
    .local v6, "objDate":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long v8, v10, v12

    .line 156
    .local v8, "offset":J
    const/4 v10, 0x5

    const-wide/16 v12, 0x28

    add-long/2addr v12, v8

    aput-wide v12, v5, v10

    .line 157
    const/4 v10, 0x4

    const-wide/16 v12, 0xe

    aput-wide v12, v5, v10

    .line 158
    const/16 v3, 0x76c

    :goto_0
    const/16 v10, 0x834

    if-ge v3, v10, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_0

    .line 159
    invoke-static {v3}, Lcom/bigkoo/pickerview/utils/ChinaDate;->lYearDays(I)I

    move-result v7

    .line 160
    int-to-long v10, v7

    sub-long/2addr v8, v10

    .line 161
    const/4 v10, 0x4

    aget-wide v12, v5, v10

    const-wide/16 v14, 0xc

    add-long/2addr v12, v14

    aput-wide v12, v5, v10

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_1

    .line 164
    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 165
    add-int/lit8 v3, v3, -0x1

    .line 166
    const/4 v10, 0x4

    aget-wide v12, v5, v10

    const-wide/16 v14, 0xc

    sub-long/2addr v12, v14

    aput-wide v12, v5, v10

    .line 168
    :cond_1
    const/4 v10, 0x0

    int-to-long v12, v3

    aput-wide v12, v5, v10

    .line 169
    const/4 v10, 0x3

    add-int/lit16 v11, v3, -0x748

    int-to-long v12, v11

    aput-wide v12, v5, v10

    .line 170
    invoke-static {v3}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v4

    .line 171
    const/4 v10, 0x6

    const-wide/16 v12, 0x0

    aput-wide v12, v5, v10

    .line 172
    const/4 v3, 0x1

    :goto_1
    const/16 v10, 0xd

    if-ge v3, v10, :cond_5

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_5

    .line 174
    if-lez v4, :cond_4

    add-int/lit8 v10, v4, 0x1

    if-ne v3, v10, :cond_4

    const/4 v10, 0x6

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 175
    add-int/lit8 v3, v3, -0x1

    .line 176
    const/4 v10, 0x6

    const-wide/16 v12, 0x1

    aput-wide v12, v5, v10

    .line 177
    const/4 v10, 0x0

    aget-wide v10, v5, v10

    long-to-int v10, v10

    invoke-static {v10}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v7

    .line 182
    :goto_2
    const/4 v10, 0x6

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    add-int/lit8 v10, v4, 0x1

    if-ne v3, v10, :cond_2

    .line 183
    const/4 v10, 0x6

    const-wide/16 v12, 0x0

    aput-wide v12, v5, v10

    .line 184
    :cond_2
    int-to-long v10, v7

    sub-long/2addr v8, v10

    .line 185
    const/4 v10, 0x6

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 186
    const/4 v10, 0x4

    aget-wide v12, v5, v10

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    aput-wide v12, v5, v10

    .line 172
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_4
    const/4 v10, 0x0

    aget-wide v10, v5, v10

    long-to-int v10, v10

    invoke-static {v10, v3}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v7

    goto :goto_2

    .line 188
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    if-lez v4, :cond_6

    add-int/lit8 v10, v4, 0x1

    if-ne v3, v10, :cond_6

    .line 189
    const/4 v10, 0x6

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 190
    const/4 v10, 0x6

    const-wide/16 v12, 0x0

    aput-wide v12, v5, v10

    .line 197
    :cond_6
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_7

    .line 198
    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 199
    add-int/lit8 v3, v3, -0x1

    .line 200
    const/4 v10, 0x4

    aget-wide v12, v5, v10

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    aput-wide v12, v5, v10

    .line 202
    :cond_7
    const/4 v10, 0x1

    int-to-long v12, v3

    aput-wide v12, v5, v10

    .line 203
    const/4 v10, 0x2

    const-wide/16 v12, 0x1

    add-long/2addr v12, v8

    aput-wide v12, v5, v10

    .line 204
    return-object v5

    .line 192
    :cond_8
    const/4 v10, 0x6

    const-wide/16 v12, 0x1

    aput-wide v12, v5, v10

    .line 193
    add-int/lit8 v3, v3, -0x1

    .line 194
    const/4 v10, 0x4

    aget-wide v12, v5, v10

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    aput-wide v12, v5, v10

    goto :goto_3
.end method

.method public static final cyclical(I)Ljava/lang/String;
    .locals 2
    .param p0, "y"    # I

    .prologue
    .line 137
    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 138
    .local v0, "num":I
    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bigkoo/pickerview/utils/ChinaDate;->Gan:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bigkoo/pickerview/utils/ChinaDate;->Zhi:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getChinaDate(I)Ljava/lang/String;
    .locals 6
    .param p0, "day"    # I

    .prologue
    .line 208
    const-string v0, ""

    .line 209
    .local v0, "a":Ljava/lang/String;
    const/16 v4, 0xa

    if-ne p0, v4, :cond_0

    .line 210
    const-string/jumbo v4, "\u521d\u5341"

    move-object v1, v0

    .line 254
    .end local v0    # "a":Ljava/lang/String;
    .local v1, "a":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 211
    .end local v1    # "a":Ljava/lang/String;
    .restart local v0    # "a":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x14

    if-ne p0, v4, :cond_1

    .line 212
    const-string/jumbo v4, "\u4e8c\u5341"

    move-object v1, v0

    .end local v0    # "a":Ljava/lang/String;
    .restart local v1    # "a":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v1    # "a":Ljava/lang/String;
    .restart local v0    # "a":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x1e

    if-ne p0, v4, :cond_2

    .line 214
    const-string/jumbo v4, "\u4e09\u5341"

    move-object v1, v0

    .end local v0    # "a":Ljava/lang/String;
    .restart local v1    # "a":Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v1    # "a":Ljava/lang/String;
    .restart local v0    # "a":Ljava/lang/String;
    :cond_2
    div-int/lit8 v3, p0, 0xa

    .line 216
    .local v3, "two":I
    if-nez v3, :cond_3

    .line 217
    const-string/jumbo v0, "\u521d"

    .line 218
    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 219
    const-string/jumbo v0, "\u5341"

    .line 220
    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 221
    const-string/jumbo v0, "\u5eff"

    .line 222
    :cond_5
    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 223
    const-string/jumbo v0, "\u4e09"

    .line 224
    :cond_6
    rem-int/lit8 v2, p0, 0xa

    .line 225
    .local v2, "one":I
    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .end local v0    # "a":Ljava/lang/String;
    .restart local v1    # "a":Ljava/lang/String;
    move-object v4, v0

    .line 254
    goto :goto_0

    .line 227
    .end local v1    # "a":Ljava/lang/String;
    .restart local v0    # "a":Ljava/lang/String;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    goto :goto_1

    .line 230
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e8c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    goto :goto_1

    .line 233
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e09"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    goto :goto_1

    .line 236
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u56db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    goto :goto_1

    .line 239
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e94"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    goto :goto_1

    .line 242
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u516d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_1

    .line 245
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e03"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    goto/16 :goto_1

    .line 248
    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u516b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    goto/16 :goto_1

    .line 251
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e5d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getCurrentLunarDate()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 258
    sget-object v6, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 259
    .local v4, "today":Ljava/util/Calendar;
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 260
    .local v5, "year":I
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 261
    .local v2, "month":I
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 262
    .local v0, "date":I
    invoke-static {v5, v2, v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->calElement(III)[J

    move-result-object v1

    .line 263
    .local v1, "l":[J
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v3, "sToday":Ljava/lang/StringBuffer;
    :try_start_0
    sget-object v6, Lcom/bigkoo/pickerview/utils/ChinaDate;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v6, " \u519c\u5386"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-static {v5}, Lcom/bigkoo/pickerview/utils/ChinaDate;->cyclical(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const/16 v6, 0x28

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    invoke-static {v5}, Lcom/bigkoo/pickerview/utils/ChinaDate;->AnimalsYear(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string v6, ")\u5e74"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    sget-object v6, Lcom/bigkoo/pickerview/utils/ChinaDate;->nStr1:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-wide v8, v1, v7

    long-to-int v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const-string/jumbo v6, "\u6708"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const/4 v6, 0x2

    aget-wide v6, v1, v6

    long-to-int v6, v6

    invoke-static {v6}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getChinaDate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 276
    const/4 v3, 0x0

    .line 274
    return-object v6

    .line 276
    :catchall_0
    move-exception v6

    const/4 v3, 0x0

    .line 277
    throw v6
.end method

.method public static getLunarDays(I)Ljava/util/ArrayList;
    .locals 3
    .param p0, "maxDay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p0, :cond_0

    .line 348
    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getChinaDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-object v0
.end method

.method public static getLunarYearText(I)Ljava/lang/String;
    .locals 3
    .param p0, "lunarYear"    # I

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bigkoo/pickerview/utils/ChinaDate;->Gan:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x4

    rem-int/lit8 v2, v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bigkoo/pickerview/utils/ChinaDate;->Zhi:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x4

    rem-int/lit8 v2, v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonths(I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "baseMonths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/bigkoo/pickerview/utils/ChinaDate;->nStr1:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bigkoo/pickerview/utils/ChinaDate;->nStr1:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u95f0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bigkoo/pickerview/utils/ChinaDate;->nStr1:[Ljava/lang/String;

    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 336
    :cond_1
    return-object v0
.end method

.method public static getYears(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "startYear"    # I
    .param p1, "endYear"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, "years":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 317
    const-string v2, "%s(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarYearText(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-object v1
.end method

.method private static final lYearDays(I)I
    .locals 6
    .param p0, "y"    # I

    .prologue
    .line 62
    const/16 v1, 0x15c

    .line 63
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 64
    sget-object v2, Lcom/bigkoo/pickerview/utils/ChinaDate;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 63
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public static final leapDays(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 77
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    const/16 v0, 0x1e

    .line 83
    :goto_0
    return v0

    .line 81
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final leapMonth(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 93
    sget-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static final monthDays(II)I
    .locals 4
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 104
    sget-object v0, Lcom/bigkoo/pickerview/utils/ChinaDate;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 105
    const/16 v0, 0x1d

    .line 107
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public static oneDay(III)Ljava/lang/String;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 282
    invoke-static {p0, p1, p2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->calElement(III)[J

    move-result-object v0

    .line 283
    .local v0, "l":[J
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v1, "sToday":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v2, " \u519c\u5386"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->cyclical(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->AnimalsYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v2, ")\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    sget-object v2, Lcom/bigkoo/pickerview/utils/ChinaDate;->nStr1:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    long-to-int v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string/jumbo v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const/4 v2, 0x2

    aget-wide v2, v0, v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getChinaDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 296
    const/4 v1, 0x0

    .line 294
    return-object v2

    .line 296
    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    .line 297
    throw v2
.end method
