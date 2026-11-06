.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;
.super Ljava/lang/Object;
.source "BluetensPrograms.java"


# static fields
.field public static final ACTIVATE:I = 0x3

.field public static final ALL:[I

.field static final CHEEK_BG:Ljava/lang/String; = "\u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u0441\u043a\u0443\u043b\u043e\u0432\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b: \u0433\u043e\u0440\u043d\u0438\u044f\u0442 \u043d\u0430 \u0441\u043a\u0443\u043b\u0430\u0442\u0430, \u2265 2 cm \u043f\u043e\u0434 \u0432\u044a\u043d\u0448\u043d\u0438\u044f \u044a\u0433\u044a\u043b \u043d\u0430 \u043e\u043a\u043e\u0442\u043e, \u0434\u043e\u043b\u043d\u0438\u044f\u0442 2\u20133 cm \u043f\u043e-\u043d\u0430\u0434\u043e\u043b\u0443 \u043a\u044a\u043c \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 (\u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430). \u041d\u0435 \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e \u2014 \u0442\u0430\u043c \u043d\u0435\u0440\u0432\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043e\u043a\u043e\u0442\u043e (\u043c\u0438\u0433\u0430\u043d\u0435). \u0414\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u043e\u0442 \u0435\u0434\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430; \u043b\u044f\u0432\u0430 \u0438 \u0434\u044f\u0441\u043d\u0430 \u0431\u0443\u0437\u0430 \u2014 \u043e\u0442\u0434\u0435\u043b\u0435\u043d \u0443\u0440\u0435\u0434, \u0432\u0441\u044f\u043a\u0430 \u0441\u044a\u0441 \u0441\u0432\u043e\u044f \u0441\u0438\u043b\u0430."

.field static final CHEEK_EN:Ljava/lang/String; = "Pads along the cheek muscle: the upper on the cheekbone, \u2265 2 cm below the outer eye corner, the lower 2\u20133 cm further towards the mouth corner (not on the lip). Not in front of the ear \u2014 the nerve there reaches the eye (blinking). The pair on one side; left and right cheek \u2014 a pad each, its own strength."

.field public static final CHIN:I = 0x7

.field public static final CHIN_US:I = 0xc8

.field public static final FACE:I = 0x5

.field public static final FACE_DRAIN:I = 0x8

.field public static final FACE_DRAIN_B:I = 0x9

.field public static final FACE_HZ_MIN:I = 0x14

.field public static final FACE_RELAX:I = 0xa

.field public static final FACE_TONE:I = 0x6

.field public static final FACE_US:I = 0x64

.field public static final JAW:I = 0xb

.field public static final JAW_US:I = 0x96

.field public static final MASSAGE:I = 0x1

.field public static final MINUTES:[I

.field public static final RECOVER:I = 0x0

.field public static final RELAX_US:I = 0xfa

.field public static final RELIEF:I = 0x2

.field public static final WARMUP:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    return-void

    .line 12
    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 14
    :array_2e
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
    .line 16
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

    .line 201
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 202
    const/16 v4, 0x3c

    const/16 v5, 0x2d0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 203
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v4

    .line 204
    new-array v11, v9, [I

    fill-array-data v11, :array_5c

    .line 205
    array-length v12, v11

    move v10, v2

    :goto_1d
    if-ge v10, v12, :cond_2a

    aget v7, v11, v10

    move v5, v1

    move v6, v2

    .line 206
    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 205
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_1d

    .line 208
    :cond_2a
    const/16 v9, 0xaf

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 209
    const/16 v7, 0xc8

    const/16 v8, 0x28

    const/16 v9, 0x18

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 210
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v5

    .line 211
    const/16 v8, 0xfa

    const/16 v9, 0x1e

    const/16 v10, 0x168

    move v6, v1

    move v7, v2

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 212
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    add-double v7, v0, v2

    move-object v3, p0

    move-wide v5, p1

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 213
    return-void

    .line 204
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
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 145
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;-><init>()V

    .line 146
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    .line 147
    packed-switch p0, :pswitch_data_46

    .line 159
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->recover(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    .line 161
    :goto_17
    return-object v0

    .line 148
    :pswitch_18
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->massage(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 149
    :pswitch_1c
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->relief(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 150
    :pswitch_20
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->activate(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 151
    :pswitch_24
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->warmup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 152
    :pswitch_28
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->face(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 153
    :pswitch_2c
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->faceTone(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 154
    :pswitch_30
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->chin(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 155
    :pswitch_34
    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->drain(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;DZ)V

    goto :goto_17

    .line 156
    :pswitch_39
    invoke-static {v0, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->drain(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;DZ)V

    goto :goto_17

    .line 157
    :pswitch_3d
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->relax(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 158
    :pswitch_41
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->jaw(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V

    goto :goto_17

    .line 147
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_39
        :pswitch_3d
        :pswitch_41
    .end packed-switch
.end method

.method static chin(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/16 v8, 0x7d0

    const/16 v7, 0x8c

    const/16 v5, 0x1f40

    const/16 v1, 0x1e

    .line 279
    invoke-static {p0, v1, v7, v8, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v6

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 281
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_34

    const/16 v3, 0xc8

    const/16 v4, 0xc80

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->hold(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;I[IIII)V

    .line 282
    invoke-static {p0, v1, v7, v8, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v1

    .line 283
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v4

    add-double v6, v2, v4

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 284
    return-void

    .line 281
    nop

    :array_34
    .array-data 4
        0x64
        0x82
        0xa0
        0xb4
    .end array-data
.end method

.method public static defaultMinutes(I)I
    .registers 4

    .prologue
    const/16 v2, 0x14

    const/16 v0, 0xf

    const/16 v1, 0xa

    .line 92
    packed-switch p0, :pswitch_data_18

    :pswitch_9
    move v0, v2

    .line 103
    :goto_a
    :pswitch_a
    return v0

    :pswitch_b
    move v0, v1

    .line 95
    goto :goto_a

    :pswitch_d
    move v0, v1

    .line 96
    goto :goto_a

    :pswitch_f
    move v0, v1

    .line 97
    goto :goto_a

    :pswitch_11
    move v0, v1

    .line 98
    goto :goto_a

    :pswitch_13
    move v0, v1

    .line 100
    goto :goto_a

    :pswitch_15
    move v0, v2

    .line 101
    goto :goto_a

    .line 92
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method

.method public static detail(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_5c

    .line 87
    :pswitch_3
    if-eqz p1, :cond_58

    const-string v0, "4 \u2192 12 \u2192 4 Hz \u00b7 250 \u00b5s"

    :goto_7
    return-object v0

    .line 57
    :pswitch_8
    if-eqz p1, :cond_d

    const-string v0, "3\u20138 Hz \u00b7 250 \u00b5s, \u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    goto :goto_7

    :cond_d
    const-string v0, "3\u20138 Hz \u00b7 250 \u00b5s, continuous"

    goto :goto_7

    .line 58
    :pswitch_10
    if-eqz p1, :cond_15

    const-string v0, "\u0421\u0435\u0440\u0438\u0438 \u043e\u0442 80 Hz \u043f\u043e 0,1 s \u0434\u0432\u0430 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 + 4 Hz \u00b7 200 \u00b5s"

    goto :goto_7

    .line 59
    :cond_15
    const-string v0, "80 Hz bursts of 0.1 s twice a second + 4 Hz \u00b7 200 \u00b5s"

    goto :goto_7

    .line 60
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string v0, "\u0421\u0435\u0440\u0438\u0438 \u043e\u0442 100 Hz (7 \u0438 5 \u0438\u043c\u043f\u0443\u043b\u0441\u0430) 2\u20133 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u00b7 150 \u00b5s"

    goto :goto_7

    .line 61
    :cond_1d
    const-string v0, "100 Hz bursts (7 and 5 pulses) 2\u20133 times a second \u00b7 150 \u00b5s"

    goto :goto_7

    .line 62
    :pswitch_20
    if-eqz p1, :cond_25

    const-string v0, "50 Hz \u00b7 300 \u00b5s \u0437\u0430 4 s \u0441 \u043f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435, 6 s \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043d\u0430 4 Hz"

    goto :goto_7

    .line 63
    :cond_25
    const-string v0, "50 Hz \u00b7 300 \u00b5s for 4 s with a soft rise, 6 s rest at 4 Hz"

    goto :goto_7

    .line 64
    :pswitch_28
    if-eqz p1, :cond_2d

    .line 66
    const-string v0, "70 Hz \u00b7 100 \u00b5s: 3 s \u0441 \u043f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435 \u0438 \u0441\u043f\u0443\u0441\u043a\u0430\u043d\u0435, 6 s \u0442\u0438\u0448\u0438\u043d\u0430; \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435 2 min (2 s : 8 s), \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 2 min \u043d\u0430 30 Hz. \u041d\u0438\u0449\u043e \u043f\u043e\u0434 20 Hz \u2014 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0438\u044f\u0442\u0430 \u0441\u0430 \u043d\u0435\u043f\u0440\u0438\u044f\u0442\u043d\u0438. \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u0441\u043a\u0443\u043b\u043e\u0432\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b: \u0433\u043e\u0440\u043d\u0438\u044f\u0442 \u043d\u0430 \u0441\u043a\u0443\u043b\u0430\u0442\u0430, \u2265 2 cm \u043f\u043e\u0434 \u0432\u044a\u043d\u0448\u043d\u0438\u044f \u044a\u0433\u044a\u043b \u043d\u0430 \u043e\u043a\u043e\u0442\u043e, \u0434\u043e\u043b\u043d\u0438\u044f\u0442 2\u20133 cm \u043f\u043e-\u043d\u0430\u0434\u043e\u043b\u0443 \u043a\u044a\u043c \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 (\u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430). \u041d\u0435 \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e \u2014 \u0442\u0430\u043c \u043d\u0435\u0440\u0432\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043e\u043a\u043e\u0442\u043e (\u043c\u0438\u0433\u0430\u043d\u0435). \u0414\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u043e\u0442 \u0435\u0434\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430; \u043b\u044f\u0432\u0430 \u0438 \u0434\u044f\u0441\u043d\u0430 \u0431\u0443\u0437\u0430 \u2014 \u043e\u0442\u0434\u0435\u043b\u0435\u043d \u0443\u0440\u0435\u0434, \u0432\u0441\u044f\u043a\u0430 \u0441\u044a\u0441 \u0441\u0432\u043e\u044f \u0441\u0438\u043b\u0430. \u041a\u0443\u0440\u0441: 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043f\u043e 10 min 3 \u043f\u044a\u0442\u0438, \u043f\u043e\u0441\u043b\u0435 20 min 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438."

    goto :goto_7

    .line 69
    :cond_2d
    const-string v0, "70 Hz \u00b7 100 \u00b5s: 3 s with a soft rise and fall, 6 s silence; 2 min wake-up (2 s : 8 s), 2 min let-go at 30 Hz. Nothing under 20 Hz \u2014 twitches are unpleasant on the face. Pads along the cheek muscle: the upper on the cheekbone, \u2265 2 cm below the outer eye corner, the lower 2\u20133 cm further towards the mouth corner (not on the lip). Not in front of the ear \u2014 the nerve there reaches the eye (blinking). The pair on one side; left and right cheek \u2014 a pad each, its own strength. Course: 2 weeks of 10 min 3 times, then 20 min 5 times a week, 12 weeks."

    goto :goto_7

    .line 70
    :pswitch_30
    if-eqz p1, :cond_35

    .line 71
    const-string v0, "35 Hz \u00b7 100 \u00b5s: 5 s \u043c\u0435\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435, 5 s \u0442\u0438\u0448\u0438\u043d\u0430 \u2014 \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0431\u0430\u0432\u043d\u043e \u043e\u0442 70 Hz. \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u0441\u043a\u0443\u043b\u043e\u0432\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b: \u0433\u043e\u0440\u043d\u0438\u044f\u0442 \u043d\u0430 \u0441\u043a\u0443\u043b\u0430\u0442\u0430, \u2265 2 cm \u043f\u043e\u0434 \u0432\u044a\u043d\u0448\u043d\u0438\u044f \u044a\u0433\u044a\u043b \u043d\u0430 \u043e\u043a\u043e\u0442\u043e, \u0434\u043e\u043b\u043d\u0438\u044f\u0442 2\u20133 cm \u043f\u043e-\u043d\u0430\u0434\u043e\u043b\u0443 \u043a\u044a\u043c \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 (\u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430). \u041d\u0435 \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e \u2014 \u0442\u0430\u043c \u043d\u0435\u0440\u0432\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043e\u043a\u043e\u0442\u043e (\u043c\u0438\u0433\u0430\u043d\u0435). \u0414\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u043e\u0442 \u0435\u0434\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430; \u043b\u044f\u0432\u0430 \u0438 \u0434\u044f\u0441\u043d\u0430 \u0431\u0443\u0437\u0430 \u2014 \u043e\u0442\u0434\u0435\u043b\u0435\u043d \u0443\u0440\u0435\u0434, \u0432\u0441\u044f\u043a\u0430 \u0441\u044a\u0441 \u0441\u0432\u043e\u044f \u0441\u0438\u043b\u0430. \u0421\u043b\u0435\u0434 \u043a\u0443\u0440\u0441\u0430 \u0437\u0430 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435: 10\u201315 min 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e."

    goto :goto_7

    .line 73
    :cond_35
    const-string v0, "35 Hz \u00b7 100 \u00b5s: 5 s soft hold, 5 s silence \u2014 tires far slower than 70 Hz. Pads along the cheek muscle: the upper on the cheekbone, \u2265 2 cm below the outer eye corner, the lower 2\u20133 cm further towards the mouth corner (not on the lip). Not in front of the ear \u2014 the nerve there reaches the eye (blinking). The pair on one side; left and right cheek \u2014 a pad each, its own strength. After the lift course: 10\u201315 min 2\u20133 times a week."

    goto :goto_7

    .line 74
    :pswitch_38
    if-eqz p1, :cond_3d

    const-string v0, "30 Hz \u00b7 200 \u00b5s: 4 s \u0441\u0442\u044f\u0433\u0430\u043d\u0435, 8 s \u0442\u0438\u0448\u0438\u043d\u0430 (\u043c\u0430\u043b\u043a\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u043d\u0438\u0441\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430). \u0414\u0432\u0430\u0442\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0430 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430, \u0432\u043b\u044f\u0432\u043e \u0438 \u0432\u0434\u044f\u0441\u043d\u043e \u043e\u0442 \u0441\u0440\u0435\u0434\u0430\u0442\u0430, \u043c\u0435\u0436\u0434\u0443 \u043a\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442; \u043d\u0438\u043a\u043e\u0433\u0430 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430. \u0421\u0435\u0434\u043d\u0430\u043b, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430 \u2014 \u0442\u043e\u043a\u044a\u0442 \u0434\u0432\u0438\u0436\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u043d\u0435\u0442\u043e. \u0415\u0444\u0435\u043a\u0442 \u0437\u0430 \u043a\u043e\u043d\u0442\u0443\u0440\u0430 \u043d\u0435 \u0435 \u0434\u043e\u043a\u0430\u0437\u0430\u043d."

    goto :goto_7

    .line 77
    :cond_3d
    const-string v0, "30 Hz \u00b7 200 \u00b5s: 4 s hold, 8 s silence (small muscles \u2014 low rate). Both pads under the chin, left and right of the midline, between the chin bone and the hyoid; never on the side of the neck. Seated, no food or drink \u2014 the current moves the swallowing muscles. A contour effect is not proven."

    goto :goto_7

    .line 81
    :pswitch_40
    if-eqz p1, :cond_45

    const-string v0, "30 Hz \u00b7 100 \u00b5s: 1 s \u0441\u0442\u044f\u0433\u0430\u043d\u0435, 2 s \u043e\u0442\u0434\u0438\u0445; \u0432\u0442\u043e\u0440\u0430\u0442\u0430 \u0431\u0443\u0437\u0430 \u0441\u044a\u0441 \u0437\u0430\u043a\u044a\u0441\u043d\u0435\u043d\u0438\u0435 1,5 s \u2014 \u0432\u044a\u043b\u043d\u0430"

    goto :goto_7

    .line 82
    :cond_45
    const-string v0, "30 Hz \u00b7 100 \u00b5s: 1 s hold, 2 s rest; the second cheek 1.5 s later \u2014 a wave"

    goto :goto_7

    .line 83
    :pswitch_48
    if-eqz p1, :cond_4d

    const-string v0, "60 Hz \u00b7 250 \u00b5s (\u043a\u0430\u0442\u043e \u043e\u0434\u043e\u0431\u0440\u0435\u043d\u043e\u0442\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u0437\u0430 \u0447\u0435\u043b\u043e\u0442\u043e), \u0441\u0430\u043c\u043e \u0441\u0435\u0442\u0438\u0432\u043d\u043e \u2014 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    goto :goto_7

    .line 84
    :cond_4d
    const-string v0, "60 Hz \u00b7 250 \u00b5s (as the approved forehead device), sensory only \u2014 no movement"

    goto :goto_7

    .line 85
    :pswitch_50
    if-eqz p1, :cond_55

    const-string v0, "\u0421\u0435\u0440\u0438\u0438 \u043e\u0442 7 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u043f\u0440\u0438 100 Hz, 2 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u00b7 150 \u00b5s; \u0441\u043c\u0435\u043d\u044f \u0441\u0435 \u0441 3 \u0441\u0435\u0440\u0438\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    goto :goto_7

    .line 86
    :cond_55
    const-string v0, "Bursts of 7 pulses at 100 Hz, twice a second \u00b7 150 \u00b5s; alternates with 3 a second"

    goto :goto_7

    .line 87
    :cond_58
    const-string v0, "4 \u2192 12 \u2192 4 Hz \u00b7 250 \u00b5s"

    goto :goto_7

    .line 56
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_18
        :pswitch_20
        :pswitch_3
        :pswitch_28
        :pswitch_30
        :pswitch_38
        :pswitch_40
        :pswitch_40
        :pswitch_48
        :pswitch_50
    .end packed-switch
.end method

.method static drain(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;DZ)V
    .registers 15

    .prologue
    const/16 v8, 0x7d0

    const/16 v2, 0x5dc

    const/16 v10, 0x46

    const/16 v9, 0x1e

    const/4 v1, 0x1

    .line 294
    if-eqz p3, :cond_17

    .line 295
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 296
    const/16 v3, 0x32

    const/16 v4, 0x12c

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 298
    :cond_17
    const/16 v0, 0x3e8

    const/16 v3, 0xbb8

    invoke-static {p0, v9, v10, v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v3

    .line 300
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_4e

    const/16 v6, 0x64

    const/16 v7, 0x258

    move v4, v9

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->hold(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;I[IIII)V

    .line 301
    const/16 v1, 0x1f40

    invoke-static {p0, v9, v10, v8, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v1

    .line 302
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    add-double/2addr v0, v4

    if-eqz p3, :cond_4b

    :goto_42
    int-to-double v4, v2

    add-double v6, v0, v4

    move-object v2, p0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 303
    return-void

    .line 302
    :cond_4b
    const/4 v2, 0x0

    goto :goto_42

    .line 300
    nop

    :array_4e
    .array-data 4
        0x3c
        0x50
    .end array-data
.end method

.method static face(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/16 v8, 0x1f40

    const/16 v7, 0x7d0

    const/16 v1, 0x46

    .line 258
    invoke-static {p0, v1, v1, v7, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v6

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 260
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_36

    const/16 v3, 0x64

    const/16 v4, 0x898

    const/16 v5, 0x1770

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->hold(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;I[IIII)V

    .line 261
    const/16 v2, 0x1e

    invoke-static {p0, v2, v1, v7, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v1

    .line 262
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v4

    add-double v6, v2, v4

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 263
    return-void

    .line 260
    nop

    :array_36
    .array-data 4
        0x32
        0x41
        0x50
        0x5a
    .end array-data
.end method

.method static faceTone(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/16 v7, 0x46

    const/16 v1, 0x23

    .line 267
    const/16 v0, 0xbb8

    const/16 v2, 0x1b58

    invoke-static {p0, v1, v7, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v6

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 269
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    const/16 v3, 0x64

    const/16 v4, 0x1130

    const/16 v5, 0x1388

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->hold(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;I[IIII)V

    .line 270
    const/16 v1, 0x1e

    const/16 v2, 0x7d0

    const/16 v3, 0x1f40

    invoke-static {p0, v1, v7, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v1

    .line 271
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v4

    add-double v6, v2, v4

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 272
    return-void

    .line 269
    nop

    :array_3c
    .array-data 4
        0x32
        0x46
        0x55
    .end array-data
.end method

.method public static feel(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_5c

    .line 50
    :pswitch_3
    if-eqz p1, :cond_58

    const-string v0, "\u0412\u044a\u043b\u043d\u0430 \u043e\u0442 \u0431\u0430\u0432\u043d\u043e \u043a\u044a\u043c \u043f\u043e-\u0431\u044a\u0440\u0437\u043e \u0438 \u043e\u0431\u0440\u0430\u0442\u043d\u043e"

    :goto_7
    return-object v0

    .line 38
    :pswitch_8
    if-eqz p1, :cond_d

    const-string v0, "\u041b\u0435\u043a\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435, \u043a\u043e\u0435\u0442\u043e \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0432\u0430 \u0443\u043c\u043e\u0440\u0435\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b"

    goto :goto_7

    :cond_d
    const-string v0, "Gentle twitches that flush a tired muscle"

    goto :goto_7

    .line 39
    :pswitch_10
    if-eqz p1, :cond_15

    const-string v0, "\u041c\u0435\u043a\u043e \u043c\u0435\u0441\u0435\u043d\u0435 \u0438 \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_15
    const-string v0, "Soft kneading and tapping"

    goto :goto_7

    .line 40
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string v0, "\u0411\u044a\u0440\u0437\u0438 \u0442\u0440\u044a\u043f\u043a\u0438, \u043a\u043e\u0438\u0442\u043e \u0437\u0430\u0433\u043b\u0443\u0448\u0430\u0432\u0430\u0442 \u0431\u043e\u043b\u043a\u0430\u0442\u0430"

    goto :goto_7

    :cond_1d
    const-string v0, "Quick tingles that quiet the pain"

    goto :goto_7

    .line 41
    :pswitch_20
    if-eqz p1, :cond_25

    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0441\u0438\u043b\u043d\u0438 \u0441\u0432\u0438\u0432\u0430\u043d\u0438\u044f \u0441 \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    goto :goto_7

    :cond_25
    const-string v0, "Short strong contractions, long rest"

    goto :goto_7

    .line 42
    :pswitch_28
    if-eqz p1, :cond_2d

    const-string v0, "\u0411\u0443\u0437\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430 \u0437\u0430 3 s \u0438 \u043f\u043e\u0447\u0438\u0432\u0430 6 s \u00b7 \u0443\u0440\u0435\u0434 \u0437\u0430 \u0432\u0441\u044f\u043a\u0430 \u0431\u0443\u0437\u0430, \u0441\u0432\u043e\u044f \u0441\u0438\u043b\u0430"

    goto :goto_7

    .line 43
    :cond_2d
    const-string v0, "The cheek lifts for 3 s and rests 6 s \u00b7 a pad per cheek, its own strength"

    goto :goto_7

    .line 44
    :pswitch_30
    if-eqz p1, :cond_35

    const-string v0, "\u041f\u043e-\u0434\u044a\u043b\u0433\u043e \u043c\u0435\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u00b7 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430 \u0441\u043b\u0435\u0434 \u043a\u0443\u0440\u0441\u0430"

    goto :goto_7

    :cond_35
    const-string v0, "Longer soft holds \u00b7 upkeep after the course"

    goto :goto_7

    .line 45
    :pswitch_38
    if-eqz p1, :cond_3d

    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u00b7 \u0441\u0435\u0434\u043d\u0430\u043b, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430"

    goto :goto_7

    :cond_3d
    const-string v0, "Firming under the chin \u00b7 seated, no food or drink"

    goto :goto_7

    .line 47
    :pswitch_40
    if-eqz p1, :cond_45

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043f\u043e\u043c\u043f\u0430, \u0431\u0443\u0437\u0438\u0442\u0435 \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430\u0442"

    goto :goto_7

    :cond_45
    const-string v0, "A muscle pump, the cheeks take turns"

    goto :goto_7

    .line 48
    :pswitch_48
    if-eqz p1, :cond_4d

    const-string v0, "\u041d\u0435\u0436\u043d\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e"

    goto :goto_7

    :cond_4d
    const-string v0, "A gentle tingle on the forehead"

    goto :goto_7

    .line 49
    :pswitch_50
    if-eqz p1, :cond_55

    const-string v0, "\u0414\u044a\u043b\u0431\u043e\u043a\u043e \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_55
    const-string v0, "A deep rhythmic tapping"

    goto :goto_7

    .line 50
    :cond_58
    const-string v0, "A wave from slow to quicker and back"

    goto :goto_7

    .line 37
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_18
        :pswitch_20
        :pswitch_3
        :pswitch_28
        :pswitch_30
        :pswitch_38
        :pswitch_40
        :pswitch_40
        :pswitch_48
        :pswitch_50
    .end packed-switch
.end method

.method public static fileName(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 127
    packed-switch p0, :pswitch_data_3e

    .line 139
    :pswitch_3
    const-string v0, "WRM"

    .line 141
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

    .line 128
    :pswitch_1d
    const-string v0, "REC"

    goto :goto_5

    .line 129
    :pswitch_20
    const-string v0, "MAS"

    goto :goto_5

    .line 130
    :pswitch_23
    const-string v0, "REL"

    goto :goto_5

    .line 131
    :pswitch_26
    const-string v0, "ACT"

    goto :goto_5

    .line 132
    :pswitch_29
    const-string v0, "FLF"

    goto :goto_5

    .line 133
    :pswitch_2c
    const-string v0, "FTN"

    goto :goto_5

    .line 134
    :pswitch_2f
    const-string v0, "CHN"

    goto :goto_5

    .line 135
    :pswitch_32
    const-string v0, "FDR"

    goto :goto_5

    .line 136
    :pswitch_35
    const-string v0, "FDB"

    goto :goto_5

    .line 137
    :pswitch_38
    const-string v0, "FRX"

    goto :goto_5

    .line 138
    :pswitch_3b
    const-string v0, "JAW"

    goto :goto_5

    .line 127
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_3
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method static fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V
    .registers 12

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    .line 167
    const-wide/16 v2, 0x1

    sub-double v4, p2, p4

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    .line 168
    return-void
.end method

.method static hold(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;I[IIII)V
    .registers 18

    .prologue
    .line 235
    const/4 v0, 0x1

    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 236
    array-length v7, p2

    const/4 v0, 0x0

    move v6, v0

    :goto_10
    if-ge v6, v7, :cond_20

    aget v3, p2, v6

    .line 237
    const/4 v1, 0x1

    const/4 v2, 0x0

    mul-int/lit8 v4, p1, 0xa

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 236
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10

    .line 239
    :cond_20
    const/4 v7, 0x1

    const/4 v8, 0x0

    mul-int/lit8 v10, p1, 0xa

    const/4 v0, 0x1

    mul-int v1, p4, p1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object v6, p0

    move v9, p3

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 240
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_3c
    if-ltz v6, :cond_51

    .line 241
    const/4 v1, 0x1

    if-nez v6, :cond_4f

    move/from16 v2, p5

    :goto_43
    aget v3, p2, v6

    mul-int/lit8 v4, p1, 0xa

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 240
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_3c

    .line 241
    :cond_4f
    const/4 v2, 0x0

    goto :goto_43

    .line 243
    :cond_51
    return-void
.end method

.method static jaw(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x96

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 326
    const/16 v1, 0x28

    const/16 v2, 0x1ae

    const/4 v5, 0x7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 327
    const/16 v1, 0x3c

    const/16 v2, 0x11b

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 328
    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 329
    return-void
.end method

.method static massage(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0x28

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 184
    const/16 v5, 0x78

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 185
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v5

    .line 186
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

    .line 187
    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 188
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v6

    .line 189
    const/16 v10, 0x14

    const/16 v11, 0x3c

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 190
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    add-double v8, v0, v2

    move-object v4, p0

    move-wide v6, p1

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 191
    return-void
.end method

.method public static name(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_5c

    .line 31
    :pswitch_3
    if-eqz p1, :cond_58

    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    :goto_7
    return-object v0

    .line 20
    :pswitch_8
    if-eqz p1, :cond_d

    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_d
    const-string v0, "Recovery"

    goto :goto_7

    .line 21
    :pswitch_10
    if-eqz p1, :cond_15

    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    goto :goto_7

    :cond_15
    const-string v0, "Massage"

    goto :goto_7

    .line 22
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string v0, "\u041e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_1d
    const-string v0, "Relief"

    goto :goto_7

    .line 23
    :pswitch_20
    if-eqz p1, :cond_25

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u043d\u0435"

    goto :goto_7

    :cond_25
    const-string v0, "Activation"

    goto :goto_7

    .line 24
    :pswitch_28
    if-eqz p1, :cond_2d

    const-string v0, "\u041b\u0438\u0446\u0435 \u00b7 \u041f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435"

    goto :goto_7

    :cond_2d
    const-string v0, "Face \u00b7 Lift"

    goto :goto_7

    .line 25
    :pswitch_30
    if-eqz p1, :cond_35

    const-string v0, "\u041b\u0438\u0446\u0435 \u00b7 \u0422\u043e\u043d\u0443\u0441"

    goto :goto_7

    :cond_35
    const-string v0, "Face \u00b7 Tone"

    goto :goto_7

    .line 26
    :pswitch_38
    if-eqz p1, :cond_3d

    const-string v0, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    goto :goto_7

    :cond_3d
    const-string v0, "Under the chin"

    goto :goto_7

    .line 28
    :pswitch_40
    if-eqz p1, :cond_45

    const-string v0, "\u0414\u0435\u0442\u043e\u043a\u0441 \u043e\u0442 \u043e\u0442\u043e\u0446\u0438"

    goto :goto_7

    :cond_45
    const-string v0, "Depuff"

    goto :goto_7

    .line 29
    :pswitch_48
    if-eqz p1, :cond_4d

    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442"

    goto :goto_7

    :cond_4d
    const-string v0, "Botox effect"

    goto :goto_7

    .line 30
    :pswitch_50
    if-eqz p1, :cond_55

    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442"

    goto :goto_7

    :cond_55
    const-string v0, "Relaxed jaw"

    goto :goto_7

    .line 31
    :cond_58
    const-string v0, "Warm-up"

    goto :goto_7

    .line 19
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_18
        :pswitch_20
        :pswitch_3
        :pswitch_28
        :pswitch_30
        :pswitch_38
        :pswitch_40
        :pswitch_40
        :pswitch_48
        :pswitch_50
    .end packed-switch
.end method

.method static recover(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 14

    .prologue
    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 172
    const/16 v4, 0x50

    const/16 v5, 0x1e0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 173
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v4

    .line 174
    const/16 v8, 0x1e

    const/16 v9, 0x5a

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 175
    const/16 v8, 0x32

    const/16 v9, 0x4b

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 176
    const/16 v8, 0x46

    const/16 v9, 0x69

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 177
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v5

    .line 178
    const/16 v8, 0xc8

    const/16 v9, 0x14

    const/16 v10, 0x78

    move v6, v1

    move v7, v2

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 179
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v0

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v2

    add-double v7, v0, v2

    move-object v3, p0

    move-wide v5, p1

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 180
    return-void
.end method

.method static relax(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 16

    .prologue
    const/16 v5, 0x258

    const/16 v3, 0x1f4

    const/16 v6, 0x14a

    const/4 v8, 0x1

    .line 310
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v1

    .line 311
    const/4 v2, 0x4

    new-array v9, v2, [I

    fill-array-data v9, :array_36

    .line 312
    array-length v10, v9

    const/4 v2, 0x0

    move v7, v2

    :goto_14
    if-ge v7, v10, :cond_20

    aget v4, v9, v7

    .line 313
    const/4 v2, 0x5

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 312
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_14

    .line 315
    :cond_20
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v7

    .line 316
    const/16 v10, 0xfa

    move v9, v3

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 317
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v10

    move-object v6, p0

    move-wide v8, p1

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 318
    return-void

    .line 311
    :array_36
    .array-data 4
        0x64
        0x8c
        0xb4
        0xdc
    .end array-data
.end method

.method static relief(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x96

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 195
    const/16 v1, 0x14

    const/16 v2, 0x1ae

    const/4 v5, 0x7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 196
    const/16 v1, 0x1e

    const/16 v2, 0x11b

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 197
    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 198
    return-void
.end method

.method public static tint(I)I
    .registers 2

    .prologue
    const v0, -0xcb2c67

    .line 108
    packed-switch p0, :pswitch_data_2a

    .line 120
    :pswitch_6
    const v0, -0x48e7b

    :goto_9
    :pswitch_9
    return v0

    .line 109
    :pswitch_a
    const v0, -0xc82f15

    goto :goto_9

    .line 110
    :pswitch_e
    const v0, -0x587406

    goto :goto_9

    .line 112
    :pswitch_12
    const v0, -0xa61f5

    goto :goto_9

    .line 113
    :pswitch_16
    const v0, -0xb8d4a

    goto :goto_9

    .line 114
    :pswitch_1a
    const v0, -0x178607

    goto :goto_9

    .line 115
    :pswitch_1e
    const v0, -0x7e7308

    goto :goto_9

    .line 117
    :pswitch_22
    const v0, -0xc74208

    goto :goto_9

    .line 118
    :pswitch_26
    const v0, -0xa4fdf

    goto :goto_9

    .line 108
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_12
        :pswitch_6
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_22
        :pswitch_26
        :pswitch_9
    .end packed-switch
.end method

.method static wake(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;IIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;
    .registers 13

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 248
    new-array v2, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0x32

    mul-int/lit8 v4, p2, 0x2

    div-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit16 v4, p3, -0xc8

    move v1, p1

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->hold(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;I[IIII)V

    .line 249
    const-wide/16 v2, 0x1

    const-wide v4, 0x40fd4c0000000000L    # 120000.0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    .line 250
    return-object v0
.end method

.method static warmup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;D)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    move-result-object v0

    .line 333
    const/16 v3, 0x8

    new-array v7, v3, [I

    fill-array-data v7, :array_2a

    .line 334
    array-length v8, v7

    move v6, v2

    :goto_f
    if-ge v6, v8, :cond_20

    aget v5, v7, v6

    .line 335
    const/16 v3, 0xfa

    mul-int/lit8 v4, v5, 0xa

    mul-int/lit8 v5, v5, 0xf

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 334
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_f

    .line 337
    :cond_20
    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fill(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;DD)V

    .line 338
    return-void

    .line 333
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
