.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;
.super Ljava/lang/Object;
.source "BluetensProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;
    }
.end annotation


# static fields
.field public static final BURST_MAX_MS:I = 0x5

.field public static final BURST_US_MAX:I = 0xfa

.field public static final CARRIER_HZ:I = 0x3e8

.field public static final REST_MAX:I = 0x1e

.field public static final RISE_MAX_MS:I = 0x7d0

.field public static final SEC_MAX:I = 0xe10

.field public static final SEC_MIN:I = 0xa

.field public static final WORK_MAX:I = 0xa


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    return-void
.end method

.method static add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)V
    .registers 16

    .prologue
    const-wide/16 v12, 0x1

    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 146
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->addBursts(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)V

    .line 174
    :goto_12
    return-void

    .line 149
    :cond_13
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 150
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    mul-int/lit8 v4, v3, 0xa

    .line 151
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 152
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    iget v6, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    mul-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    goto :goto_12

    .line 155
    :cond_30
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v5, 0xa

    if-lt v3, v5, :cond_64

    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 156
    :goto_38
    div-int/lit8 v7, v3, 0x64

    move v6, v2

    .line 157
    :goto_3b
    if-ge v6, v7, :cond_66

    .line 158
    const/16 v3, 0x14

    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    add-int/lit8 v8, v6, 0x1

    mul-int/lit8 v8, v8, 0x3c

    div-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x28

    mul-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x64

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 159
    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    int-to-float v5, v5

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 157
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_3b

    :cond_64
    move v3, v2

    .line 155
    goto :goto_38

    .line 161
    :cond_66
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    int-to-double v8, v3

    mul-double/2addr v8, v10

    mul-int/lit8 v3, v7, 0x64

    int-to-double v6, v3

    sub-double v6, v8, v6

    .line 162
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    .line 163
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    if-lez v3, :cond_b2

    .line 164
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 165
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    iget v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    mul-int/lit8 v4, v4, 0xa

    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    iget v6, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    mul-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 169
    :goto_98
    const-wide/16 v2, 0x0

    .line 170
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 171
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->ms()D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 172
    goto :goto_a0

    .line 167
    :cond_b2
    iget v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    goto :goto_98

    .line 173
    :cond_bc
    iget v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    int-to-double v4, v1

    mul-double/2addr v4, v10

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    goto/16 :goto_12
.end method

.method static addBursts(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)V
    .registers 20

    .prologue
    .line 178
    const/16 v6, 0x2710

    .line 179
    const/4 v2, 0x1

    const/high16 v3, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 180
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    mul-int/lit16 v2, v2, 0x3e8

    div-int/lit16 v7, v2, 0x3e8

    .line 181
    int-to-double v2, v7

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    int-to-double v8, v4

    add-double v10, v2, v8

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 183
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v2

    .line 184
    const-wide/16 v8, 0x1

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 185
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 186
    const-wide/16 v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    int-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    int-to-double v8, v3

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    .line 212
    :goto_70
    return-void

    .line 189
    :cond_71
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v2

    .line 190
    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v5, 0xa

    if-lt v3, v5, :cond_b3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 191
    :goto_84
    div-int/lit8 v9, v3, 0x64

    .line 192
    const-wide/16 v12, 0x1

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-int v3, v12

    .line 193
    const/4 v5, 0x0

    move v8, v5

    :goto_96
    if-ge v8, v9, :cond_b5

    .line 194
    const/16 v5, 0x14

    move-object/from16 v0, p1

    iget v12, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    add-int/lit8 v13, v8, 0x1

    mul-int/lit8 v13, v13, 0x3c

    div-int/2addr v13, v9

    add-int/lit8 v13, v13, 0x28

    mul-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x64

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 195
    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 193
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_96

    .line 190
    :cond_b3
    const/4 v3, 0x0

    goto :goto_84

    .line 197
    :cond_b5
    const-wide/16 v12, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    int-to-double v14, v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    mul-int/2addr v3, v9

    int-to-double v8, v3

    mul-double/2addr v8, v10

    sub-double v8, v14, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 198
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    if-lez v5, :cond_116

    .line 199
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 200
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    mul-int/lit8 v6, v6, 0xa

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget v8, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    mul-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 207
    :goto_fc
    const-wide/16 v4, 0x0

    .line 208
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_104
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_132

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 209
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->ms()D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 210
    goto :goto_104

    .line 202
    :cond_116
    const/4 v5, 0x1

    if-le v3, v5, :cond_122

    .line 203
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 205
    :cond_122
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    goto :goto_fc

    .line 211
    :cond_132
    const-wide/16 v6, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    int-to-double v8, v3

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    div-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    goto/16 :goto_70
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 269
    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x7

    const/4 v3, 0x0

    .line 236
    if-nez p0, :cond_8

    .line 265
    :cond_7
    :goto_7
    return-object v0

    .line 239
    :cond_8
    const-string v1, "\t"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 240
    array-length v1, v2

    const/4 v4, 0x3

    if-lt v1, v4, :cond_7

    .line 243
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 244
    aget-object v4, v2, v3

    iput-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 245
    aget-object v4, v2, v5

    iput-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 246
    aget-object v2, v2, v6

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_2a
    if-ge v4, v6, :cond_95

    aget-object v2, v5, v4

    .line 247
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 248
    array-length v7, v2

    if-ge v7, v9, :cond_3b

    .line 246
    :goto_37
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2a

    .line 252
    :cond_3b
    :try_start_3b
    new-instance v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 253
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 254
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 255
    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 256
    const/4 v8, 0x3

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 257
    const/4 v8, 0x4

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 258
    const/4 v8, 0x5

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 259
    const/4 v8, 0x6

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 260
    array-length v8, v2

    if-le v8, v9, :cond_93

    const/4 v8, 0x7

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_89
    iput v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    .line 261
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_90} :catch_91

    goto :goto_37

    .line 262
    :catch_91
    move-exception v2

    goto :goto_37

    :cond_93
    move v2, v3

    .line 260
    goto :goto_89

    .line 265
    :cond_95
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object v0, v1

    goto/16 :goto_7
