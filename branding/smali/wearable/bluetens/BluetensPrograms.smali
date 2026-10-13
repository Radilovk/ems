.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;
.super Ljava/lang/Object;
.source "BluetensPrograms.java"


# static fields
.field public static final ACTIVATE:I = 0x3

.field public static final ALL:[I

.field public static final MASSAGE:I = 0x1

.field public static final MINUTES:[I

.field public static final RECOVER:I = 0x0

.field public static final RELIEF:I = 0x2

.field public static final WARMUP:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    return-void

    .line 11
    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data

    .line 12
    :array_20
    .array-data 4
        0xa
        0xf
        0x14
        0x1e
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activate(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 16

    .prologue
    const/16 v8, 0x1f4

    const/16 v3, 0x12c

    const/4 v9, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 134
    const/16 v4, 0x3c

    const/16 v5, 0x2d0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 135
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v4

    .line 136
    new-array v11, v9, [I

    fill-array-data v11, :array_5c

    .line 137
    array-length v12, v11

    move v10, v2

    :goto_1d
    if-ge v10, v12, :cond_2a

    aget v7, v11, v10

    move v5, v1

    move v6, v2

    .line 138
    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 137
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_1d

    .line 140
    :cond_2a
    const/16 v9, 0xaf

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 141
    const/16 v7, 0xc8

    const/16 v8, 0x28

    const/16 v9, 0x18

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 142
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v5

    .line 143
    const/16 v8, 0xfa

    const/16 v9, 0x1e

    const/16 v10, 0x168

    move v6, v1

    move v7, v2

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 144
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    add-double v7, v0, v2

    move-object v3, p0

    move-wide v5, p1

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 145
    return-void

    .line 136
    :array_5c
    .array-data 4
        0x78
        0xa0
        0xc8
        0xf0
        0x118
    .end array-data
.end method

.method public static build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 8

    .prologue
    .line 84
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;-><init>()V

    .line 85
    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    .line 86
    packed-switch p0, :pswitch_data_28

    .line 91
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->recover(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    .line 93
    :goto_17
    return-object v0

    .line 87
    :pswitch_18
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->massage(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 88
    :pswitch_1c
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->relief(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 89
    :pswitch_20
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->activate(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 90
    :pswitch_24
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->warmup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 86
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public static defaultMinutes(I)I
    .registers 2

    .prologue
    const/16 v0, 0xf

    .line 52
    packed-switch p0, :pswitch_data_c

    .line 56
    :pswitch_5
    const/16 v0, 0x14

    :goto_7
    :pswitch_7
    return v0

    .line 55
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_7

    .line 52
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static detail(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_2c

    .line 47
    if-eqz p1, :cond_28

    const-string v0, "4 \u2192 12 \u2192 4 Hz \u00b7 250 \u00b5s"

    :goto_7
    return-object v0

    .line 40
    :pswitch_8
    if-eqz p1, :cond_d

    const-string v0, "3\u20138 Hz \u00b7 250 \u00b5s, \u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    goto :goto_7

    :cond_d
    const-string v0, "3\u20138 Hz \u00b7 250 \u00b5s, continuous"

    goto :goto_7

    .line 41
    :pswitch_10
    if-eqz p1, :cond_15

    const-string v0, "\u0421\u0435\u0440\u0438\u0438 \u043e\u0442 80 Hz \u043f\u043e 0,1 s \u0434\u0432\u0430 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 + 4 Hz \u00b7 200 \u00b5s"

    goto :goto_7

    .line 42
    :cond_15
    const-string v0, "80 Hz bursts of 0.1 s twice a second + 4 Hz \u00b7 200 \u00b5s"

    goto :goto_7

    .line 43
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string v0, "\u0421\u0435\u0440\u0438\u0438 \u043e\u0442 100 Hz (7 \u0438 5 \u0438\u043c\u043f\u0443\u043b\u0441\u0430) 2\u20133 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u00b7 150 \u00b5s"

    goto :goto_7

    .line 44
    :cond_1d
    const-string v0, "100 Hz bursts (7 and 5 pulses) 2\u20133 times a second \u00b7 150 \u00b5s"

    goto :goto_7

    .line 45
    :pswitch_20
    if-eqz p1, :cond_25

    const-string v0, "50 Hz \u00b7 300 \u00b5s \u0437\u0430 4 s \u0441 \u043f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435, 6 s \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043d\u0430 4 Hz"

    goto :goto_7

    .line 46
    :cond_25
    const-string v0, "50 Hz \u00b7 300 \u00b5s for 4 s with a soft rise, 6 s rest at 4 Hz"

    goto :goto_7

    .line 47
    :cond_28
    const-string v0, "4 \u2192 12 \u2192 4 Hz \u00b7 250 \u00b5s"

    goto :goto_7

    .line 39
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_18
        :pswitch_20
    .end packed-switch
.end method

.method public static feel(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_2c

    .line 33
    if-eqz p1, :cond_28

    const-string v0, "\u0412\u044a\u043b\u043d\u0430 \u043e\u0442 \u0431\u0430\u0432\u043d\u043e \u043a\u044a\u043c \u043f\u043e-\u0431\u044a\u0440\u0437\u043e \u0438 \u043e\u0431\u0440\u0430\u0442\u043d\u043e"

    :goto_7
    return-object v0

    .line 29
    :pswitch_8
    if-eqz p1, :cond_d

    const-string v0, "\u041b\u0435\u043a\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435, \u043a\u043e\u0435\u0442\u043e \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0432\u0430 \u0443\u043c\u043e\u0440\u0435\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b"

    goto :goto_7

    :cond_d
    const-string v0, "Gentle twitches that flush a tired muscle"

    goto :goto_7

    .line 30
    :pswitch_10
    if-eqz p1, :cond_15

    const-string v0, "\u041c\u0435\u043a\u043e \u043c\u0435\u0441\u0435\u043d\u0435 \u0438 \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_15
    const-string v0, "Soft kneading and tapping"

    goto :goto_7

    .line 31
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string v0, "\u0411\u044a\u0440\u0437\u0438 \u0442\u0440\u044a\u043f\u043a\u0438, \u043a\u043e\u0438\u0442\u043e \u0437\u0430\u0433\u043b\u0443\u0448\u0430\u0432\u0430\u0442 \u0431\u043e\u043b\u043a\u0430\u0442\u0430"

    goto :goto_7

    :cond_1d
    const-string v0, "Quick tingles that quiet the pain"

    goto :goto_7

    .line 32
    :pswitch_20
    if-eqz p1, :cond_25

    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0441\u0438\u043b\u043d\u0438 \u0441\u0432\u0438\u0432\u0430\u043d\u0438\u044f \u0441 \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    goto :goto_7

    :cond_25
    const-string v0, "Short strong contractions, long rest"

    goto :goto_7

    .line 33
    :cond_28
    const-string v0, "A wave from slow to quicker and back"

    goto :goto_7

    .line 28
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_18
        :pswitch_20
    .end packed-switch
.end method

.method public static fileName(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_2a

    .line 78
    const-string v0, "WRM"

    .line 80
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_1d
    const-string v0, "REC"

    goto :goto_5

    .line 75
    :pswitch_20
    const-string v0, "MAS"

    goto :goto_5

    .line 76
    :pswitch_23
    const-string v0, "REL"

    goto :goto_5

    .line 77
    :pswitch_26
    const-string v0, "ACT"

    goto :goto_5

    .line 73
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method static fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V
    .registers 12

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    .line 99
    const-wide/16 v2, 0x1

    sub-double v4, p2, p4

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    .line 100
    return-void
.end method

.method static massage(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0x28

    const/4 v1, 0x1

    .line 115
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 116
    const/16 v5, 0x78

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 117
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v5

    .line 118
    const/16 v7, 0x190

    const/16 v9, 0x320

    const/16 v10, 0x8

    move v6, v4

    move v8, v3

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v4

    .line 119
    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 120
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v6

    .line 121
    const/16 v10, 0x14

    const/16 v11, 0x3c

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 122
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    add-double v8, v0, v2

    move-object v4, p0

    move-wide v6, p1

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 123
    return-void
.end method

.method public static name(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_2c

    .line 22
    if-eqz p1, :cond_28

    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    :goto_7
    return-object v0

    .line 18
    :pswitch_8
    if-eqz p1, :cond_d

    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_d
    const-string v0, "Recovery"

    goto :goto_7

    .line 19
    :pswitch_10
    if-eqz p1, :cond_15

    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    goto :goto_7

    :cond_15
    const-string v0, "Massage"

    goto :goto_7

    .line 20
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string v0, "\u041e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_1d
    const-string v0, "Relief"

    goto :goto_7

    .line 21
    :pswitch_20
    if-eqz p1, :cond_25

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u043d\u0435"

    goto :goto_7

    :cond_25
    const-string v0, "Activation"

    goto :goto_7

    .line 22
    :cond_28
    const-string v0, "Warm-up"

    goto :goto_7

    .line 17
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_18
        :pswitch_20
    .end packed-switch
.end method

.method static recover(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 14

    .prologue
    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 104
    const/16 v4, 0x50

    const/16 v5, 0x1e0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 105
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v4

    .line 106
    const/16 v8, 0x1e

    const/16 v9, 0x5a

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 107
    const/16 v8, 0x32

    const/16 v9, 0x4b

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 108
    const/16 v8, 0x46

    const/16 v9, 0x69

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 109
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v5

    .line 110
    const/16 v8, 0xc8

    const/16 v9, 0x14

    const/16 v10, 0x78

    move v6, v1

    move v7, v2

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 111
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    add-double v7, v0, v2

    move-object v3, p0

    move-wide v5, p1

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 112
    return-void
.end method

.method static relief(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x96

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 127
    const/16 v1, 0x14

    const/16 v2, 0x1ae

    const/4 v5, 0x7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 128
    const/16 v1, 0x1e

    const/16 v2, 0x11b

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 129
    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 130
    return-void
.end method

.method public static tint(I)I
    .registers 2

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_18

    .line 66
    const v0, -0x48e7b

    :goto_6
    return v0

    .line 62
    :pswitch_7
    const v0, -0xdd3c0b

    goto :goto_6

    .line 63
    :pswitch_b
    const v0, -0x587406

    goto :goto_6

    .line 64
    :pswitch_f
    const v0, -0xcb2c67

    goto :goto_6

    .line 65
    :pswitch_13
    const v0, -0xa61f5

    goto :goto_6

    .line 61
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method static warmup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 149
    const/16 v3, 0x8

    new-array v7, v3, [I

    fill-array-data v7, :array_2a

    .line 150
    array-length v8, v7

    move v6, v2

    :goto_f
    if-ge v6, v8, :cond_20

    aget v5, v7, v6

    .line 151
    const/16 v3, 0xfa

    mul-int/lit8 v4, v5, 0xa

    mul-int/lit8 v5, v5, 0xf

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 150
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_f

    .line 153
    :cond_20
    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 154
    return-void

    .line 149
    nop

    :array_2a
    .array-data 4
        0x4
        0x6
        0x8
        0xa
        0xc
        0xa
        0x8
        0x6
    .end array-data
.end method
