.class public final Lcom/isaigu/gymapp/wearable/face/FaceProgram;
.super Ljava/lang/Object;
.source "FaceProgram.java"


# static fields
.field private static final ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

.field public static final BLUETENS:[I

.field public static final CHEEK:I = 0x0

.field public static final CHIN:I = 0x1

.field public static final CONTOUR:I = 0x5

.field public static final DRAIN:I = 0x2

.field public static final FIRM:I = 0x1

.field public static final FOREHEAD:I = 0x2

.field public static final JAW:I = 0x3

.field public static final JAW_RELAX:I = 0x4

.field public static final LIFT:I = 0x0

.field public static final RELAX:I = 0x3

.field public static final XEMS:[I


# instance fields
.field public final evidence:I

.field public final gapEarly:I

.field public final gapLater:I

.field public final glyph:Ljava/lang/String;

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

.field public final sensory:Z

.field public final tagBg:Ljava/lang/String;

.field public final tagEn:Ljava/lang/String;

.field public final target:I

.field public final tint:I

.field public final weeks:I


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .prologue
    .line 19
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_126

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    .line 20
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_132

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->BLUETENS:[I

    .line 66
    const/4 v1, 0x6

    new-array v0, v1, [Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433"

    const-string v6, "Lift"

    const-string v7, "\u041f\u043e\u0432\u0434\u0438\u0433\u043d\u0430\u0442\u0438, \u043f\u043e-\u043f\u043b\u044a\u0442\u043d\u0438 \u0441\u043a\u0443\u043b\u0438"

    const-string v8, "Lifted, fuller cheekbones"

    const-string v9, "\u0413\u043e\u043b\u044f\u043c \u0441\u043a\u0443\u043b\u043e\u0432 \u043c\u0443\u0441\u043a\u0443\u043b"

    const-string v10, "Zygomaticus major"

    const-string v11, "m. zygomaticus major"

    const/16 v12, 0x46

    const/4 v13, 0x3

    const/4 v14, 0x6

    const v15, -0x906f

    const-string v16, "\u2197"

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0xc

    const/16 v21, 0x38

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x1

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b"

    const-string v6, "Firm contour"

    const-string v7, "\u0415\u043b\u0430\u0441\u0442\u0438\u0447\u043d\u043e\u0441\u0442, \u043a\u043e\u044f\u0442\u043e \u043f\u0430\u0437\u0438 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430"

    const-string v8, "Elasticity that keeps the lift"

    const-string v9, "\u041c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u0431\u0443\u0437\u0430\u0442\u0430"

    const-string v10, "Mid-face muscles"

    const-string v11, "mm. faciei"

    const/16 v12, 0x23

    const/4 v13, 0x5

    const/4 v14, 0x5

    const v15, -0x3f7b04

    const-string v16, "\u25c7"

    const/16 v17, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x2

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\u0414\u0435\u0442\u043e\u043a\u0441 \u043e\u0442 \u043e\u0442\u043e\u0446\u0438"

    const-string v6, "Depuff detox"

    const-string v7, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u0434\u043f\u0443\u0445\u0432\u0430\u043d\u0435, \u043f\u043e-\u044f\u0441\u043d\u0438 \u0447\u0435\u0440\u0442\u0438"

    const-string v8, "Less puffiness, clearer features"

    const-string v9, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043f\u043e\u043c\u043f\u0430 \u043d\u0430 \u0431\u0443\u0437\u0430\u0442\u0430"

    const-string v10, "Cheek muscle pump"

    const-string v11, "m. zygomaticus \u00b7 m. buccinator"

    const/16 v12, 0x1e

    const/4 v13, 0x1

    const/4 v14, 0x2

    const v15, -0xc74208

    const-string v16, "\u224b"

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x3

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442"

    const-string v6, "Botox effect"

    const-string v7, "\u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u043c\u0438\u043c\u0438\u043a\u0430, \u043f\u043e-\u0433\u043b\u0430\u0434\u043a\u043e \u0447\u0435\u043b\u043e \u00b7 \u0431\u0435\u0437 \u0438\u0433\u043b\u0430"

    const-string v8, "Relaxed expression, smoother forehead \u00b7 no needle"

    const-string v9, "\u0421\u0435\u0442\u0438\u0432\u043d\u0438 \u043d\u0435\u0440\u0432\u0438 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e"

    const-string v10, "Forehead sensory nerves"

    const-string v11, "n. supraorbitalis \u00b7 n. supratrochlearis"

    const/16 v12, 0x3c

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, -0xa4fdf

    const-string v16, "\u223f"

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x4

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442"

    const-string v6, "Relaxed jaw"

    const-string v7, "\u041f\u043e-\u043c\u0435\u043a \u0434\u043e\u043b\u0435\u043d \u043e\u0432\u0430\u043b, \u0431\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435"

    const-string v8, "A softer jawline, no tension"

    const-string v9, "\u0414\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u0435\u043d \u043c\u0443\u0441\u043a\u0443\u043b"

    const-string v10, "Masseter"

    const-string v11, "m. masseter"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, -0xcb2c67

    const-string v16, "\u25e0"

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x5

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Firm chin"

    const-string v7, "\u041f\u043e-\u0441\u0442\u0435\u0433\u043d\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    const-string v8, "A firmer profile under the chin"

    const-string v9, "\u041d\u0430\u0434\u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v10, "Suprahyoid muscles"

    const-string v11, "m. digastricus \u00b7 m. mylohyoideus"

    const/16 v12, 0x1e

    const/4 v13, 0x4

    const/16 v14, 0x8

    const v15, -0x7e7308

    const-string v16, "\u25e1"

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    sput-object v22, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    return-void

    .line 19
    :array_126
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 20
    :array_132
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private constructor <init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V
    .registers 22

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    .line 45
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    .line 46
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    .line 47
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameBg:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameEn:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagBg:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagEn:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleBg:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleEn:Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    .line 54
    iput p11, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    .line 55
    iput p12, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    .line 56
    iput p13, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    .line 57
    iput p14, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    .line 58
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->glyph:Ljava/lang/String;

    .line 59
    move/from16 v0, p16

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidence:I

    .line 60
    move/from16 v0, p17

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapEarly:I

    .line 61
    move/from16 v0, p18

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapLater:I

    .line 62
    move/from16 v0, p19

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->weeks:I

    .line 63
    move/from16 v0, p20

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->planned:I

    .line 64
    return-void
.end method

.method public static get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 4

    .prologue
    .line 96
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
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_36

    .line 135
    if-eqz p1, :cond_32

    const-string v0, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    :goto_9
    return-object v0

    .line 130
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u043a\u0443\u0440\u0441 12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    goto :goto_9

    :cond_f
    const-string v0, "12-week course"

    goto :goto_9

    .line 131
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    goto :goto_9

    :cond_17
    const-string v0, "2\u20133 times a week"

    goto :goto_9

    .line 132
    :pswitch_1a
    if-eqz p1, :cond_1f

    const-string v0, "\u0441\u0443\u0442\u0440\u0438\u043d \u00b7 \u043f\u0440\u0435\u0434\u0438 \u0441\u044a\u0431\u0438\u0442\u0438\u0435"

    goto :goto_9

    :cond_1f
    const-string v0, "mornings \u00b7 before an event"

    goto :goto_9

    .line 133
    :pswitch_22
    if-eqz p1, :cond_27

    const-string v0, "20 \u043c\u0438\u043d \u0434\u043d\u0435\u0432\u043d\u043e"

    goto :goto_9

    :cond_27
    const-string v0, "20 min daily"

    goto :goto_9

    .line 134
    :pswitch_2a
    if-eqz p1, :cond_2f

    const-string v0, "\u043f\u0440\u0438 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435"

    goto :goto_9

    :cond_2f
    const-string v0, "when tense"

    goto :goto_9

    .line 135
    :cond_32
    const-string v0, "3 times a week"

    goto :goto_9

    .line 129
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method public evidenceText(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidence:I

    packed-switch v0, :pswitch_data_1e

    .line 148
    if-eqz p1, :cond_1a

    const-string v0, "\u25cf\u25cb\u25cb \u0444\u0438\u0437\u0438\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u0430 \u043b\u043e\u0433\u0438\u043a\u0430, \u0435\u0444\u0435\u043a\u0442\u044a\u0442 \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d"

    :goto_9
    return-object v0

    .line 146
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u25cf\u25cf\u25cf \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0432 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e"

    goto :goto_9

    :cond_f
    const-string v0, "\u25cf\u25cf\u25cf shown in a clinical trial on the face"

    goto :goto_9

    .line 147
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u25cf\u25cf\u25cb \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0437\u0430 \u0441\u044a\u0449\u0438\u044f \u043c\u0435\u0445\u0430\u043d\u0438\u0437\u044a\u043c \u0432 \u0434\u0440\u0443\u0433\u0438 \u043e\u0431\u043b\u0430\u0441\u0442\u0438"

    goto :goto_9

    :cond_17
    const-string v0, "\u25cf\u25cf\u25cb the mechanism is proven elsewhere"

    goto :goto_9

    .line 148
    :cond_1a
    const-string v0, "\u25cf\u25cb\u25cb physiological rationale, effect not measured"

    goto :goto_9

    .line 145
    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method

.method public how(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_36

    .line 202
    if-eqz p1, :cond_32

    const-string v0, "\u0414\u0432\u0443\u0441\u0442\u043e\u043c\u0430\u0448\u043d\u0438\u044f\u0442 \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u043d\u043e-\u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b (m. digastricus, m. mylohyoideus) \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442; \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e \u0438\u043c \u043e\u0444\u043e\u0440\u043c\u044f \u044a\u0433\u044a\u043b\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u0448\u0438\u044f\u0442\u0430. \u0422\u043e\u0432\u0430 \u0441\u0430 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u043d\u0435\u0442\u043e \u2014 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430 \u0435 \u0441\u0435\u0434\u043d\u0430\u043b, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0437\u0430 \u043a\u043e\u043d\u0442\u0443\u0440\u0430 \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d \u0432 \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435."

    :goto_9
    return-object v0

    .line 156
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0432\u044a\u0437\u0431\u0443\u0436\u0434\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u0440\u0430\u0437\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u044f \u043d\u0430 \u043b\u0438\u0446\u0435\u0432\u0438\u044f \u043d\u0435\u0440\u0432 (n. facialis) \u0438 \u0441\u043a\u0443\u043b\u043e\u0432\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b \u0441\u0435 \u0441\u044a\u043a\u0440\u0430\u0449\u0430\u0432\u0430 \u0441\u0430\u043c \u2014 3 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0440\u0430\u0431\u043e\u0442\u0430, 6 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043e\u0442\u0434\u0438\u0445, \u0437\u0430\u0449\u043e\u0442\u043e \u043b\u0438\u0446\u0435\u0432\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0441\u0430 \u0431\u044a\u0440\u0437\u0438 \u0438 \u0441\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430\u0442 \u0431\u044a\u0440\u0437\u043e. \u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u043d\u044f\u043c\u0430\u0442 \u0441\u0443\u0445\u043e\u0436\u0438\u043b\u0438\u044f: \u0442\u0435 \u0441\u0430 \u0432\u043f\u043b\u0435\u0442\u0435\u043d\u0438 \u0432 \u043a\u043e\u0436\u0430\u0442\u0430. \u041f\u043e-\u043f\u043b\u044a\u0442\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b \u0434\u0430\u0432\u0430 \u043e\u043f\u043e\u0440\u0430 \u043e\u0442\u0432\u044a\u0442\u0440\u0435 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441 \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435 \u0438\u0437\u0442\u044a\u043d\u044f\u0432\u0430\u0442 \u043c\u0430\u0441\u0442\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u0433\u043b\u0430\u0432\u043d\u0438\u0447\u043a\u0438 \u2014 \u0431\u0443\u0437\u0430\u0442\u0430 \u0441\u0442\u043e\u0438 \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u043e, \u0441\u043a\u0443\u043b\u0430\u0442\u0430 \u0435 \u043f\u043e-\u0438\u0437\u0440\u0430\u0437\u0435\u043d\u0430. \u0412 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 (12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e) \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0435 \u0441\u0442\u0430\u043d\u0430\u043b \u0441 \u043e\u043a\u043e\u043b\u043e 18 % \u043f\u043e-\u0434\u0435\u0431\u0435\u043b."

    goto :goto_9

    .line 161
    :cond_f
    const-string v0, "The impulse excites the motor branches of the facial nerve and the cheek muscle contracts by itself \u2014 3 seconds of work, 6 of rest, as face muscles are fast and tire fast. Face muscles have no tendons: they weave into the skin. A fuller muscle supports the cheek from within where the fat pads thin with age. In a clinical trial (12 weeks, 5 times a week) the muscle grew about 18 % thicker."

    goto :goto_9

    .line 166
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u041f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 (35 Hz) \u0434\u0430\u0432\u0430 \u043c\u0435\u043a\u043e, \u043f\u043e\u0447\u0442\u0438 \u0441\u043b\u044f\u0442\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435, \u043a\u043e\u0435\u0442\u043e \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0431\u0430\u0432\u043d\u043e. \u0422\u0430\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u043d\u0430 \u043c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u043b\u0438\u0446\u0435\u0442\u043e \u0434\u044a\u0440\u0436\u0438 \u0444\u043e\u0440\u043c\u0430\u0442\u0430 \u0441\u0438 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d\u044f. \u0421\u043b\u0435\u0434 \u043a\u0443\u0440\u0441\u0430 \u0437\u0430 \u043b\u0438\u0444\u0442\u0438\u043d\u0433 \u0442\u043e\u0432\u0430 \u0435 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430: \u0431\u0435\u0437 \u043d\u0435\u044f \u043f\u043e\u0441\u0442\u0438\u0433\u043d\u0430\u0442\u043e\u0442\u043e \u043f\u043e\u0441\u0442\u0435\u043f\u0435\u043d\u043d\u043e \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430."

    goto :goto_9

    .line 169
    :cond_17
    const-string v0, "A lower rate (35 Hz) gives a soft, nearly fused hold that tires far slower \u2014 it trains the enduring fibres, so the face keeps its shape through the day. After the lift course this is the upkeep."

    goto :goto_9

    .line 172
    :pswitch_1a
    if-eqz p1, :cond_1f

    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u2014 1 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0430, 2 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043e\u0442\u0434\u0438\u0445 \u2014 \u043f\u0440\u0435\u0432\u0440\u044a\u0449\u0430\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0432 \u043f\u043e\u043c\u043f\u0430: \u0442\u043e\u0439 \u043f\u0440\u0438\u0442\u0438\u0441\u043a\u0430 \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u0438 \u0432\u0435\u043d\u043e\u0437\u043d\u0438\u0442\u0435 \u0441\u044a\u0434\u043e\u0432\u0435 \u0438 \u0438\u0437\u0442\u043b\u0430\u0441\u043a\u0432\u0430 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442 \u043a\u044a\u043c \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u043b\u0438 \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e \u0438 \u043f\u043e\u0434 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430. \u041f\u0440\u0438 Bluetens \u0434\u0432\u0435\u0442\u0435 \u0431\u0443\u0437\u0438 \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430\u0442 \u043a\u0430\u0442\u043e \u0432\u044a\u043b\u043d\u0430. \u0427\u0435 \u0435\u043b\u0435\u043a\u0442\u0440\u0438\u0447\u0435\u0441\u043a\u043e\u0442\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u043e\u0442\u043e\u0446\u0438, \u0435 \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e (\u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u043d \u043f\u0440\u0435\u0433\u043b\u0435\u0434); \u043f\u0440\u0438 \u043b\u0438\u0446\u0435\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438 \u0441\u044a\u0449\u0438\u044f\u0442 \u043c\u0435\u0445\u0430\u043d\u0438\u0437\u044a\u043c. \u041d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0441\u0443\u0442\u0440\u0438\u043d, \u043a\u043e\u0433\u0430\u0442\u043e \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u043e\u0442 \u043d\u043e\u0449\u0442\u0430 \u0435 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430."

    goto :goto_9

    .line 177
    :cond_1f
    const-string v0, "Short rhythmic holds \u2014 1 second on, 2 off \u2014 turn the muscle into a pump that presses the lymph and venous vessels and moves the held fluid towards the nodes in front of the ear and under the jaw. On Bluetens the cheeks take turns, like a wave. That electrical contraction reduces swelling is proven (a systematic review); the face works by the same mechanism. Best in the morning."

    goto :goto_9

    .line 182
    :pswitch_22
    if-eqz p1, :cond_27

    const-string v0, "\u041d\u0435\u0436\u0435\u043d \u0442\u043e\u043a (60 Hz) \u0434\u043e\u043a\u043e\u0441\u0432\u0430 \u0441\u0430\u043c\u043e \u0441\u0435\u0442\u0438\u0432\u043d\u0438\u0442\u0435 \u043d\u0435\u0440\u0432\u0438 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e (n. supraorbitalis, n. supratrochlearis) \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438. \u0421\u0435\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u043f\u043e\u0442\u043e\u043a \u043f\u043e\u0442\u0438\u0441\u043a\u0430 \u0432\u044a\u0437\u0431\u0443\u0434\u0438\u043c\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043d\u0435\u0432\u0440\u043e\u043d\u0438 \u0438 \u0442\u043e\u043d\u0443\u0441\u044a\u0442 \u043d\u0430 \u043c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0441\u043f\u0430\u0434\u0430: \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u043c\u0435\u0436\u0434\u0443\u0432\u0435\u0436\u0434\u0438\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442, \u0431\u0440\u044a\u0447\u043a\u0438\u0442\u0435 \u043e\u0442 \u043c\u0438\u043c\u0438\u043a\u0430 \u043e\u043c\u0435\u043a\u0432\u0430\u0442. \u0427\u0435 \u0442\u0430\u043a\u044a\u0432 \u0442\u043e\u043a \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438\u044f \u0442\u043e\u043d\u0443\u0441, \u0435 \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e (\u043c\u0435\u0442\u0430-\u0430\u043d\u0430\u043b\u0438\u0437\u0438); \u0440\u0430\u0437\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0430 \u043a\u0430\u0442\u043e \u043f\u0440\u0438 \u043e\u0434\u043e\u0431\u0440\u0435\u043d\u043e\u0442\u043e \u043c\u0435\u0434\u0438\u0446\u0438\u043d\u0441\u043a\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u0437\u0430 \u0447\u0435\u043b\u043e\u0442\u043e. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0435 \u0437\u0430 \u0447\u0430\u0441\u043e\u0432\u0435 \u0438 \u0441\u0435 \u043d\u0430\u0442\u0440\u0443\u043f\u0432\u0430 \u0441 \u0440\u0435\u0434\u043e\u0432\u043d\u043e\u0441\u0442. \u041d\u0435 \u0437\u0430\u043c\u0435\u0441\u0442\u0432\u0430 \u0431\u043e\u0442\u0443\u043b\u0438\u043d\u043e\u0432\u0438\u044f \u0442\u043e\u043a\u0441\u0438\u043d."

    goto :goto_9

    .line 188
    :cond_27
    const-string v0, "A gentle current (60 Hz) touches only the sensory nerves of the forehead \u2014 the muscle does not move. The sensory input damps the excitability of the motor neurons and the tone of the expression muscles drops: the forehead and the frown relax, expression lines soften. That such current lowers muscle tone is proven (meta-analyses); placement and settings match the approved medical forehead device. The effect lasts hours and builds with regular use. It does not replace botulinum toxin."

    goto :goto_9

    .line 194
    :pswitch_2a
    if-eqz p1, :cond_2f

    const-string v0, "\u0421\u0435\u0440\u0438\u0438 \u043e\u0442 \u0431\u044a\u0440\u0437\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438, \u043f\u043e \u0434\u0432\u0435 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430, \u0432\u044a\u0440\u0445\u0443 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b (m. masseter) \u2014 \u0443\u0441\u0435\u0449\u0430\u0442 \u0441\u0435 \u043a\u0430\u0442\u043e \u0434\u044a\u043b\u0431\u043e\u043a\u043e, \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435. \u0412 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 \u043f\u0440\u0438 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0432 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0442\u043e\u0437\u0438 \u0442\u043e\u043a \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439. \u0420\u0435\u0437\u0443\u043b\u0442\u0430\u0442: \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442, \u043f\u043e-\u043c\u0435\u043a \u0434\u043e\u043b\u0435\u043d \u043e\u0432\u0430\u043b, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u043e\u0442 \u0441\u0442\u0438\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u0437\u044a\u0431\u0438."

    goto :goto_9

    .line 198
    :cond_2f
    const-string v0, "Bursts of quick impulses, two a second, on the masseter \u2014 felt as a deep rhythmic tapping. In a clinical trial in jaw tension this current lowered the muscle\'s resting activity: a relaxed jaw, a softer lower face, less clenching tension."

    goto :goto_9

    .line 205
    :cond_32
    const-string v0, "The digastric and mylohyoid lift the hyoid; their tone shapes the angle between chin and neck. They are also the swallowing muscles \u2014 seated, no food or drink. A contour effect is not measured in studies."

    goto :goto_9

    .line 154
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method public muscle(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
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
    .line 100
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public place(ZZ)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    packed-switch v0, :pswitch_data_96

    .line 234
    if-eqz p1, :cond_86

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043a\u043e\u0436\u0430\u0442\u0430, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v1, v0, v2

    const-string v1, "1 \u2014 \u043d\u0430 \u0441\u043a\u0443\u043b\u0430\u0442\u0430, \u0434\u0432\u0430 \u043f\u0440\u044a\u0441\u0442\u0430 \u043f\u043e\u0434 \u0432\u044a\u043d\u0448\u043d\u0438\u044f \u044a\u0433\u044a\u043b \u043d\u0430 \u043e\u043a\u043e\u0442\u043e"

    aput-object v1, v0, v3

    const-string v1, "2 \u2014 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043a\u044a\u043c \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430, \u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430"

    aput-object v1, v0, v4

    :goto_19
    return-object v0

    .line 214
    :pswitch_1a
    if-eqz p1, :cond_2b

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043a\u043e\u0436\u0430\u0442\u0430 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    aput-object v1, v0, v2

    const-string v1, "1 \u0438 2 \u2014 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430, \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0441\u0440\u0435\u0434\u0430\u0442\u0430"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u0435\u0436\u0434\u0443 \u043a\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442 \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    aput-object v1, v0, v4

    goto :goto_19

    .line 217
    :cond_2b
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Clean the skin under the chin"

    aput-object v1, v0, v2

    const-string v1, "1 and 2 \u2014 under the chin, either side of the midline"

    aput-object v1, v0, v3

    const-string v1, "Between the chin bone and the hyoid \u2014 never on the side of the neck"

    aput-object v1, v0, v4

    goto :goto_19

    .line 220
    :pswitch_3a
    if-eqz p1, :cond_51

    new-array v1, v1, [Ljava/lang/String;

    const-string v0, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u0447\u0435\u043b\u043e\u0442\u043e, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v0, v1, v2

    .line 221
    if-eqz p2, :cond_4e

    const-string v0, "\u0412\u0441\u044f\u043a\u0430 \u0434\u0432\u043e\u0439\u043a\u0430 \u043d\u0430 \u0441\u0432\u043e\u044f\u0442\u0430 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0430 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e, 1 \u0434\u043e 2"

    :goto_46
    aput-object v0, v1, v3

    const-string v0, "\u0414\u0432\u0430 \u043f\u0440\u044a\u0441\u0442\u0430 \u043d\u0430\u0434 \u0432\u0435\u0436\u0434\u0438\u0442\u0435, \u043f\u043e\u0434 \u043a\u043e\u0441\u0430\u0442\u0430 \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u043a\u044a\u043c \u043e\u043a\u043e\u0442\u043e"

    aput-object v0, v1, v4

    move-object v0, v1

    goto :goto_19

    :cond_4e
    const-string v0, "1 \u0438 2 \u2014 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e, \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0441\u0440\u0435\u0434\u0430\u0442\u0430"

    goto :goto_46

    .line 223
    :cond_51
    new-array v1, v1, [Ljava/lang/String;

    const-string v0, "Clean the forehead, no cream"

    aput-object v0, v1, v2

    .line 224
    if-eqz p2, :cond_63

    const-string v0, "Each pair on its half of the forehead, 1 beside 2"

    :goto_5b
    aput-object v0, v1, v3

    const-string v0, "Two fingers above the brows, below the hair \u2014 never towards the eye"

    aput-object v0, v1, v4

    move-object v0, v1

    goto :goto_19

    :cond_63
    const-string v0, "1 and 2 \u2014 on the forehead, either side of the middle"

    goto :goto_5b

    .line 227
    :pswitch_66
    if-eqz p1, :cond_77

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u0421\u0442\u0438\u0441\u043d\u0438 \u0437\u044a\u0431\u0438 \u2014 \u043f\u043e\u0434 \u043f\u0440\u044a\u0441\u0442\u0438\u0442\u0435 \u0441\u0435 \u043d\u0430\u0434\u0443\u0432\u0430 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b"

    aput-object v1, v0, v2

    const-string v1, "1 \u2014 \u0433\u043e\u0440\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430, \u043f\u043e\u0434 \u0441\u043a\u0443\u043b\u0430\u0442\u0430 \u00b7 2 \u2014 \u0434\u043e\u043b\u0443, \u043d\u0430\u0434 \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    aput-object v1, v0, v3

    const-string v1, "\u041b\u044f\u0432\u0430 \u0438 \u0434\u044f\u0441\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430 \u2014 \u043f\u043e \u0435\u0434\u043d\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    aput-object v1, v0, v4

    goto :goto_19

    .line 230
    :cond_77
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Clench \u2014 the masseter bulges under the fingers"

    aput-object v1, v0, v2

    const-string v1, "1 \u2014 top of the muscle, under the cheekbone \u00b7 2 \u2014 low, above the jaw angle"

    aput-object v1, v0, v3

    const-string v1, "Left and right \u2014 a pad each"

    aput-object v1, v0, v4

    goto :goto_19

    .line 237
    :cond_86
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Clean the skin, no cream"

    aput-object v1, v0, v2

    const-string v1, "1 \u2014 on the cheekbone, two fingers below the outer eye corner"

    aput-object v1, v0, v3

    const-string v1, "2 \u2014 along the line to the mouth corner, not on the lip"

    aput-object v1, v0, v4

    goto :goto_19

    .line 212
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_3a
        :pswitch_66
    .end packed-switch
.end method

.method public result(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rhythm(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 119
    if-eqz p1, :cond_a

    const-string v0, "\u0441\u0435\u0440\u0438\u0438 \u00b7 2 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    .line 124
    :goto_9
    return-object v0

    .line 119
    :cond_a
    const-string v0, "bursts \u00b7 2 a second"

    goto :goto_9

    .line 121
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_2c

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_29

    const-string v0, " Hz \u00b7 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_29
    const-string v0, " Hz \u00b7 no movement"

    goto :goto_20

    .line 124
    :cond_2c
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

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public runHint(ZZ)Ljava/lang/String;
    .registers 5

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_19

    .line 264
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    if-eqz p2, :cond_e

    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438, \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u2014 \u0442\u043e\u043a\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u043f\u043e \u043d\u0435\u0440\u0432\u0438\u0442\u0435"

    .line 270
    :goto_d
    return-object v0

    .line 264
    :cond_e
    const-string v0, "Close the eyes, let the forehead go"

    goto :goto_d

    .line 265
    :cond_11
    if-eqz p2, :cond_16

    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430, \u0437\u044a\u0431\u0438\u0442\u0435 \u0434\u0430 \u043d\u0435 \u0441\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    goto :goto_d

    :cond_16
    const-string v0, "Let the jaw hang, teeth apart"

    goto :goto_d

    .line 267
    :cond_19
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 268
    if-eqz p2, :cond_23

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0438\u0437\u043f\u043e\u043c\u043f\u0432\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u043a\u044a\u043c \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u043b\u0438"

    goto :goto_d

    :cond_23
    const-string v0, "The muscle pumps the fluid towards the nodes"

    goto :goto_d

    .line 270
    :cond_26
    if-eqz p1, :cond_30

    if-eqz p2, :cond_2d

    const-string v0, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u0441\u0430\u043c"

    goto :goto_d

    :cond_2d
    const-string v0, "Face relaxed \u2014 the muscle works by itself"

    goto :goto_d

    .line 271
    :cond_30
    if-eqz p2, :cond_35

    const-string v0, "\u041e\u0442\u0434\u0438\u0445 \u2014 \u043a\u0440\u044a\u0432\u0442\u0430 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    goto :goto_d

    :cond_35
    const-string v0, "Rest \u2014 the blood returns to the muscle"

    goto :goto_d
.end method

.method public stars()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidence:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    const-string v0, "\u25cf\u25cf\u25cf"

    :goto_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidence:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const-string v0, "\u25cf\u25cf\u25cb"

    goto :goto_7

    :cond_10
    const-string v0, "\u25cf\u25cb\u25cb"

    goto :goto_7
.end method

.method public strengthGoal(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_2e

    .line 256
    if-eqz p1, :cond_2a

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u044a\u0433\u044a\u043b\u044a\u0442 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0432\u0438\u0434\u0438\u043c\u043e \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    :goto_9
    return-object v0

    .line 246
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u044f\u0441\u043d\u043e, \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435 \u2014 \u0432\u0435\u0436\u0434\u0438\u0442\u0435 \u043d\u0435 \u0431\u0438\u0432\u0430 \u0434\u0430 \u043c\u044a\u0440\u0434\u0430\u0442"

    goto :goto_9

    .line 247
    :cond_f
    const-string v0, "Raise to a clear, pleasant tingle \u2014 the brows must not move"

    goto :goto_9

    .line 249
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u0434\u044a\u043b\u0431\u043e\u043a\u043e, \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    goto :goto_9

    :cond_17
    const-string v0, "Raise to a deep, pleasant tapping \u2014 no pain"

    goto :goto_9

    .line 251
    :pswitch_1a
    if-eqz p1, :cond_1f

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0443\u0441\u0435\u0442\u0438 \u044f\u0441\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    goto :goto_9

    .line 252
    :cond_1f
    const-string v0, "Raise until a clear tightening is felt under the chin \u2014 no pain"

    goto :goto_9

    .line 254
    :pswitch_22
    if-eqz p1, :cond_27

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0431\u0443\u0437\u0430\u0442\u0430 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430 \u2014 \u043c\u0435\u043a\u043e, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    goto :goto_9

    :cond_27
    const-string v0, "Raise until the cheek lifts rhythmically \u2014 soft, no pain"

    goto :goto_9

    .line 257
    :cond_2a
    const-string v0, "Raise until the mouth corner visibly lifts \u2014 no pain, no blinking"

    goto :goto_9

    .line 244
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_22
        :pswitch_a
        :pswitch_12
        :pswitch_1a
    .end packed-switch
.end method

.method public tag(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagEn:Ljava/lang/String;

    goto :goto_4
.end method