.end method

.method public static fresh(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;
    .registers 5

    .prologue
    .line 70
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 71
    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 72
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 73
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public static safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v3, 0x4

    const/4 v10, 0x2

    const/16 v9, 0xfa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const/16 v0, 0xa

    const/16 v4, 0xe10

    iget v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 95
    const/16 v0, 0x7d0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 96
    const/16 v0, 0xa

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 97
    const/4 v0, 0x5

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    .line 98
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v4, 0x14

    if-lt v0, v4, :cond_14c

    move v0, v1

    .line 99
    :goto_50
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v4

    if-eqz v4, :cond_83

    if-eqz v0, :cond_83

    .line 100
    const-string v0, "\u041e\u0442 "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz \u043d\u0430\u0433\u043e\u0440\u0435 \u2014 \u0441\u0430\u043c\u043e \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "From "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz up \u2014 impulse with a pause only"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v4, 0x32

    if-lt v0, v4, :cond_14f

    move v0, v3

    :goto_81
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 104
    :cond_83
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_152

    move v0, v1

    .line 105
    :goto_8a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v4

    if-eqz v4, :cond_15c

    move v4, v1

    .line 106
    :goto_91
    const/16 v7, 0x8

    new-array v7, v7, [I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    aput v8, v7, v2

    iget v8, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    aput v8, v7, v1

    aput v0, v7, v10

    const/4 v0, 0x3

    aput v4, v7, v0

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    if-lez v0, :cond_166

    move v0, v1

    :goto_a7
    aput v0, v7, v3

    const/4 v0, 0x5

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    aput v4, v7, v0

    const/4 v0, 0x6

    const/16 v4, 0x64

    aput v4, v7, v0

    const/4 v0, 0x7

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    aput v4, v7, v0

    const/4 v0, -0x1

    invoke-static {v7, v0, v5, v6}, Lcom/isaigu/gymapp/ai/SafeLimits;->apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)[I

    move-result-object v4

    .line 108
    aget v0, v4, v2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 109
    aget v0, v4, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 110
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-nez v0, :cond_16c

    .line 111
    aget v0, v4, v10

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 112
    const/4 v0, 0x3

    aget v0, v4, v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 113
    aget v0, v4, v3

    if-ne v0, v1, :cond_169

    const/4 v0, 0x5

    aget v0, v4, v0

    :goto_db
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x7

    aget v3, v4, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 119
    :goto_ec
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 122
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 123
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    if-le v0, v9, :cond_13d

    .line 124
    iput v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_172

    const-string v0, "; "

    :goto_10f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a \u2014 \u0434\u043e "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b5s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_175

    const-string v0, "; "

    :goto_12a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Australian current \u2014 up to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b5s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_13d
    new-array v0, v10, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_14c
    move v0, v2

    .line 98
    goto/16 :goto_50

    .line 102
    :cond_14f
    const/4 v0, 0x6

    goto/16 :goto_81

    .line 104
    :cond_152
    const/16 v0, 0xa

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_8a

    .line 105
    :cond_15c
    const/16 v4, 0x1e

    iget v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_91

    :cond_166
    move v0, v2

    .line 106
    goto/16 :goto_a7

    :cond_169
    move v0, v2

    .line 113
    goto/16 :goto_db

    .line 116
    :cond_16c
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 117
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    goto/16 :goto_ec

    .line 125
    :cond_172
    const-string v0, ""

    goto :goto_10f

    .line 126
    :cond_175
    const-string v0, ""

    goto :goto_12a
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v3, 0x9

    const/16 v5, 0x2c

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8f

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 222
    if-lez v1, :cond_3d

    .line 223
    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_3d
    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    if-lez v3, :cond_8b

    .line 228
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    :cond_8b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 231
    :cond_8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public seconds()I
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 80
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    add-int/2addr v0, v1

    move v1, v0

    .line 81
    goto :goto_8

    .line 82
    :cond_19
    return v1
.end method

.method public toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 4

    .prologue
    .line 135
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;-><init>()V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 137
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    .line 139
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)V

    goto :goto_b

    .line 141
    :cond_22
    return-object v1
.end method
