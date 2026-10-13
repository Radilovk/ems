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

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 21
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

    .line 121
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 122
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    mul-int/lit8 v4, v3, 0xa

    .line 123
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 124
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    iget v6, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    mul-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 146
    :goto_25
    return-void

    .line 127
    :cond_26
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v5, 0xa

    if-lt v3, v5, :cond_5a

    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 128
    :goto_2e
    div-int/lit8 v7, v3, 0x64

    move v6, v2

    .line 129
    :goto_31
    if-ge v6, v7, :cond_5c

    .line 130
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

    .line 131
    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    int-to-float v5, v5

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 129
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_31

    :cond_5a
    move v3, v2

    .line 127
    goto :goto_2e

    .line 133
    :cond_5c
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    int-to-double v8, v3

    mul-double/2addr v8, v10

    mul-int/lit8 v3, v7, 0x64

    int-to-double v6, v3

    sub-double v6, v8, v6

    .line 134
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    .line 135
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    if-lez v3, :cond_a8

    .line 136
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 137
    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    iget v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    mul-int/lit8 v4, v4, 0xa

    iget v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    iget v6, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    mul-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 141
    :goto_8e
    const-wide/16 v2, 0x0

    .line 142
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 143
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->ms()D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 144
    goto :goto_96

    .line 139
    :cond_a8
    iget v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    goto :goto_8e

    .line 145
    :cond_b2
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

    goto/16 :goto_25
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 199
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
    .registers 9

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 167
    if-nez p0, :cond_8

    .line 195
    :cond_7
    :goto_7
    return-object v0

    .line 170
    :cond_8
    const-string v1, "\t"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 171
    array-length v1, v3

    if-lt v1, v4, :cond_7

    .line 174
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 175
    aget-object v4, v3, v2

    iput-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 176
    aget-object v4, v3, v5

    iput-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 177
    aget-object v3, v3, v6

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_28
    if-ge v2, v4, :cond_85

    aget-object v5, v3, v2

    .line 178
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 179
    array-length v6, v5

    const/4 v7, 0x7

    if-ge v6, v7, :cond_39

    .line 177
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 183
    :cond_39
    :try_start_39
    new-instance v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 184
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 185
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 186
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 187
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 188
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 189
    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 190
    const/4 v7, 0x6

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 191
    iget-object v5, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_82} :catch_83

    goto :goto_36

    .line 192
    :catch_83
    move-exception v5

    goto :goto_36

    .line 195
    :cond_85
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
    .line 57
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 58
    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 59
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 60
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public static safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const/16 v0, 0xe10

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 82
    const/16 v0, 0x7d0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 83
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 84
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v4, 0x14

    if-lt v0, v4, :cond_ea

    move v0, v1

    .line 85
    :goto_3f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v4

    if-eqz v4, :cond_72

    if-eqz v0, :cond_72

    .line 86
    const-string v0, "\u041e\u0442 "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz \u043d\u0430\u0433\u043e\u0440\u0435 \u2014 \u0441\u0430\u043c\u043e \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "From "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz up \u2014 impulse with a pause only"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v4, 0x32

    if-lt v0, v4, :cond_ed

    move v0, v3

    :goto_70
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 90
    :cond_72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_ef

    move v0, v1

    .line 91
    :goto_79
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v4

    if-eqz v4, :cond_f6

    move v4, v1

    .line 92
    :goto_80
    const/16 v7, 0x8

    new-array v7, v7, [I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    aput v8, v7, v2

    iget v8, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    aput v8, v7, v1

    aput v0, v7, v9

    const/4 v0, 0x3

    aput v4, v7, v0

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    if-lez v0, :cond_ff

    move v0, v1

    :goto_96
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

    .line 94
    aget v0, v4, v2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 95
    aget v0, v4, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 96
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-nez v0, :cond_103

    .line 97
    aget v0, v4, v9

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 98
    const/4 v0, 0x3

    aget v0, v4, v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 99
    aget v0, v4, v3

    if-ne v0, v1, :cond_101

    const/4 v0, 0x5

    aget v0, v4, v0

    :goto_ca
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 100
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x7

    aget v3, v4, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 105
    :goto_db
    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_ea
    move v0, v2

    .line 84
    goto/16 :goto_3f

    .line 88
    :cond_ed
    const/4 v0, 0x6

    goto :goto_70

    .line 90
    :cond_ef
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_79

    .line 91
    :cond_f6
    const/16 v4, 0x1e

    iget v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_80

    :cond_ff
    move v0, v2

    .line 92
    goto :goto_96

    :cond_101
    move v0, v2

    .line 99
    goto :goto_ca

    .line 102
    :cond_103
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 103
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    goto :goto_db
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v3, 0x9

    const/16 v5, 0x2c

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
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

    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_82

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 156
    if-lez v1, :cond_3d

    .line 157
    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
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

    .line 160
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

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 162
    :cond_82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public seconds()I
    .registers 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
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

    .line 67
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    add-int/2addr v0, v1

    move v1, v0

    .line 68
    goto :goto_8

    .line 69
    :cond_19
    return v1
.end method

.method public toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 4

    .prologue
    .line 111
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;-><init>()V

    .line 112
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

    .line 113
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    .line 115
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)V

    goto :goto_b

    .line 117
    :cond_22
    return-object v1
.end method
