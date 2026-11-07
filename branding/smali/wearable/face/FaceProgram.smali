.class public final Lcom/isaigu/gymapp/wearable/face/FaceProgram;
.super Ljava/lang/Object;
.source "FaceProgram.java"


# static fields
.field private static final ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

.field public static final BLUETENS:[I

.field public static final CALM:I = 0x7

.field public static final CHEEK:I = 0x0

.field public static final CHIN:I = 0x1

.field public static final CONTOUR:I = 0x5

.field public static final DRAIN:I = 0x2

.field public static final FIRM:I = 0x1

.field public static final FOREHEAD:I = 0x2

.field public static final JAW:I = 0x3

.field public static final JAW_RELAX:I = 0x4

.field public static final LIFT:I = 0x0

.field public static final OVAL:I = 0x6

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
    .line 20
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_17e

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    .line 21
    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->BLUETENS:[I

    .line 104
    const/16 v1, 0x8

    new-array v0, v1, [Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D"

    const-string v6, "Lift 3D"

    const-string v7, "\u041f\u043e\u0432\u0434\u0438\u0433\u043d\u0430\u0442\u0438 \u0441\u043a\u0443\u043b\u0438, \u043f\u043e-\u043c\u0435\u043a\u0430 \u0431\u0440\u0430\u0437\u0434\u0430"

    const-string v8, "Lifted cheekbones, a softer fold"

    const-string v9, "\u0421\u043a\u0443\u043b\u043e\u0432\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0447\u0438\u0442\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430"

    const-string v10, "Cheek and lip-lifting muscles"

    const-string v11, "m. zygomaticus major et minor \u00b7 m. levator labii sup."

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

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u043d\u0430 \u043e\u0432\u0430\u043b\u0430"

    const-string v6, "Oval lift"

    const-string v7, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430 \u043d\u0430\u0432\u0435\u0434\u043d\u044a\u0436"

    const-string v8, "Cheekbones and a firm chin at once"

    const-string v9, "\u0421\u043a\u0443\u043b\u043e\u0432\u0438 \u0438 \u043d\u0430\u0434\u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v10, "Cheek and suprahyoid muscles"

    const-string v11, "m. zygomaticus \u00b7 m. digastricus"

    const/16 v12, 0x46

    const/4 v13, 0x3

    const/4 v14, 0x6

    const v15, -0x48e7b

    const-string v16, "\u25ce"

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0xc

    const/16 v21, 0x38

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x4

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "\u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435"

    const-string v6, "Calm face"

    const-string v7, "\u0411\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0432 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v8, "No tension in the forehead and the jaw"

    const-string v9, "\u0421\u0435\u0442\u0438\u0432\u043d\u0438 \u043d\u0435\u0440\u0432\u0438 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v10, "Forehead nerves and the masseters"

    const-string v11, "n. supraorbitalis \u00b7 m. masseter"

    const/16 v12, 0x64

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, -0xd22b41

    const-string v16, "\u25cc"

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V

    aput-object v1, v22, v23

    const/16 v23, 0x5

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442"

    const-string v6, "Botox effect"

    const-string v7, "\u0413\u043b\u0430\u0434\u043a\u043e \u0447\u0435\u043b\u043e \u0431\u0435\u0437 \u0438\u0433\u043b\u0430"

    const-string v8, "A smooth forehead, no needle"

    const-string v9, "\u0421\u0435\u0442\u0438\u0432\u043d\u0438 \u043d\u0435\u0440\u0432\u0438 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e"

    const-string v10, "Forehead sensory nerves"

    const-string v11, "n. supraorbitalis \u00b7 n. supratrochlearis"

    const/16 v12, 0x64

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

    const/16 v23, 0x6

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

    const/16 v23, 0x7

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

    .line 20
    :array_17e
    .array-data 4
        0x0
        0x6
        0x1
        0x2
        0x3
        0x7
        0x4
        0x5
    .end array-data
.end method

.method private constructor <init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIIII)V
    .registers 22

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    .line 83
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    .line 84
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    .line 85
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameBg:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameEn:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagBg:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagEn:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleBg:Ljava/lang/String;

    .line 90
    iput-object p9, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscleEn:Ljava/lang/String;

    .line 91
    iput-object p10, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    .line 92
    iput p11, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    .line 93
    iput p12, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    .line 94
    iput p13, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    .line 95
    iput p14, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    .line 96
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->glyph:Ljava/lang/String;

    .line 97
    move/from16 v0, p16

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidence:I

    .line 98
    move/from16 v0, p17

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapEarly:I

    .line 99
    move/from16 v0, p18

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapLater:I

    .line 100
    move/from16 v0, p19

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->weeks:I

    .line 101
    move/from16 v0, p20

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->planned:I

    .line 102
    return-void
.end method

.method public static get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 144
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_12

    aget-object v0, v3, v1

    .line 145
    iget v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-ne v5, p0, :cond_e

    .line 149
    :goto_d
    return-object v0

    .line 144
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 149
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->ALL:[Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    aget-object v0, v0, v2

    goto :goto_d
.end method

.method public static siteName(IZ)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0441\u043a\u0443\u043b\u0430 \u00b7 \u043b\u044f\u0432\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u0441\u043a\u0443\u043b\u0430 \u00b7 \u0434\u044f\u0441\u043d\u0430"

    aput-object v1, v0, v3

    const-string v1, "\u043d\u0430\u0437\u043e\u043b\u0430\u0431\u0438\u0430\u043b\u043d\u0430 \u00b7 \u043b\u044f\u0432\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u043d\u0430\u0437\u043e\u043b\u0430\u0431\u0438\u0430\u043b\u043d\u0430 \u00b7 \u0434\u044f\u0441\u043d\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0434\u043e\u043b\u043d\u0430 \u0431\u0443\u0437\u0430 \u00b7 \u043b\u044f\u0432\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0434\u043e\u043b\u043d\u0430 \u0431\u0443\u0437\u0430 \u00b7 \u0434\u044f\u0441\u043d\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0447\u0435\u043b\u044e\u0441\u0442 \u00b7 \u043b\u044f\u0432\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0447\u0435\u043b\u044e\u0441\u0442 \u00b7 \u0434\u044f\u0441\u043d\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0447\u0435\u043b\u043e"

    aput-object v2, v0, v1

    const-string v1, "\u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    aput-object v1, v0, v5

    .line 55
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "cheekbone \u00b7 left"

    aput-object v2, v1, v4

    const-string v2, "cheekbone \u00b7 right"

    aput-object v2, v1, v3

    const-string v2, "nasolabial \u00b7 left"

    aput-object v2, v1, v6

    const-string v2, "nasolabial \u00b7 right"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "lower cheek \u00b7 left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "lower cheek \u00b7 right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "jaw \u00b7 left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "jaw \u00b7 right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "forehead"

    aput-object v3, v1, v2

    const-string v2, "under the chin"

    aput-object v2, v1, v5

    .line 57
    if-eqz p1, :cond_77

    :goto_6c
    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_77
    move-object v0, v1

    goto :goto_6c
.end method


# virtual methods
.method public bluetensSites()[I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 39
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_36

    .line 47
    :pswitch_9
    new-array v0, v3, [I

    const/16 v1, 0x9

    aput v1, v0, v2

    :goto_f
    return-object v0

    .line 41
    :pswitch_10
    new-array v0, v4, [I

    fill-array-data v0, :array_4a

    goto :goto_f

    .line 42
    :pswitch_16
    new-array v0, v1, [I

    fill-array-data v0, :array_52

    goto :goto_f

    .line 43
    :pswitch_1c
    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    goto :goto_f

    .line 44
    :pswitch_22
    new-array v0, v3, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    goto :goto_f

    .line 45
    :pswitch_29
    new-array v0, v1, [I

    fill-array-data v0, :array_66

    goto :goto_f

    .line 46
    :pswitch_2f
    new-array v0, v4, [I

    fill-array-data v0, :array_70

    goto :goto_f

    .line 39
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_1c
        :pswitch_22
        :pswitch_2f
        :pswitch_9
        :pswitch_16
        :pswitch_29
    .end packed-switch

    .line 41
    :array_4a
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 42
    :array_52
    .array-data 4
        0x0
        0x1
        0x9
    .end array-data

    .line 43
    :array_5c
    .array-data 4
        0x0
        0x1
        0x9
    .end array-data

    .line 45
    :array_66
    .array-data 4
        0x8
        0x6
        0x7
    .end array-data

    .line 46
    :array_70
    .array-data 4
        0x6
        0x7
    .end array-data
.end method

.method public course(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_46

    .line 196
    :pswitch_5
    if-eqz p1, :cond_42

    const-string v0, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    :goto_9
    return-object v0

    .line 189
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u043a\u0443\u0440\u0441 12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    goto :goto_9

    :cond_f
    const-string v0, "12-week course"

    goto :goto_9

    .line 190
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    goto :goto_9

    :cond_17
    const-string v0, "2\u20133 times a week"

    goto :goto_9

    .line 191
    :pswitch_1a
    if-eqz p1, :cond_1f

    const-string v0, "\u0441\u0443\u0442\u0440\u0438\u043d \u00b7 \u043f\u0440\u0435\u0434\u0438 \u0441\u044a\u0431\u0438\u0442\u0438\u0435"

    goto :goto_9

    :cond_1f
    const-string v0, "mornings \u00b7 before an event"

    goto :goto_9

    .line 192
    :pswitch_22
    if-eqz p1, :cond_27

    const-string v0, "\u043a\u0443\u0440\u0441 12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    goto :goto_9

    :cond_27
    const-string v0, "12-week course"

    goto :goto_9

    .line 193
    :pswitch_2a
    if-eqz p1, :cond_2f

    const-string v0, "20 \u043c\u0438\u043d \u00b7 \u0432\u0435\u0447\u0435\u0440"

    goto :goto_9

    :cond_2f
    const-string v0, "20 min \u00b7 evenings"

    goto :goto_9

    .line 194
    :pswitch_32
    if-eqz p1, :cond_37

    const-string v0, "20 \u043c\u0438\u043d \u0434\u043d\u0435\u0432\u043d\u043e"

    goto :goto_9

    :cond_37
    const-string v0, "20 min daily"

    goto :goto_9

    .line 195
    :pswitch_3a
    if-eqz p1, :cond_3f

    const-string v0, "\u043f\u0440\u0438 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435"

    goto :goto_9

    :cond_3f
    const-string v0, "when tense"

    goto :goto_9

    .line 196
    :cond_42
    const-string v0, "3 times a week"

    goto :goto_9

    .line 188
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_32
        :pswitch_3a
        :pswitch_5
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method public evidenceText(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidence:I

    packed-switch v0, :pswitch_data_1e

    .line 209
    if-eqz p1, :cond_1a

    const-string v0, "\u25cf\u25cb\u25cb \u0444\u0438\u0437\u0438\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u0430 \u043b\u043e\u0433\u0438\u043a\u0430, \u0435\u0444\u0435\u043a\u0442\u044a\u0442 \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d"

    :goto_9
    return-object v0

    .line 207
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u25cf\u25cf\u25cf \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0432 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e"

    goto :goto_9

    :cond_f
    const-string v0, "\u25cf\u25cf\u25cf shown in a clinical trial on the face"

    goto :goto_9

    .line 208
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u25cf\u25cf\u25cb \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0437\u0430 \u0441\u044a\u0449\u0438\u044f \u043c\u0435\u0445\u0430\u043d\u0438\u0437\u044a\u043c \u0432 \u0434\u0440\u0443\u0433\u0438 \u043e\u0431\u043b\u0430\u0441\u0442\u0438"

    goto :goto_9

    :cond_17
    const-string v0, "\u25cf\u25cf\u25cb the mechanism is proven elsewhere"

    goto :goto_9

    .line 209
    :cond_1a
    const-string v0, "\u25cf\u25cb\u25cb physiological rationale, effect not measured"

    goto :goto_9

    .line 206
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
    .line 215
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_46

    .line 284
    :pswitch_5
    if-eqz p1, :cond_42

    const-string v0, "\u0414\u0432\u0443\u0441\u0442\u043e\u043c\u0430\u0448\u043d\u0438\u044f\u0442 \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u043d\u043e-\u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b (m. digastricus, m. mylohyoideus) \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442; \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e \u0438\u043c \u043e\u0444\u043e\u0440\u043c\u044f \u044a\u0433\u044a\u043b\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u0448\u0438\u044f\u0442\u0430. \u0422\u043e\u0432\u0430 \u0441\u0430 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u043d\u0435\u0442\u043e \u2014 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430 \u0435 \u0441\u0435\u0434\u043d\u0430\u043b, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0437\u0430 \u043a\u043e\u043d\u0442\u0443\u0440\u0430 \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d \u0432 \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435."

    :goto_9
    return-object v0

    .line 217
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D \u0440\u0430\u0431\u043e\u0442\u0438 \u0441 \u0442\u0440\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0430, \u043a\u043e\u0438\u0442\u043e \u0434\u044a\u0440\u0436\u0430\u0442 \u0441\u0440\u0435\u0434\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e: \u0433\u043e\u043b\u0435\u043c\u0438\u044f \u0441\u043a\u0443\u043b\u043e\u0432, \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0447\u0438\u0442\u0435 \u043d\u0430 \u0433\u043e\u0440\u043d\u0430\u0442\u0430 \u0443\u0441\u0442\u043d\u0430 (\u043d\u0430\u0437\u043e\u043b\u0430\u0431\u0438\u0430\u043b\u043d\u0430\u0442\u0430 \u0437\u043e\u043d\u0430) \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0434\u043e\u043b\u043d\u0430\u0442\u0430 \u0431\u0443\u0437\u0430. \u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0432\u044a\u0437\u0431\u0443\u0436\u0434\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u0440\u0430\u0437\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u044f \u043d\u0430 \u043b\u0438\u0446\u0435\u0432\u0438\u044f \u043d\u0435\u0440\u0432 (n. facialis) \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0441\u044a\u043a\u0440\u0430\u0449\u0430\u0432\u0430\u0442 \u0441\u0430\u043c\u0438 \u2014 3 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0440\u0430\u0431\u043e\u0442\u0430, 6 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043e\u0442\u0434\u0438\u0445, \u0437\u0430\u0449\u043e\u0442\u043e \u043b\u0438\u0446\u0435\u0432\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0441\u0430 \u0431\u044a\u0440\u0437\u0438 \u0438 \u0441\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430\u0442 \u0431\u044a\u0440\u0437\u043e. \u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u043d\u044f\u043c\u0430\u0442 \u0441\u0443\u0445\u043e\u0436\u0438\u043b\u0438\u044f: \u0442\u0435 \u0441\u0430 \u0432\u043f\u043b\u0435\u0442\u0435\u043d\u0438 \u0432 \u043a\u043e\u0436\u0430\u0442\u0430. \u041f\u043e-\u043f\u043b\u044a\u0442\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b \u0434\u0430\u0432\u0430 \u043e\u043f\u043e\u0440\u0430 \u043e\u0442\u0432\u044a\u0442\u0440\u0435 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441 \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435 \u0438\u0437\u0442\u044a\u043d\u044f\u0432\u0430\u0442 \u043c\u0430\u0441\u0442\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u0433\u043b\u0430\u0432\u043d\u0438\u0447\u043a\u0438 \u2014 \u0431\u0443\u0437\u0430\u0442\u0430 \u0441\u0442\u043e\u0438 \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u043e, \u0441\u043a\u0443\u043b\u0430\u0442\u0430 \u0435 \u043f\u043e-\u0438\u0437\u0440\u0430\u0437\u0435\u043d\u0430. \u0412 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 (12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e) \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0435 \u0441\u0442\u0430\u043d\u0430\u043b \u0441 \u043e\u043a\u043e\u043b\u043e 18 % \u043f\u043e-\u0434\u0435\u0431\u0435\u043b."

    goto :goto_9

    .line 224
    :cond_f
    const-string v0, "The impulse excites the motor branches of the facial nerve and the cheek muscle contracts by itself \u2014 3 seconds of work, 6 of rest, as face muscles are fast and tire fast. Face muscles have no tendons: they weave into the skin. A fuller muscle supports the cheek from within where the fat pads thin with age. In a clinical trial (12 weeks, 5 times a week) the muscle grew about 18 % thicker."

    goto :goto_9

    .line 229
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u041f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 (35 Hz) \u0434\u0430\u0432\u0430 \u043c\u0435\u043a\u043e, \u043f\u043e\u0447\u0442\u0438 \u0441\u043b\u044f\u0442\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435, \u043a\u043e\u0435\u0442\u043e \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0431\u0430\u0432\u043d\u043e. \u0422\u0430\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u043d\u0430 \u043c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u043b\u0438\u0446\u0435\u0442\u043e \u0434\u044a\u0440\u0436\u0438 \u0444\u043e\u0440\u043c\u0430\u0442\u0430 \u0441\u0438 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d\u044f. \u0421\u043b\u0435\u0434 \u043a\u0443\u0440\u0441\u0430 \u0437\u0430 \u043b\u0438\u0444\u0442\u0438\u043d\u0433 \u0442\u043e\u0432\u0430 \u0435 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430: \u0431\u0435\u0437 \u043d\u0435\u044f \u043f\u043e\u0441\u0442\u0438\u0433\u043d\u0430\u0442\u043e\u0442\u043e \u043f\u043e\u0441\u0442\u0435\u043f\u0435\u043d\u043d\u043e \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430."

    goto :goto_9

    .line 232
    :cond_17
    const-string v0, "A lower rate (35 Hz) gives a soft, nearly fused hold that tires far slower \u2014 it trains the enduring fibres, so the face keeps its shape through the day. After the lift course this is the upkeep."

    goto :goto_9

    .line 235
    :pswitch_1a
    if-eqz p1, :cond_1f

    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u2014 1 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0430, 2 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043e\u0442\u0434\u0438\u0445 \u2014 \u043f\u0440\u0435\u0432\u0440\u044a\u0449\u0430\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0432 \u043f\u043e\u043c\u043f\u0430: \u0442\u043e\u0439 \u043f\u0440\u0438\u0442\u0438\u0441\u043a\u0430 \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u0438 \u0432\u0435\u043d\u043e\u0437\u043d\u0438\u0442\u0435 \u0441\u044a\u0434\u043e\u0432\u0435 \u0438 \u0438\u0437\u0442\u043b\u0430\u0441\u043a\u0432\u0430 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442 \u043a\u044a\u043c \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u043b\u0438 \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e \u0438 \u043f\u043e\u0434 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430. \u041f\u0440\u0438 Bluetens \u0434\u0432\u0435\u0442\u0435 \u0431\u0443\u0437\u0438 \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430\u0442 \u043a\u0430\u0442\u043e \u0432\u044a\u043b\u043d\u0430. \u0427\u0435 \u0435\u043b\u0435\u043a\u0442\u0440\u0438\u0447\u0435\u0441\u043a\u043e\u0442\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u043e\u0442\u043e\u0446\u0438, \u0435 \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e (\u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u043d \u043f\u0440\u0435\u0433\u043b\u0435\u0434); \u043f\u0440\u0438 \u043b\u0438\u0446\u0435\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438 \u0441\u044a\u0449\u0438\u044f\u0442 \u043c\u0435\u0445\u0430\u043d\u0438\u0437\u044a\u043c. \u041d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0441\u0443\u0442\u0440\u0438\u043d, \u043a\u043e\u0433\u0430\u0442\u043e \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u043e\u0442 \u043d\u043e\u0449\u0442\u0430 \u0435 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430."

    goto :goto_9

    .line 240
    :cond_1f
    const-string v0, "Short rhythmic holds \u2014 1 second on, 2 off \u2014 turn the muscle into a pump that presses the lymph and venous vessels and moves the held fluid towards the nodes in front of the ear and under the jaw. On Bluetens the cheeks take turns, like a wave. That electrical contraction reduces swelling is proven (a systematic review); the face works by the same mechanism. Best in the morning."

    goto :goto_9

    .line 245
    :pswitch_22
    if-eqz p1, :cond_27

    const-string v0, "\u041d\u0435\u0436\u0435\u043d \u0442\u043e\u043a (100 Hz, \u0442\u0435\u0441\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 50 \u00b5s) \u0434\u043e\u043a\u043e\u0441\u0432\u0430 \u0441\u0430\u043c\u043e \u0441\u0435\u0442\u0438\u0432\u043d\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u043d\u0430 \u0434\u043e\u043f\u0438\u0440 \u0432 \u043a\u043e\u0436\u0430\u0442\u0430 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438. \u0421\u0435\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u043f\u043e\u0442\u043e\u043a \u043f\u043e\u0442\u0438\u0441\u043a\u0430 \u0432\u044a\u0437\u0431\u0443\u0434\u0438\u043c\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043d\u0435\u0432\u0440\u043e\u043d\u0438 \u0438 \u0442\u043e\u043d\u0443\u0441\u044a\u0442 \u043d\u0430 \u043c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0441\u043f\u0430\u0434\u0430: \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u043c\u0435\u0436\u0434\u0443\u0432\u0435\u0436\u0434\u0438\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442, \u0431\u0440\u044a\u0447\u043a\u0438\u0442\u0435 \u043e\u0442 \u043c\u0438\u043c\u0438\u043a\u0430 \u043e\u043c\u0435\u043a\u0432\u0430\u0442. \u0427\u0435 \u0442\u0430\u043a\u044a\u0432 \u0442\u043e\u043a \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438\u044f \u0442\u043e\u043d\u0443\u0441, \u0435 \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e (\u043c\u0435\u0442\u0430-\u0430\u043d\u0430\u043b\u0438\u0437\u0438; 100 Hz \u0435 \u043d\u0430\u0439-\u0435\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430). \u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0442\u0435\u0441\u0435\u043d \u043d\u0430\u0440\u043e\u0447\u043d\u043e: \u0431\u043e\u043b\u043a\u043e\u0432\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u043d\u0430 \u043a\u043e\u0441\u0442\u043d\u0430\u0442\u0430 \u043e\u0431\u0432\u0438\u0432\u043a\u0430 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f\u0442 \u0441\u0430\u043c\u043e \u043d\u0430 \u0434\u044a\u043b\u0433\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438, \u0437\u0430\u0442\u043e\u0432\u0430 \u043d\u0430 \u0442\u044a\u043d\u043a\u0430\u0442\u0430 \u043a\u043e\u0436\u0430 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u043e\u0441\u0442\u0430\u0432\u0430 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u0430 \u043d\u0435 \u0431\u043e\u043b\u043a\u0430 \u0432 \u043a\u043e\u0441\u0442\u0442\u0430. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0435 \u0437\u0430 \u0447\u0430\u0441\u043e\u0432\u0435 \u0438 \u0441\u0435 \u043d\u0430\u0442\u0440\u0443\u043f\u0432\u0430 \u0441 \u0440\u0435\u0434\u043e\u0432\u043d\u043e\u0441\u0442. \u041d\u0435 \u0437\u0430\u043c\u0435\u0441\u0442\u0432\u0430 \u0431\u043e\u0442\u0443\u043b\u0438\u043d\u043e\u0432\u0438\u044f \u0442\u043e\u043a\u0441\u0438\u043d."

    goto :goto_9

    .line 252
    :cond_27
    const-string v0, "A gentle current (100 Hz, a narrow 50 \u00b5s pulse) touches only the touch fibres of the forehead skin \u2014 the muscle does not move. The sensory input damps the excitability of the motor neurons and the tone of the expression muscles drops: the forehead and the frown relax, expression lines soften. That such current lowers muscle tone is proven (meta-analyses; 100 Hz works best). The pulse is narrow on purpose: the pain fibres of the bone\'s lining answer only long pulses, so on the thin forehead skin it stays a pleasant tingle, not an ache in the bone. The effect lasts hours and builds with regular use. It does not replace botulinum toxin."

    goto :goto_9

    .line 260
    :pswitch_2a
    if-eqz p1, :cond_2f

    const-string v0, "\u0421\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u043d\u0430 \u0441\u043c\u0435\u043d\u0438 \u2014 3 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0441\u043a\u0443\u043b\u0438\u0442\u0435, 3 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430: \u0432\u0441\u0435\u043a\u0438 \u043c\u0443\u0441\u043a\u0443\u043b \u043f\u043e\u0447\u0438\u0432\u0430 \u0434\u0432\u043e\u0439\u043d\u043e \u043f\u043e-\u0434\u044a\u043b\u0433\u043e, \u043e\u0442\u043a\u043e\u043b\u043a\u043e\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438. \u0421\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u0442 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430 (\u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435: +18 % \u0434\u0435\u0431\u0435\u043b\u0438\u043d\u0430 \u0437\u0430 12 \u0441\u0435\u0434\u043c\u0438\u0446\u0438), \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u2014 \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u044a\u0433\u044a\u043b\u0430 \u043c\u0435\u0436\u0434\u0443 \u043d\u0435\u044f \u0438 \u0448\u0438\u044f\u0442\u0430. \u0426\u044f\u043b \u043e\u0432\u0430\u043b \u0432 \u0435\u0434\u043d\u0430 \u0441\u0435\u0441\u0438\u044f. \u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0430 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u043d\u0435\u0442\u043e \u2014 \u0441\u0435\u0434\u043d\u0430\u043b, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430."

    goto :goto_9

    .line 264
    :cond_2f
    const-string v0, "The cheeks and the muscles under the chin take turns \u2014 3 seconds each, so every muscle rests twice as long as it works. The cheeks get the lift (a clinical trial: +18 % thickness in 12 weeks), the chin a firmer angle to the neck. The whole oval in one session; seated, no food or drink."

    goto :goto_9

    .line 268
    :pswitch_32
    if-eqz p1, :cond_37

    const-string v0, "\u041d\u0435\u0436\u0435\u043d \u0441\u0435\u0442\u0438\u0432\u0435\u043d \u0442\u043e\u043a \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043f\u043e \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u043f\u043e \u0434\u0432\u0430\u0442\u0430 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u2014 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u043b\u0438\u0446\u0435\u0442\u043e \u0434\u044a\u0440\u0436\u0438 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043e\u0442 \u0434\u0435\u043d\u044f. \u0421\u0435\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u043f\u043e\u0442\u043e\u043a \u0441\u0432\u0430\u043b\u044f \u0442\u043e\u043d\u0443\u0441\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 (\u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0437\u0430 \u0442\u0430\u043a\u044a\u0432 \u0442\u043e\u043a); \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f \u043c\u0435\u0436\u0434\u0443 80 \u0438 100 Hz, \u043f\u0440\u0438 \u0442\u0435\u0441\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441, \u0437\u0430 \u0434\u0430 \u043d\u0435 \u043f\u0440\u0438\u0432\u0438\u043a\u043d\u0430\u0442 \u043d\u0435\u0440\u0432\u0438\u0442\u0435 \u0438 \u0434\u0430 \u043d\u044f\u043c\u0430 \u0434\u044a\u043b\u0431\u043e\u043a\u0430 \u0431\u043e\u043b\u043a\u0430. \u0427\u0435\u043b\u043e\u0442\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430, \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0441\u0435 \u0440\u0430\u0437\u0442\u0432\u0430\u0440\u044f, \u0447\u0435\u0440\u0442\u0438\u0442\u0435 \u043e\u043c\u0435\u043a\u0432\u0430\u0442. \u0418\u0434\u0435\u0430\u043b\u043d\u043e \u0432\u0435\u0447\u0435\u0440 \u0438\u043b\u0438 \u0441\u043b\u0435\u0434 \u0441\u0442\u0440\u0435\u0441."

    goto :goto_9

    .line 272
    :cond_37
    const-string v0, "A gentle sensory current on the forehead and both masseters at once \u2014 where the face holds the day\'s tension. The sensory input lowers muscle tone (proven for such current); the rate alternates 80 \u2194 100 Hz at a narrow pulse so the nerves do not get used to it. Best in the evening or after stress."

    goto :goto_9

    .line 276
    :pswitch_3a
    if-eqz p1, :cond_3f

    const-string v0, "\u0411\u0430\u0432\u043d\u0438 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438, \u0434\u0432\u0430 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430, \u0432\u044a\u0440\u0445\u0443 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b (m. masseter) \u2014 \u043f\u0440\u0438 Bluetens \u043a\u0430\u0442\u043e \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0435\u0440\u0438\u0438 \u2014 \u0443\u0441\u0435\u0449\u0430\u0442 \u0441\u0435 \u043a\u0430\u0442\u043e \u0434\u044a\u043b\u0431\u043e\u043a\u043e \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435. \u0412 \u043a\u043b\u0438\u043d\u0438\u0447\u043d\u043e \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435 \u043f\u0440\u0438 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0432 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0442\u0430\u043a\u044a\u0432 \u0442\u043e\u043a \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439. \u0420\u0435\u0437\u0443\u043b\u0442\u0430\u0442: \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442, \u043f\u043e-\u043c\u0435\u043a \u0434\u043e\u043b\u0435\u043d \u043e\u0432\u0430\u043b, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u043e\u0442 \u0441\u0442\u0438\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u0437\u044a\u0431\u0438. \u0423\u043a\u0440\u0435\u043f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u043e\u0437\u0438 \u043c\u0443\u0441\u043a\u0443\u043b \u043d\u0438\u043a\u043e\u0433\u0430: \u0442\u043e \u0440\u0430\u0437\u0448\u0438\u0440\u044f\u0432\u0430 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430."

    goto :goto_9

    .line 280
    :cond_3f
    const-string v0, "Slow rhythmic impulses, twice a second, on the masseter (on Bluetens as short bursts) \u2014 felt as a deep tapping. In a clinical trial in jaw tension such current lowered the muscle\'s resting activity: a relaxed jaw, a softer lower face. Never strengthening this muscle: that widens the jaw."

    goto :goto_9

    .line 287
    :cond_42
    const-string v0, "The digastric and mylohyoid lift the hyoid; their tone shapes the angle between chin and neck. They are also the swallowing muscles \u2014 seated, no food or drink. A contour effect is not measured in studies."

    goto :goto_9

    .line 215
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_3a
        :pswitch_5
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method public muscle(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
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
    .line 153
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->nameEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public place(ZZ)[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 294
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_29

    .line 295
    if-eqz p1, :cond_1a

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0431\u0443\u0437\u0438\u0442\u0435, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u0427\u0435\u043b\u043e \u2014 \u0434\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0431\u043b\u0438\u0437\u043e, \u0434\u0432\u0430 \u043f\u0440\u044a\u0441\u0442\u0430 \u043d\u0430\u0434 \u0432\u0435\u0436\u0434\u0438\u0442\u0435 \u00b7 \u0447\u0435\u043b\u044e\u0441\u0442 \u2014 \u0441\u0442\u0438\u0441\u043d\u0438 \u0437\u044a\u0431\u0438, \u0441\u043b\u043e\u0436\u0438 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    aput-object v1, v0, v2

    const-string v1, "\u041d\u0438\u043a\u043e\u0433\u0430 \u043a\u044a\u043c \u043e\u043a\u043e\u0442\u043e, \u043d\u0438\u043a\u043e\u0433\u0430 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    aput-object v1, v0, v3

    .line 331
    :goto_19
    return-object v0

    .line 298
    :cond_1a
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Clean the forehead and the cheeks, no cream"

    aput-object v1, v0, v4

    const-string v1, "Forehead \u2014 two fingers above the brows \u00b7 jaw \u2014 clench and place on the muscle"

    aput-object v1, v0, v2

    const-string v1, "Never towards the eye, never on the side of the neck"

    aput-object v1, v0, v3

    goto :goto_19

    .line 302
    :cond_29
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3c

    if-eqz p2, :cond_5c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-eq v0, v2, :cond_3c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-ne v0, v3, :cond_5c

    .line 303
    :cond_3c
    if-eqz p1, :cond_4d

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043b\u0438\u0446\u0435\u0442\u043e, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u0412\u0441\u044f\u043a\u0430 \u0434\u0432\u043e\u0439\u043a\u0430 \u2014 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0441\u0438, \u043a\u0430\u043a\u0442\u043e \u043d\u0430 \u043a\u0430\u0440\u0442\u0438\u043d\u0430\u0442\u0430"

    aput-object v1, v0, v2

    const-string v1, "\u041d\u0438\u0449\u043e \u043f\u043e-\u0431\u043b\u0438\u0437\u043e \u043e\u0442 2 \u043f\u0440\u044a\u0441\u0442\u0430 \u0434\u043e \u043e\u043a\u043e\u0442\u043e, \u043d\u0438\u0449\u043e \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430"

    aput-object v1, v0, v3

    goto :goto_19

    .line 306
    :cond_4d
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Clean the face, no cream"

    aput-object v1, v0, v4

    const-string v1, "Each pair along its muscle, as in the picture"

    aput-object v1, v0, v2

    const-string v1, "Nothing closer than 2 fingers to the eye, nothing on the lip"

    aput-object v1, v0, v3

    goto :goto_19

    .line 309
    :cond_5c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    packed-switch v0, :pswitch_data_e6

    .line 331
    if-eqz p1, :cond_d6

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043a\u043e\u0436\u0430\u0442\u0430, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "1 \u2014 \u043d\u0430 \u0441\u043a\u0443\u043b\u0430\u0442\u0430, \u0434\u0432\u0430 \u043f\u0440\u044a\u0441\u0442\u0430 \u043f\u043e\u0434 \u0432\u044a\u043d\u0448\u043d\u0438\u044f \u044a\u0433\u044a\u043b \u043d\u0430 \u043e\u043a\u043e\u0442\u043e"

    aput-object v1, v0, v2

    const-string v1, "2 \u2014 \u043f\u043e \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043a\u044a\u043c \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430, \u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u043d\u0430\u0442\u0430"

    aput-object v1, v0, v3

    goto :goto_19

    .line 311
    :pswitch_72
    if-eqz p1, :cond_83

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u043a\u043e\u0436\u0430\u0442\u0430 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    aput-object v1, v0, v4

    const-string v1, "1 \u0438 2 \u2014 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430, \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0441\u0440\u0435\u0434\u0430\u0442\u0430"

    aput-object v1, v0, v2

    const-string v1, "\u041c\u0435\u0436\u0434\u0443 \u043a\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0438 \u043f\u043e\u0434\u0435\u0437\u0438\u0447\u043d\u0430\u0442\u0430 \u043a\u043e\u0441\u0442 \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    aput-object v1, v0, v3

    goto :goto_19

    .line 314
    :cond_83
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Clean the skin under the chin"

    aput-object v1, v0, v4

    const-string v1, "1 and 2 \u2014 under the chin, either side of the midline"

    aput-object v1, v0, v2

    const-string v1, "Between the chin bone and the hyoid \u2014 never on the side of the neck"

    aput-object v1, v0, v3

    goto :goto_19

    .line 317
    :pswitch_92
    if-eqz p1, :cond_a4

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u0447\u0438\u0441\u0442\u0438 \u0447\u0435\u043b\u043e\u0442\u043e, \u0431\u0435\u0437 \u043a\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u0414\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0431\u043b\u0438\u0437\u043e \u2014 \u0435\u0434\u0438\u043d \u043f\u0440\u044a\u0441\u0442 \u043c\u0435\u0436\u0434\u0443 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435, \u0432 \u0441\u0440\u0435\u0434\u0430\u0442\u0430 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e"

    aput-object v1, v0, v2

    const-string v1, "\u0414\u0432\u0430 \u043f\u0440\u044a\u0441\u0442\u0430 \u043d\u0430\u0434 \u0432\u0435\u0436\u0434\u0438\u0442\u0435, \u043f\u043e\u0434 \u043a\u043e\u0441\u0430\u0442\u0430 \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u043a\u044a\u043c \u043e\u043a\u043e\u0442\u043e"

    aput-object v1, v0, v3

    goto/16 :goto_19

    .line 320
    :cond_a4
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Clean the forehead, no cream"

    aput-object v1, v0, v4

    const-string v1, "The pair close \u2014 one finger between the pads, mid-forehead"

    aput-object v1, v0, v2

    const-string v1, "Two fingers above the brows, below the hair \u2014 never towards the eye"

    aput-object v1, v0, v3

    goto/16 :goto_19

    .line 324
    :pswitch_b4
    if-eqz p1, :cond_c6

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u0421\u0442\u0438\u0441\u043d\u0438 \u0437\u044a\u0431\u0438 \u2014 \u043f\u043e\u0434 \u043f\u0440\u044a\u0441\u0442\u0438\u0442\u0435 \u0441\u0435 \u043d\u0430\u0434\u0443\u0432\u0430 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b"

    aput-object v1, v0, v4

    const-string v1, "1 \u2014 \u0433\u043e\u0440\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430, \u043f\u043e\u0434 \u0441\u043a\u0443\u043b\u0430\u0442\u0430 \u00b7 2 \u2014 \u0434\u043e\u043b\u0443, \u043d\u0430\u0434 \u044a\u0433\u044a\u043b\u0430 \u043d\u0430 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    aput-object v1, v0, v2

    const-string v1, "\u041b\u044f\u0432\u0430 \u0438 \u0434\u044f\u0441\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430 \u2014 \u043f\u043e \u0435\u0434\u043d\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    aput-object v1, v0, v3

    goto/16 :goto_19

    .line 327
    :cond_c6
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Clench \u2014 the masseter bulges under the fingers"

    aput-object v1, v0, v4

    const-string v1, "1 \u2014 top of the muscle, under the cheekbone \u00b7 2 \u2014 low, above the jaw angle"

    aput-object v1, v0, v2

    const-string v1, "Left and right \u2014 a pad each"

    aput-object v1, v0, v3

    goto/16 :goto_19

    .line 334
    :cond_d6
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Clean the skin, no cream"

    aput-object v1, v0, v4

    const-string v1, "1 \u2014 on the cheekbone, two fingers below the outer eye corner"

    aput-object v1, v0, v2

    const-string v1, "2 \u2014 along the line to the mouth corner, not on the lip"

    aput-object v1, v0, v3

    goto/16 :goto_19

    .line 309
    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_72
        :pswitch_92
        :pswitch_b4
    .end packed-switch
.end method

.method public result(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rhythm(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 172
    if-eqz p1, :cond_a

    const-string v0, "\u0431\u0430\u0432\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u00b7 2/s"

    .line 183
    :goto_9
    return-object v0

    .line 172
    :cond_a
    const-string v0, "slow impulses \u00b7 2/s"

    goto :goto_9

    .line 174
    :cond_d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    .line 175
    if-eqz p1, :cond_17

    const-string v0, "80 \u2194 100 Hz \u00b7 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    goto :goto_9

    :cond_17
    const-string v0, "80 \u2194 100 Hz \u00b7 no movement"

    goto :goto_9

    .line 177
    :cond_1a
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_27

    .line 178
    if-eqz p1, :cond_24

    const-string v0, "70 Hz \u00b7 \u0441\u043a\u0443\u043b\u0438 \u2194 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    goto :goto_9

    :cond_24
    const-string v0, "70 Hz \u00b7 cheeks \u2194 chin"

    goto :goto_9

    .line 180
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_46

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_43

    const-string v0, " Hz \u00b7 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    :goto_3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_43
    const-string v0, " Hz \u00b7 no movement"

    goto :goto_3a

    .line 183
    :cond_46
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
    .line 363
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_26

    .line 364
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    if-eqz p2, :cond_e

    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438, \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u2014 \u0442\u043e\u043a\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u043f\u043e \u043d\u0435\u0440\u0432\u0438\u0442\u0435"

    .line 371
    :goto_d
    return-object v0

    .line 364
    :cond_e
    const-string v0, "Close the eyes, let the forehead go"

    goto :goto_d

    .line 365
    :cond_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1e

    if-eqz p2, :cond_1b

    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438, \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    goto :goto_d

    :cond_1b
    const-string v0, "Close the eyes, let the forehead and the jaw go"

    goto :goto_d

    .line 366
    :cond_1e
    if-eqz p2, :cond_23

    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430, \u0437\u044a\u0431\u0438\u0442\u0435 \u0434\u0430 \u043d\u0435 \u0441\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    goto :goto_d

    :cond_23
    const-string v0, "Let the jaw hang, teeth apart"

    goto :goto_d

    .line 368
    :cond_26
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 369
    if-eqz p2, :cond_30

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0438\u0437\u043f\u043e\u043c\u043f\u0432\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u043a\u044a\u043c \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u0432\u044a\u0437\u043b\u0438"

    goto :goto_d

    :cond_30
    const-string v0, "The muscle pumps the fluid towards the nodes"

    goto :goto_d

    .line 371
    :cond_33
    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3a

    const-string v0, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u0441\u0430\u043c"

    goto :goto_d

    :cond_3a
    const-string v0, "Face relaxed \u2014 the muscle works by itself"

    goto :goto_d

    .line 372
    :cond_3d
    if-eqz p2, :cond_42

    const-string v0, "\u041e\u0442\u0434\u0438\u0445 \u2014 \u043a\u0440\u044a\u0432\u0442\u0430 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    goto :goto_d

    :cond_42
    const-string v0, "Rest \u2014 the blood returns to the muscle"

    goto :goto_d
.end method

.method public stars()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
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
    .line 341
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_36

    .line 356
    :pswitch_5
    if-eqz p1, :cond_32

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u044a\u0433\u044a\u043b\u044a\u0442 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0432\u0438\u0434\u0438\u043c\u043e \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    :goto_9
    return-object v0

    .line 343
    :pswitch_a
    if-eqz p1, :cond_f

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u044f\u0441\u043d\u043e, \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435 \u043f\u043e \u043a\u043e\u0436\u0430\u0442\u0430 \u2014 \u0442\u044a\u043f\u0430 \u0431\u043e\u043b\u043a\u0430 \u043d\u0430\u0432\u044a\u0442\u0440\u0435: \u0441\u0432\u0430\u043b\u0438 \u0432\u0435\u0434\u043d\u0430\u0433\u0430"

    goto :goto_9

    .line 344
    :cond_f
    const-string v0, "Raise to a clear, pleasant tingle on the skin \u2014 a dull ache inside: lower at once"

    goto :goto_9

    .line 346
    :pswitch_12
    if-eqz p1, :cond_17

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u0434\u044a\u043b\u0431\u043e\u043a\u043e, \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u043f\u043e\u0442\u0443\u043f\u0432\u0430\u043d\u0435 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    goto :goto_9

    :cond_17
    const-string v0, "Raise to a deep, pleasant tapping \u2014 no pain"

    goto :goto_9

    .line 348
    :pswitch_1a
    if-eqz p1, :cond_1f

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0443\u0441\u0435\u0442\u0438 \u044f\u0441\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    goto :goto_9

    .line 349
    :cond_1f
    const-string v0, "Raise until a clear tightening is felt under the chin \u2014 no pain"

    goto :goto_9

    .line 351
    :pswitch_22
    if-eqz p1, :cond_27

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u044f\u0441\u043d\u043e, \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435 \u2014 \u043d\u0438\u0449\u043e \u043d\u0435 \u043c\u044a\u0440\u0434\u0430, \u043d\u0438\u0449\u043e \u043d\u0435 \u0431\u043e\u043b\u0438 \u043d\u0430\u0432\u044a\u0442\u0440\u0435"

    goto :goto_9

    .line 352
    :cond_27
    const-string v0, "Raise to a clear, pleasant tingle \u2014 nothing moves, nothing aches inside"

    goto :goto_9

    .line 354
    :pswitch_2a
    if-eqz p1, :cond_2f

    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0431\u0443\u0437\u0430\u0442\u0430 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430 \u2014 \u043c\u0435\u043a\u043e, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    goto :goto_9

    :cond_2f
    const-string v0, "Raise until the cheek lifts rhythmically \u2014 soft, no pain"

    goto :goto_9

    .line 357
    :cond_32
    const-string v0, "Raise until the mouth corner visibly lifts \u2014 no pain, no blinking"

    goto :goto_9

    .line 341
    nop

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_5
        :pswitch_22
    .end packed-switch
.end method

.method public tag(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tagEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public xemsSites()[I
    .registers 5

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    packed-switch v0, :pswitch_data_38

    .line 33
    :pswitch_8
    new-array v0, v1, [I

    const/16 v1, 0x9

    aput v1, v0, v2

    :goto_e
    return-object v0

    .line 27
    :pswitch_f
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    goto :goto_e

    .line 28
    :pswitch_16
    new-array v0, v3, [I

    fill-array-data v0, :array_5c

    goto :goto_e

    .line 29
    :pswitch_1c
    new-array v0, v3, [I

    fill-array-data v0, :array_6e

    goto :goto_e

    .line 30
    :pswitch_22
    new-array v0, v1, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    goto :goto_e

    .line 31
    :pswitch_29
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    goto :goto_e

    .line 32
    :pswitch_30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    goto :goto_e

    .line 25
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_1c
        :pswitch_22
        :pswitch_30
        :pswitch_8
        :pswitch_16
        :pswitch_29
    .end packed-switch

    .line 27
    :array_4c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 28
    :array_5c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x9
    .end array-data

    .line 29
    :array_6e
    .array-data 4
        0x9
        0x2
        0x3
        0x4
        0x5
        0x0
        0x1
    .end array-data

    .line 31
    :array_80
    .array-data 4
        0x8
        0x6
        0x7
    .end array-data

    .line 32
    :array_8a
    .array-data 4
        0x6
        0x7
    .end array-data
.end method
