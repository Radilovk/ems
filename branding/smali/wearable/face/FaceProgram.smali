.class public final Lcom/isaigu/gymapp/wearable/face/FaceProgram;
.super Ljava/lang/Object;
.source "FaceProgram.java"


# static fields
.field private static final ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

.field public static final BLUETENS:[I

.field public static final CHEEK:I = 0x0

.field public static final CHIN:I = 0x1

.field public static final CONTOUR:I = 0x2

.field public static final LIFT:I = 0x0

.field public static final TONE:I = 0x1

.field public static final XEMS:[I


# instance fields
.field public final gapEarly:I

.field public final gapLater:I

.field public final hz:I

.field public final id:I

.field public final latin:Ljava/lang/String;

.field public final muscleBg:Ljava/lang/String;

.field public final muscleEn:Ljava/lang/String;

.field public final nameBg:Ljava/lang/String;

.field public final nameEn:Ljava/lang/String;

.field public final offS:I

.field public final onS:I

.field public final planned:I

.field public final resultBg:Ljava/lang/String;

.field public final resultEn:Ljava/lang/String;

.field public final target:I

.field public final tint:I

.field public final weeks:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .prologue
    .line 14
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_8e

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    .line 15
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_96

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->BLUETENS:[I

    .line 56
    const/4 v1, 0x3

    new-array v0, v1, [Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "\u041f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435"

    const-string v5, "Lift"

    const-string v6, "\u041f\u043e-\u043f\u043b\u044a\u0442\u043d\u0430, \u043f\u043e\u0432\u0434\u0438\u0433\u043d\u0430\u0442\u0430 \u0441\u043a\u0443\u043b\u0430"

    const-string v7, "A fuller, lifted cheek"

    const-string v8, "\u0413\u043e\u043b\u044f\u043c \u0441\u043a\u0443\u043b\u043e\u0432 \u043c\u0443\u0441\u043a\u0443\u043b"

    const-string v9, "Zygomaticus major"

    const-string v10, "m. zygomaticus major"

    const/16 v11, 0x46

    const/4 v12, 0x3

    const/4 v13, 0x6

    const v14, -0x906f

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x38

    invoke-direct/range {v1 .. v18}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    aput-object v1, v19, v20

    const/16 v20, 0x1

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "\u0422\u043e\u043d\u0443\u0441"

    const-string v5, "Tone"

    const-string v6, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442, \u043a\u043e\u044f\u0442\u043e \u0441\u0435 \u0437\u0430\u0434\u044a\u0440\u0436\u0430"

    const-string v7, "Firmness that lasts"

    const-string v8, "\u041c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u0431\u0443\u0437\u0430\u0442\u0430"

    const-string v9, "Mid-face muscles"

    const-string v10, "mm. faciei"

    const/16 v11, 0x23

    const/4 v12, 0x5

    const/4 v13, 0x5

    const v14, -0x3f7b04

    const/4 v15, 0x3

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    aput-object v1, v19, v20

    const/16 v20, 0x2

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "\u041a\u043e\u043d\u0442\u0443\u0440"

    const-string v5, "Contour"

    const-string v6, "\u041f\u043e-\u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    const-string v7, "Firmer under the chin"

    const-string v8, "\u041d\u0430\u0434\u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v9, "Suprahyoid muscles"

    const-string v10, "m. digastricus \u00b7 m. mylohyoideus"

    const/16 v11, 0x1e

    const/4 v12, 0x4

    const/16 v13, 0x8

    const v14, -0x7e7308

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    aput-object v1, v19, v20

    sput-object v19, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    return-void

    .line 14
    :array_8e
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 15
    :array_96
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .registers 19

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    .line 37
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    .line 38
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameBg:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameEn:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->resultBg:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->resultEn:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleBg:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleEn:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    .line 45
    iput p10, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    .line 46
    iput p11, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    .line 47
    iput p12, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    .line 48
    iput p13, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    .line 49
    iput p14, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapEarly:I

    .line 50
    move/from16 v0, p15

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapLater:I

    .line 51
    move/from16 v0, p16

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->weeks:I

    .line 52
    move/from16 v0, p17

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->planned:I

    .line 53
    return-void
.end method

.method public static get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 4

    .prologue
    .line 71
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public course(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-nez v0, :cond_c

    .line 94
    if-eqz p1, :cond_9

    const-string v0, "12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u00b7 3, \u043f\u043e\u0441\u043b\u0435 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    .line 99
    :goto_8
    return-object v0

    .line 94
    :cond_9
    const-string v0, "12 weeks \u00b7 3, then 5 times a week"

    goto :goto_8

    .line 96
    :cond_c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 97
    if-eqz p1, :cond_16

    const-string v0, "\u041f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430 \u00b7 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    goto :goto_8

    :cond_16
    const-string v0, "Upkeep \u00b7 2\u20133 times a week"

    goto :goto_8

    .line 99
    :cond_19
    if-eqz p1, :cond_1e

    const-string v0, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    goto :goto_8

    :cond_1e
    const-string v0, "3 times a week"

    goto :goto_8
.end method

.method public how(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_1e

    .line 125
    if-eqz p1, :cond_1a

    const-string v0, "\u0414\u0432\u0443\u0441\u0442\u043e\u043c\u0430\u0448\u043d\u0438\u044f\u0442 \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u043d\u043e-\u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b (m. digastricus, m. mylohyoideus) \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442. \u0421\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e \u0438\u043c \u043e\u0444\u043e\u0440\u043c\u044f \u044a\u0433\u044a\u043b\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u0448\u0438\u044f\u0442\u0430. \u0422\u043e\u0432\u0430 \u0441\u0430 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u043d\u0435\u0442\u043e \u2014 \u0437\u0430\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430 \u0435 \u0441\u0435\u0434\u043d\u0430\u043b, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0437\u0430 \u043a\u043e\u043d\u0442\u0443\u0440\u0430 \u043d\u0435 \u0435 \u0434\u043e\u043a\u0430\u0437\u0430\u043d \u0432 \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0438\u044f."

    :goto_9
    return-object v0

    .line 109
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0432\u044a\u0437\u0431\u0443\u0436\u0434\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u0440\u0430\u0437\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u044f \u043d\u0430 \u043b\u0438\u0446\u0435\u0432\u0438\u044f \u043d\u0435\u0440\u0432 (n. facialis) \u0438 \u0441\u043a\u0443\u043b\u043e\u0432\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b \u0441\u0435 \u0441\u044a\u043a\u0440\u0430\u0449\u0430\u0432\u0430 \u0441\u0430\u043c \u2014 3 \u0441\u0435\u043a\u0443\u043d\u0434\u0438, \u043f\u043e\u0441\u043b\u0435 6 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043e\u0442\u0434\u0438\u0445, \u0437\u0430\u0449\u043e\u0442\u043e \u043b\u0438\u0446\u0435\u0432\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0441\u0430 \u0431\u044a\u0440\u0437\u0438 \u0438 \u0441\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430\u0442 \u0431\u044a\u0440\u0437\u043e. \u0421 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0441\u0442\u0430\u0432\u0430 \u043f\u043e-\u043f\u043b\u044a\u0442\u0435\u043d: \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u043f\u043e\u0440\u0430 \u0437\u0430 \u0431\u0443\u0437\u0430\u0442\u0430 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430 \u0438\u0437\u0442\u044a\u043d\u044f\u0432\u0430\u0442 \u043c\u0430\u0441\u0442\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u0433\u043b\u0430\u0432\u043d\u0438\u0447\u043a\u0438. \u0412 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 (12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e) \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0435 \u0441\u0442\u0430\u043d\u0430\u043b \u0441 \u043e\u043a\u043e\u043b\u043e 18 % \u043f\u043e-\u0434\u0435\u0431\u0435\u043b."

    goto :goto_9

    .line 114
    :cond_f
    const-string v0, "The impulse excites the motor branches of the facial nerve (n. facialis) and the cheek muscle contracts by itself \u2014 3 seconds, then 6 seconds of rest, as the face muscles are fast and tire fast. Over time the muscle grows fuller: more support for the cheek where the fat pads thin with age. In a clinical trial (12 weeks, 5 times a week) the muscle grew about 18 % thicker."

    goto :goto_9

    .line 119
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u041f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 (35 Hz) \u0434\u0430\u0432\u0430 \u043c\u0435\u043a\u043e, \u043f\u043e\u0447\u0442\u0438 \u0441\u043b\u044f\u0442\u043e \u0441\u044a\u043a\u0440\u0430\u0449\u0435\u043d\u0438\u0435, \u043a\u043e\u0435\u0442\u043e \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0431\u0430\u0432\u043d\u043e. \u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0442\u0430\u0432\u0430\u0442 \u043f\u043e-\u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u0438 \u0438 \u043f\u0430\u0437\u044f\u0442 \u043f\u043e\u0441\u0442\u0438\u0433\u043d\u0430\u0442\u043e\u0442\u043e \u0441\u043b\u0435\u0434 \u043a\u0443\u0440\u0441\u0430 \u0437\u0430 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u043d\u0435\u0433\u043e \u0435\u0444\u0435\u043a\u0442\u044a\u0442 \u043f\u043e\u0441\u0442\u0435\u043f\u0435\u043d\u043d\u043e \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430."

    goto :goto_9

    .line 122
    :cond_17
    const-string v0, "A lower rate (35 Hz) gives a soft, nearly fused contraction that tires far slower. The muscles grow more enduring and keep what the lift course built \u2014 without upkeep the effect fades."

    goto :goto_9

    .line 129
    :cond_1a
    const-string v0, "The digastric and mylohyoid (m. digastricus, m. mylohyoideus) lift the hyoid; their tone shapes the angle between chin and neck. They are also the swallowing muscles \u2014 so: seated, no food or drink. A contour effect is not proven in studies."

    goto :goto_9

    .line 107
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method public muscle(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public name(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public place(Z)[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 137
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-ne v0, v2, :cond_28

    .line 138
    if-eqz p1, :cond_19

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043a\u043e\u0436\u0430\u0442\u0430 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    aput-object v1, v0, v3

    const-string v1, "1 \u0438 2 \u2014 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430, \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0441\u0440\u0435\u0434\u0430\u0442\u0430"

    aput-object v1, v0, v2

    const-string v1, "\u041c\u0435\u0436\u0434\u0443 \u043a\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442 \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    aput-object v1, v0, v4

    .line 147
    :goto_18
    return-object v0

    .line 142
    :cond_19
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Clean the skin under the chin"

    aput-object v1, v0, v3

    const-string v1, "1 and 2 \u2014 under the chin, either side of the midline"

    aput-object v1, v0, v2

    const-string v1, "Between the chin bone and the hyoid \u2014 never on the side of the neck"

    aput-object v1, v0, v4

    goto :goto_18

    .line 147
    :cond_28
    if-eqz p1, :cond_39

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043a\u043e\u0436\u0430\u0442\u0430, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v1, v0, v3

    const-string v1, "1 \u2014 \u043d\u0430 \u0441\u043a\u0443\u043b\u0430\u0442\u0430, \u0434\u0432\u0430 \u043f\u0440\u044a\u0441\u0442\u0430 \u043f\u043e\u0434 \u0432\u044a\u043d\u0448\u043d\u0438\u044f \u044a\u0433\u044a\u043b \u043d\u0430 \u043e\u043a\u043e\u0442\u043e"

    aput-object v1, v0, v2

    const-string v1, "2 \u2014 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043a\u044a\u043c \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430, \u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430"

    aput-object v1, v0, v4

    goto :goto_18

    .line 151
    :cond_39
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Clean the skin, no cream"

    aput-object v1, v0, v3

    const-string v1, "1 \u2014 on the cheekbone, two fingers below the outer eye corner"

    aput-object v1, v0, v2

    const-string v1, "2 \u2014 along the line to the mouth corner, not on the lip"

    aput-object v1, v0, v4

    goto :goto_18
.end method

.method public result(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->resultBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->resultEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public rhythm(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_32

    const-string v0, " s \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u00b7 "

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_35

    const-string v0, " s \u043e\u0442\u0434\u0438\u0445"

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v0, " s hold \u00b7 "

    goto :goto_1b

    :cond_35
    const-string v0, " s rest"

    goto :goto_29
.end method

.method public strengthGoal(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 159
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 160
    if-eqz p1, :cond_a

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0443\u0441\u0435\u0442\u0438 \u044f\u0441\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    .line 163
    :goto_9
    return-object v0

    .line 161
    :cond_a
    const-string v0, "Raise until a clear tightening is felt under the chin \u2014 no pain"

    goto :goto_9

    .line 163
    :cond_d
    if-eqz p1, :cond_12

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u044a\u0433\u044a\u043b\u044a\u0442 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0432\u0438\u0434\u0438\u043c\u043e \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    goto :goto_9

    .line 164
    :cond_12
    const-string v0, "Raise until the mouth corner visibly lifts \u2014 no pain, no blinking"

    goto :goto_9
.end method
