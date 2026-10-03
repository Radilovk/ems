.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;
.super Ljava/lang/Object;
.source "ScaleSenssun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation


# static fields
.field public static final ERROR:I = 0x4

.field public static final LIVE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RESULT:I = 0x3

.field public static final STABLE:I = 0x2


# instance fields
.field public boneKg:D

.field done:Z

.field public fatPct:D

.field public kcal:I

.field public kg:D

.field public musclePct:D

.field public stable:Z

.field public waterPct:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->fatPct:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->waterPct:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->musclePct:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->boneKg:D

    return-void
.end method

.method static pct(I)D
    .registers 5

    .prologue
    .line 125
    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    .line 126
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_14

    const-wide v2, 0x4052c00000000000L    # 75.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_14

    :goto_13
    return-wide v0

    :cond_14
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_13
.end method


# virtual methods
.method public add([B)I
    .registers 14

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->parse([B)Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;

    move-result-object v4

    .line 131
    if-nez v4, :cond_10

    move v0, v2

    .line 181
    :goto_f
    return v0

    .line 134
    :cond_10
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->type:I

    sparse-switch v5, :sswitch_data_c0

    move v0, v2

    .line 181
    goto :goto_f

    .line 137
    :sswitch_17
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v1:I

    int-to-double v0, v0

    div-double/2addr v0, v10

    .line 138
    const-wide v6, 0x4072c00000000000L    # 300.0

    cmpl-double v5, v0, v6

    if-lez v5, :cond_26

    move v0, v2

    .line 139
    goto :goto_f

    .line 141
    :cond_26
    cmpg-double v2, v0, v8

    if-gez v2, :cond_3b

    .line 142
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    cmpl-double v2, v4, v8

    if-gez v2, :cond_34

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    if-eqz v2, :cond_37

    .line 143
    :cond_34
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->reset()V

    .line 145
    :cond_37
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    move v0, v3

    .line 146
    goto :goto_f

    .line 148
    :cond_3b
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    if-eqz v2, :cond_50

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v6, v8

    if-lez v2, :cond_50

    .line 149
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->reset()V

    .line 151
    :cond_50
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    .line 152
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->type:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_60

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->stable:Z

    if-nez v0, :cond_60

    .line 153
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->stable:Z

    .line 154
    const/4 v0, 0x2

    goto :goto_f

    :cond_60
    move v0, v3

    .line 156
    goto :goto_f

    .line 159
    :sswitch_62
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v1:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->pct(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->fatPct:D

    .line 160
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v2:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->pct(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->waterPct:D

    .line 161
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->stable:Z

    if-eqz v0, :cond_84

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_84

    .line 162
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    .line 163
    const/4 v0, 0x3

    goto :goto_f

    :cond_84
    move v0, v2

    .line 165
    goto :goto_f

    .line 167
    :sswitch_86
    iget v3, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v1:I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->pct(I)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->musclePct:D

    .line 168
    iget v3, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v2swap:I

    if-lez v3, :cond_9c

    iget v3, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v2swap:I

    const/16 v5, 0xc8

    if-ge v3, v5, :cond_9c

    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v2swap:I

    int-to-double v0, v0

    div-double/2addr v0, v10

    :cond_9c
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->boneKg:D

    move v0, v2

    .line 169
    goto/16 :goto_f

    .line 171
    :sswitch_a1
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v1:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kcal:I

    move v0, v2

    .line 172
    goto/16 :goto_f

    .line 174
    :sswitch_a8
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    if-nez v4, :cond_bd

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->stable:Z

    if-eqz v4, :cond_bd

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_bd

    .line 175
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    .line 176
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->fatPct:D

    .line 177
    const/4 v0, 0x4

    goto/16 :goto_f

    :cond_bd
    move v0, v2

    .line 179
    goto/16 :goto_f

    .line 134
    :sswitch_data_c0
    .sparse-switch
        0xa0 -> :sswitch_17
        0xaa -> :sswitch_17
        0xb0 -> :sswitch_62
        0xbe -> :sswitch_a8
        0xc0 -> :sswitch_86
        0xd0 -> :sswitch_a1
    .end sparse-switch
.end method

.method public reading()Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 187
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 188
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 189
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 190
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 191
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->fatPct:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 192
    return-object v0
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    .line 118
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->stable:Z

    .line 119
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->boneKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->musclePct:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->waterPct:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->fatPct:D

    .line 120
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kcal:I

    .line 121
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->done:Z

    .line 122
    return-void
.end method
