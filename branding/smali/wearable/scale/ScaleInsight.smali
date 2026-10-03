.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;
    }
.end annotation


# static fields
.field static final AGES:[D

.field static final AGE_SPAN:D = 8.0

.field static final ALMI_F_P25:[D

.field static final ALMI_F_P50:[D

.field static final ALMI_F_P75:[D

.field static final ALMI_M_P25:[D

.field static final ALMI_M_P50:[D

.field static final ALMI_M_P75:[D

.field static final AMBER:I = -0xa61f5

.field static final BASE_GAP_MS:J = 0x1499700L

.field static final BASE_MAX:I = 0x8

.field static final BASE_MIN:I = 0x2

.field static final BLUE:I = -0xc74208

.field static final BOTH:[I

.field static final CH_BG:[Ljava/lang/String;

.field static final CH_EN:[Ljava/lang/String;

.field static final CH_N:[Ljava/lang/String;

.field static final CH_SEG:[[D

.field static final CYAN:I = -0xf9492c

.field static final DRY_AMBER:D = 5.0

.field static final FMI_F_P25:[D

.field static final FMI_F_P50:[D

.field static final FMI_F_P75:[D

.field static final FMI_M_P25:[D

.field static final FMI_M_P50:[D

.field static final FMI_M_P75:[D

.field static final GREEN:I = -0xdd3aa2

.field static final IQR_SD:D = 1.349

.field public static final K_BODY:I = 0x2

.field public static final K_EMS:I = 0x1

.field public static final K_HABIT:I = 0x3

.field public static final K_TODAY:I = 0x0

.field static final LESS:[I

.field static final MORE:[I

.field static final ORANGE:I = -0x68cea

.field static final RED:I = -0x10bbbc

.field static final RHR_AGES:[D

.field static final RHR_F_P25:[D

.field static final RHR_F_P50:[D

.field static final RHR_F_P75:[D

.field static final RHR_M_P25:[D

.field static final RHR_M_P50:[D

.field static final RHR_M_P75:[D

.field static final SEG_BG:[Ljava/lang/String;

.field static final SEG_EN:[Ljava/lang/String;

.field static final SEG_N:[Ljava/lang/String;

.field static final SWELL_AMBER:D = 1.2

.field static final SWELL_RED:D = 2.5

.field static final TEAL:I = -0xef467f

.field public static final TODAY_MS:J = 0x2932e00L

.field public static final TONE_ALERT:I = 0x3

.field public static final TONE_GOOD:I = 0x0

.field public static final TONE_INFO:I = 0x1

.field public static final TONE_WARN:I = 0x2

.field public static final T_ATHLETIC:I = 0x0

.field public static final T_BALANCED:I = 0x1

.field public static final T_FAT:I = 0x3

.field public static final T_FAT_LOW_MUSCLE:I = 0x4

.field public static final T_LEAN_LOW_MUSCLE:I = 0x5

.field public static final T_STRONG_FAT:I = 0x2

.field public static final T_VERY_LEAN:I = 0x6

.field static final YEARS_PER_SD:D = 4.0


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 203
    const/16 v0, 0xa

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_1e8

    aput-object v1, v0, v6

    new-array v1, v3, [D

    fill-array-data v1, :array_1f8

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_208

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_218

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [D

    fill-array-data v2, :array_228

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_238

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_248

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_258

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_268

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [D

    fill-array-data v2, :array_278

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    .line 465
    new-array v0, v3, [D

    fill-array-data v0, :array_288

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    .line 466
    new-array v0, v3, [D

    fill-array-data v0, :array_298

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P25:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2a8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P50:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2b8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P75:[D

    .line 467
    new-array v0, v3, [D

    fill-array-data v0, :array_2c8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P25:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2d8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P50:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2e8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P75:[D

    .line 502
    new-array v0, v4, [D

    fill-array-data v0, :array_2f8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    .line 503
    new-array v0, v4, [D

    fill-array-data v0, :array_314

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_330

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P50:[D

    .line 504
    new-array v0, v4, [D

    fill-array-data v0, :array_34c

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P75:[D

    .line 505
    new-array v0, v4, [D

    fill-array-data v0, :array_368

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_384

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P50:[D

    .line 506
    new-array v0, v4, [D

    fill-array-data v0, :array_3a0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P75:[D

    .line 507
    new-array v0, v4, [D

    fill-array-data v0, :array_3bc

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_3d8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P50:[D

    .line 508
    new-array v0, v4, [D

    fill-array-data v0, :array_3f4

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P75:[D

    .line 509
    new-array v0, v4, [D

    fill-array-data v0, :array_410

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_42c

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P50:[D

    .line 510
    new-array v0, v4, [D

    fill-array-data v0, :array_448

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P75:[D

    .line 551
    new-array v0, v5, [I

    fill-array-data v0, :array_464

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    .line 553
    new-array v0, v5, [I

    fill-array-data v0, :array_472

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    .line 555
    new-array v0, v5, [I

    fill-array-data v0, :array_480

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    .line 656
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u0442\u043e\u0440\u0441\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u043b\u044f\u0432\u0430\u0442\u0430 \u0440\u044a\u043a\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "\u0434\u044f\u0441\u043d\u0430\u0442\u0430 \u0440\u044a\u043a\u0430"

    aput-object v2, v0, v1

    const-string v1, "\u043b\u0435\u0432\u0438\u044f \u043a\u0440\u0430\u043a"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "\u0434\u0435\u0441\u043d\u0438\u044f \u043a\u0440\u0430\u043a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_BG:[Ljava/lang/String;

    .line 657
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "the trunk"

    aput-object v1, v0, v6

    const-string v1, "the left arm"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "the right arm"

    aput-object v2, v0, v1

    const-string v1, "the left leg"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "the right leg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_EN:[Ljava/lang/String;

    .line 659
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u0442\u043e\u0440\u0441"

    aput-object v1, v0, v6

    const-string v1, "\u043b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "\u0434\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    aput-object v2, v0, v1

    const-string v1, "\u043b\u044f\u0432 \u043a\u0440\u0430\u043a"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "\u0434\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_N:[Ljava/lang/String;

    .line 660
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0413\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    const-string v1, "\u041f\u0440\u0430\u0441\u0446\u0438"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const-string v1, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v1, v0, v5

    const-string v1, "\u0413\u0440\u044a\u0431"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_N:[Ljava/lang/String;

    .line 662
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0433\u044a\u0440\u0434\u0438\u0442\u0435"

    aput-object v1, v0, v6

    const-string v1, "\u043a\u043e\u0440\u0435\u043c\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "\u043f\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    const-string v1, "\u043f\u0440\u0430\u0441\u0446\u0438\u0442\u0435"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "\u0440\u044a\u0446\u0435\u0442\u0435"

    aput-object v2, v0, v1

    const-string v1, "\u0442\u0440\u0430\u043f\u0435\u0446\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u0433\u044a\u0440\u0431\u0430"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "\u043a\u0440\u044a\u0441\u0442\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0437\u0430\u0434\u043d\u043e\u0442\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_BG:[Ljava/lang/String;

    .line 664
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chest"

    aput-object v1, v0, v6

    const-string v1, "abs"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "front thigh"

    aput-object v2, v0, v1

    const-string v1, "calves"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "arms"

    aput-object v2, v0, v1

    const-string v1, "traps"

    aput-object v1, v0, v5

    const-string v1, "back"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "lower back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "back thigh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_EN:[Ljava/lang/String;

    return-void

    .line 203
    nop

    :array_1e8
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_1f8
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_208
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_218
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_228
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_238
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_248
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_258
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_268
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_278
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 465
    :array_288
    .array-data 8
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x4051800000000000L    # 70.0
    .end array-data

    .line 466
    :array_298
    .array-data 8
        0x404e800000000000L    # 61.0
        0x404e800000000000L    # 61.0
        0x404e000000000000L    # 60.0
    .end array-data

    :array_2a8
    .array-data 8
        0x4051400000000000L    # 69.0
        0x4051000000000000L    # 68.0
        0x4050c00000000000L    # 67.0
    .end array-data

    :array_2b8
    .array-data 8
        0x4053000000000000L    # 76.0
        0x4053400000000000L    # 77.0
        0x4052c00000000000L    # 75.0
    .end array-data

    .line 467
    :array_2c8
    .array-data 8
        0x4050800000000000L    # 66.0
        0x4050000000000000L    # 64.0
        0x4050000000000000L    # 64.0
    .end array-data

    :array_2d8
    .array-data 8
        0x4052800000000000L    # 74.0
        0x4051c00000000000L    # 71.0
        0x4051800000000000L    # 70.0
    .end array-data

    :array_2e8
    .array-data 8
        0x4054800000000000L    # 82.0
        0x4053c00000000000L    # 79.0
        0x4053800000000000L    # 78.0
    .end array-data

    .line 502
    :array_2f8
    .array-data 8
        0x4039000000000000L    # 25.0
        0x4041800000000000L    # 35.0
        0x4046800000000000L    # 45.0
        0x404b800000000000L    # 55.0
        0x4050400000000000L    # 65.0
        0x4052c00000000000L    # 75.0
    .end array-data

    .line 503
    :array_314
    .array-data 8
        0x4021333333333333L    # 8.6
        0x4021333333333333L    # 8.6
        0x402099999999999aL    # 8.3
        0x4020333333333333L    # 8.1
        0x4020000000000000L    # 8.0
        0x401e666666666666L    # 7.6
    .end array-data

    :array_330
    .array-data 8
        0x402299999999999aL    # 9.3
        0x4022333333333333L    # 9.1
        0x4021666666666666L    # 8.7
        0x4021333333333333L    # 8.6
        0x4021000000000000L    # 8.5
        0x4020000000000000L    # 8.0
    .end array-data

    .line 504
    :array_34c
    .array-data 8
        0x4024666666666666L    # 10.2
        0x4023333333333333L    # 9.6
        0x4022666666666666L    # 9.2
        0x4022666666666666L    # 9.2
        0x4022000000000000L    # 9.0
        0x402099999999999aL    # 8.3
    .end array-data

    .line 505
    :array_368
    .array-data 8
        0x401999999999999aL    # 6.4
        0x401999999999999aL    # 6.4
        0x4018666666666666L    # 6.1
        0x4018666666666666L    # 6.1
        0x4018666666666666L    # 6.1
        0x401799999999999aL    # 5.9
    .end array-data

    :array_384
    .array-data 8
        0x401b99999999999aL    # 6.9
        0x401b333333333333L    # 6.8
        0x401acccccccccccdL    # 6.7
        0x401a666666666666L    # 6.6
        0x401a000000000000L    # 6.5
        0x4019333333333333L    # 6.3
    .end array-data

    .line 506
    :array_3a0
    .array-data 8
        0x401d99999999999aL    # 7.4
        0x401d99999999999aL    # 7.4
        0x401ccccccccccccdL    # 7.2
        0x401c666666666666L    # 7.1
        0x401c666666666666L    # 7.1
        0x401acccccccccccdL    # 6.7
    .end array-data

    .line 507
    :array_3bc
    .array-data 8
        0x400999999999999aL    # 3.2
        0x4010000000000000L    # 4.0
        0x4014cccccccccccdL    # 5.2
        0x401799999999999aL    # 5.9
        0x4018cccccccccccdL    # 6.2
        0x4017333333333333L    # 5.8
    .end array-data

    :array_3d8
    .array-data 8
        0x4014000000000000L    # 5.0
        0x401b333333333333L    # 6.8
        0x4020000000000000L    # 8.0
        0x4021666666666666L    # 8.7
        0x4021000000000000L    # 8.5
        0x401f99999999999aL    # 7.9
    .end array-data

    .line 508
    :array_3f4
    .array-data 8
        0x401c666666666666L    # 7.1
        0x4024333333333333L    # 10.1
        0x4025000000000000L    # 10.5
        0x402499999999999aL    # 10.3
        0x4024666666666666L    # 10.2
        0x4023333333333333L    # 9.6
    .end array-data

    .line 509
    :array_410
    .array-data 8
        0x4014000000000000L    # 5.0
        0x401599999999999aL    # 5.4
        0x401c000000000000L    # 7.0
        0x401e666666666666L    # 7.6
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
    .end array-data

    :array_42c
    .array-data 8
        0x401a666666666666L    # 6.6
        0x4021cccccccccccdL    # 8.9
        0x4023666666666666L    # 9.7
        0x402699999999999aL    # 11.3
        0x4026666666666666L    # 11.2
        0x4025000000000000L    # 10.5
    .end array-data

    .line 510
    :array_448
    .array-data 8
        0x4020666666666666L    # 8.2
        0x4027cccccccccccdL    # 11.9
        0x402999999999999aL    # 12.8
        0x402ccccccccccccdL    # 14.4
        0x402c99999999999aL    # 14.3
        0x402999999999999aL    # 12.8
    .end array-data

    .line 551
    :array_464
    .array-data 4
        -0x10bbbc
        -0xa61f5
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 553
    :array_472
    .array-data 4
        -0x10bbbc
        -0xa61f5
        -0xdd3aa2
        -0xef467f
        -0xf9492c
    .end array-data

    .line 555
    :array_480
    .array-data 4
        -0xc74208
        -0xef467f
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advice(Lorg/json/JSONArray;IZII)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "IZII)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 677
    if-eqz p0, :cond_2b

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object v15, v4

    .line 678
    :goto_c
    if-eqz v15, :cond_16

    const-string v4, "fat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 679
    :cond_16
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string v8, "\u041d\u044f\u043c\u0430 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v9, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u0431\u043e\u0441\u0438 \u043a\u0440\u0430\u043a\u0430 \u0438 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430."

    const-string v10, "No measurement"

    const-string v11, "The measurement needs bare feet and both hands on the handle."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v14

    .line 843
    :goto_2a
    return-object v4

    .line 677
    :cond_2b
    const/4 v4, 0x0

    move-object v15, v4

    goto :goto_c

    .line 684
    :cond_2e
    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v12, v4

    .line 685
    const-string v4, "w"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 686
    const-string v4, "fat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 687
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v13

    .line 689
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v20

    .line 690
    invoke-virtual/range {v20 .. v20}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v4

    if-nez v4, :cond_26a

    .line 691
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string v8, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435 \u043f\u0440\u0435\u0434\u0438 \u0432\u0441\u044f\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v9, "\u041e\u0442 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435 \u0441\u0435 \u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430 \u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\u0442\u0430 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v10, "Measure before every session"

    const-string v11, "Training readiness is calculated from the next measurement on."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :goto_7b
    const-string v4, "water"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v15, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move/from16 v0, p2

    invoke-static {v4, v5, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v11

    .line 713
    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    if-ltz v4, :cond_eb

    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_eb

    .line 714
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "\u0425\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f \u043f\u043e\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0412\u043e\u0434\u0430 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v0, v11, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    move-wide/from16 v20, v0

    .line 715
    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " %. \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u0441\u0435 0,5 \u043b \u0432\u043e\u0434\u0430 \u0435\u0434\u0438\u043d \u0447\u0430\u0441 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Hydration below normal"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Water "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v11, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    move-wide/from16 v22, v0

    .line 717
    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, " %. 0.5 l of water an hour before the session is advised."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_eb
    move-wide/from16 v0, v18

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    .line 721
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v20

    .line 722
    const/4 v5, 0x3

    move/from16 v0, v20

    if-lt v0, v5, :cond_371

    .line 725
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 726
    const-wide/16 v6, 0x0

    const-string v8, "fatKg"

    mul-double v10, v16, v18

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v10, v10, v18

    invoke-virtual {v15, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    mul-double v10, v4, v16

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v10, v4

    div-double v4, v8, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    .line 727
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    move/from16 v0, v20

    if-ne v0, v7, :cond_366

    const/4 v7, 0x3

    :goto_12b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    const/4 v8, 0x4

    move/from16 v0, v20

    if-ne v0, v8, :cond_369

    const-string v8, "\u0412\u0438\u0441\u043e\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    :goto_137
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": \u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043a\u0433 \u0434\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u201e\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u201c 2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u0438 \u0443\u043c\u0435\u0440\u0435\u043d \u043a\u0430\u043b\u043e\u0440\u0438\u0435\u043d \u0434\u0435\u0444\u0438\u0446\u0438\u0442 \u043f\u0440\u0438 \u0437\u0430\u043f\u0430\u0437\u0432\u0430\u043d\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430."

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    const/4 v10, 0x4

    move/from16 v0, v20

    if-ne v0, v10, :cond_36d

    const-string v10, "High body fat"

    :goto_161
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": \u2212"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " kg to normal"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "The \"Fat loss\" program twice a week and a moderate calorie deficit while keeping muscle mass."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_185
    :goto_185
    iget-wide v4, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move/from16 v0, p2

    invoke-static {v4, v5, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    .line 740
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    .line 741
    if-ltz v4, :cond_388

    const/4 v5, 0x1

    if-gt v4, v5, :cond_388

    .line 742
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    const-string v8, "\u041d\u0438\u0441\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0421\u0438\u043b\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u0438 \u043e\u043a\u043e\u043b\u043e "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide v10, 0x3ff999999999999aL    # 1.6

    mul-double v10, v10, v16

    .line 743
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u0433 \u0431\u0435\u043b\u0442\u044a\u043a \u0434\u043d\u0435\u0432\u043d\u043e (1,6 \u0433/\u043a\u0433)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Low muscle mass"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "A strength program twice a week and about "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide v12, 0x3ff999999999999aL    # 1.6

    mul-double v12, v12, v16

    .line 745
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " g of protein a day (1.6 g/kg)."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_1ed
    :goto_1ed
    const-string v4, "visc"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 756
    const/16 v4, 0xa

    if-lt v11, v4, :cond_239

    .line 757
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0xf

    if-lt v11, v7, :cond_3ef

    const/4 v7, 0x3

    :goto_201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 758
    const/16 v9, 0xf

    if-lt v11, v9, :cond_3f2

    const-string v9, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u043a\u043e\u043d\u0441\u0443\u043b\u0442\u0430\u0446\u0438\u044f \u0441 \u043b\u0435\u043a\u0430\u0440 \u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435."

    .line 759
    :goto_21a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Visceral fat: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 760
    const/16 v12, 0xf

    if-lt v11, v12, :cond_3f6

    const-string v11, "A doctor\'s advice and a fat-loss program are recommended."

    .line 761
    :goto_233
    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_239
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v8

    .line 765
    const/4 v10, -0x1

    .line 766
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 767
    const/4 v7, 0x0

    :goto_248
    const/4 v4, 0x5

    if-ge v7, v4, :cond_3fa

    .line 768
    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_7ad

    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    cmpg-double v4, v4, v12

    if-gez v4, :cond_7ad

    .line 769
    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    move v6, v7

    .line 767
    :goto_265
    add-int/lit8 v7, v7, 0x1

    move-wide v12, v4

    move v10, v6

    goto :goto_248

    .line 695
    :cond_26a
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_351

    .line 696
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v10, v4

    .line 697
    move-object/from16 v0, v20

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v4, :cond_344

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v4, v4, v5

    const-wide v6, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_344

    const/4 v4, 0x1

    move v11, v4

    .line 698
    :goto_29e
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    const-wide v22, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v8, v22

    if-gtz v7, :cond_348

    const/4 v7, 0x3

    :goto_2b0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 \u0434\u043d\u0435\u0441: \u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " %"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 699
    if-eqz v11, :cond_34b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u041d\u0435\u043f\u044a\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0432 "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v21, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_BG:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, ". \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0432\u0435\u0447\u0435 \u0435 \u043d\u0430\u043c\u0430\u043b\u0438\u043b \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u0430."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 701
    :goto_2f4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Intensity today: \u2212"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v21, " %"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 703
    if-eqz v11, :cond_34e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incomplete recovery in "

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v21, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_EN:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    move/from16 v20, v0

    aget-object v20, v21, v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, ". Auto mode has already lowered the intensity."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 705
    :goto_33c
    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 697
    :cond_344
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_29e

    .line 698
    :cond_348
    const/4 v7, 0x2

    goto/16 :goto_2b0

    .line 701
    :cond_34b
    const-string v9, "\u041f\u043e\u043d\u0438\u0436\u0435\u043d\u0430 \u0445\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f. \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    goto :goto_2f4

    .line 705
    :cond_34e
    const-string v11, "Low hydration. Water before the session is advised."

    goto :goto_33c

    .line 707
    :cond_351
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442 \u0437\u0430 \u043f\u044a\u043b\u043d\u0430 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u043d\u043e\u0441\u0442"

    const-string v9, "\u0422\u044f\u043b\u043e\u0442\u043e \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d\u043e \u0441\u043b\u0435\u0434 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v10, "Ready for full intensity"

    const-string v11, "The body has recovered from the last session."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 727
    :cond_366
    const/4 v7, 0x2

    goto/16 :goto_12b

    .line 728
    :cond_369
    const-string v8, "\u041f\u043e\u0432\u0438\u0448\u0435\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    goto/16 :goto_137

    .line 730
    :cond_36d
    const-string v10, "Elevated body fat"

    goto/16 :goto_161

    .line 733
    :cond_371
    if-nez v20, :cond_185

    .line 734
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    const-string v8, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v9, "\u0411\u0435\u0437 \u043a\u0430\u043b\u043e\u0440\u0438\u0435\u043d \u0434\u0435\u0444\u0438\u0446\u0438\u0442; \u043f\u043e\u0432\u0435\u0447\u0435 \u0432\u0440\u0435\u043c\u0435 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043c\u0435\u0436\u0434\u0443 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435."

    const-string v10, "Very low body fat"

    const-string v11, "No calorie deficit; more recovery time between sessions."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_185

    .line 747
    :cond_388
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1ed

    const/4 v4, 0x2

    move/from16 v0, v20

    if-gt v0, v4, :cond_1ed

    .line 748
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e \u0442\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    const-string v9, "bmi"

    const-wide/16 v12, 0x0

    invoke-virtual {v15, v9, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4039000000000000L    # 25.0

    cmpl-double v9, v12, v16

    if-ltz v9, :cond_3e9

    const-string v9, "\u041f\u043e\u0432\u0438\u0448\u0435\u043d\u0438\u044f\u0442 \u0418\u0422\u041c \u0441\u0435 \u0434\u044a\u043b\u0436\u0438 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430. "

    :goto_3ac
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u043f\u043e\u0434\u0434\u044a\u0440\u0436\u0430\u0449\u0430 \u0441\u0438\u043b\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Athletic build"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    const-string v11, "bmi"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v11, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4039000000000000L    # 25.0

    cmpl-double v11, v16, v18

    if-ltz v11, :cond_3ec

    const-string v11, "The raised BMI is due to muscle mass. "

    :goto_3d3
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "A maintenance strength program is advised."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ed

    .line 749
    :cond_3e9
    const-string v9, ""

    goto :goto_3ac

    .line 751
    :cond_3ec
    const-string v11, ""

    goto :goto_3d3

    .line 757
    :cond_3ef
    const/4 v7, 0x2

    goto/16 :goto_201

    .line 759
    :cond_3f2
    const-string v9, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u0441\u0435 \u0430\u0435\u0440\u043e\u0431\u043d\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435."

    goto/16 :goto_21a

    .line 761
    :cond_3f6
    const-string v11, "Aerobic exercise and a fat-loss program are recommended."

    goto/16 :goto_233

    .line 773
    :cond_3fa
    if-ltz v10, :cond_47e

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_47e

    .line 774
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0424\u043e\u043a\u0443\u0441\u043d\u0430 \u0437\u043e\u043d\u0430: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_N:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u041c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430\u0442\u0430 \u0435 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 775
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " % \u043e\u0442 \u043d\u043e\u0440\u043c\u0430\u0442\u0430. \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u043a\u0430\u0442\u043e \u0444\u043e\u043a\u0443\u0441\u043d\u0430 \u0437\u043e\u043d\u0430."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Focus zone: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v16, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_EN:[Ljava/lang/String;

    aget-object v10, v16, v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The muscle is "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 776
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " % of the norm. Recommended as a focus zone."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_47e
    const-string v4, "segMus"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 780
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v6, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v4

    .line 781
    const/4 v7, 0x3

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v6

    .line 782
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_562

    move-wide v10, v4

    .line 783
    :goto_49d
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_54c

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_54c

    .line 784
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_565

    const/4 v4, 0x1

    move v13, v4

    .line 785
    :goto_4bb
    const-wide/16 v4, 0x0

    cmpl-double v4, v10, v4

    if-lez v4, :cond_569

    const/4 v4, 0x1

    move v12, v4

    .line 786
    :goto_4c3
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0410\u0441\u0438\u043c\u0435\u0442\u0440\u0438\u044f \u043b\u044f\u0432\u043e/\u0434\u044f\u0441\u043d\u043e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " %"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    if-eqz v13, :cond_570

    if-eqz v12, :cond_56d

    const-string v9, "\u0414\u044f\u0441\u043d\u0430\u0442\u0430 \u0440\u044a\u043a\u0430 \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431\u0430."

    .line 788
    :goto_4f6
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v16, " \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u0441\u0435 \u0435\u0434\u043d\u043e\u0441\u0442\u0440\u0430\u043d\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Left/right asymmetry: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 790
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    if-eqz v13, :cond_57c

    if-eqz v12, :cond_579

    const-string v11, "The right arm"

    :goto_536
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is weaker. Single-side exercises are advised."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_54c
    invoke-static {v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v11

    .line 796
    if-eqz v11, :cond_642

    .line 797
    const-wide/16 v6, 0x0

    .line 798
    array-length v5, v11

    const/4 v4, 0x0

    :goto_556
    if-ge v4, v5, :cond_584

    aget-wide v8, v11, v4

    .line 799
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->reachFactor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 798
    add-int/lit8 v4, v4, 0x1

    goto :goto_556

    :cond_562
    move-wide v10, v6

    .line 782
    goto/16 :goto_49d

    .line 784
    :cond_565
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_4bb

    .line 785
    :cond_569
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_4c3

    .line 787
    :cond_56d
    const-string v9, "\u041b\u044f\u0432\u0430\u0442\u0430 \u0440\u044a\u043a\u0430 \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431\u0430."

    goto :goto_4f6

    .line 788
    :cond_570
    if-eqz v12, :cond_575

    const-string v9, "\u0414\u0435\u0441\u043d\u0438\u044f\u0442 \u043a\u0440\u0430\u043a \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431."

    goto :goto_4f6

    :cond_575
    const-string v9, "\u041b\u0435\u0432\u0438\u044f\u0442 \u043a\u0440\u0430\u043a \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431."

    goto/16 :goto_4f6

    .line 791
    :cond_579
    const-string v11, "The left arm"

    goto :goto_536

    :cond_57c
    if-eqz v12, :cond_581

    const-string v11, "The right leg"

    goto :goto_536

    :cond_581
    const-string v11, "The left leg"

    goto :goto_536

    .line 801
    :cond_584
    array-length v4, v11

    int-to-double v4, v4

    div-double v12, v6, v4

    .line 802
    const/4 v5, -0x1

    .line 803
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 804
    const/4 v4, 0x0

    move v10, v5

    :goto_58d
    array-length v5, v11

    if-ge v4, v5, :cond_5a1

    .line 805
    aget-wide v8, v11, v4

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->reachFactor(D)D

    move-result-wide v8

    div-double/2addr v8, v12

    .line 806
    cmpg-double v5, v8, v6

    if-gez v5, :cond_7aa

    move-wide v6, v8

    move v5, v4

    .line 804
    :goto_59d
    add-int/lit8 v4, v4, 0x1

    move v10, v5

    goto :goto_58d

    .line 811
    :cond_5a1
    if-ltz v10, :cond_642

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpg-double v4, v6, v4

    if-gez v4, :cond_642

    .line 812
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v11, v4

    .line 813
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041a\u0430\u043d\u0430\u043b \u201e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_N:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u201c: +"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " % \u0441\u0438\u043b\u0430"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u043c\u043e\u0441\u0442\u0442\u0430 \u0442\u0430\u043c \u0435 \u0441 "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " % \u043f\u043e\u0434 \u0441\u0440\u0435\u0434\u043d\u0430\u0442\u0430 \u0437\u0430\u0440\u0430\u0434\u0438 \u043f\u043e\u0434\u043a\u043e\u0436\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Channel \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_EN:[Ljava/lang/String;

    aget-object v10, v13, v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\": +"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " % strength"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Conductivity there is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " % below average due to subcutaneous fat."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_642
    if-lez p1, :cond_701

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 821
    :goto_64b
    if-eqz v4, :cond_6f6

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f6

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f6

    .line 822
    const-string v5, "muscle"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    sub-double v12, v6, v8

    .line 823
    const-string v5, "fatKg"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double v16, v6, v4

    .line 824
    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v12, v4

    if-ltz v4, :cond_704

    const-wide v4, -0x4036666666666666L    # -0.2

    cmpg-double v4, v16, v4

    if-gtz v4, :cond_704

    .line 825
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "\u041f\u043e\u0434\u043e\u0431\u0440\u0435\u043d \u0441\u044a\u0441\u0442\u0430\u0432 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 826
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u0438 \u2212"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    neg-double v10, v0

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u043a\u0433 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Improved body composition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 827
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " kg muscle mass and \u2212"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v16

    neg-double v12, v0

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " kg fat since the first measurement."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_6f6
    :goto_6f6
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;-><init>()V

    invoke-static {v14, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v14

    .line 843
    goto/16 :goto_2a

    .line 820
    :cond_701
    const/4 v4, 0x0

    goto/16 :goto_64b

    .line 829
    :cond_704
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v16, v4

    if-ltz v4, :cond_754

    .line 830
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438: +"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043a\u0433"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u0423\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u043f\u0440\u0435\u0433\u043b\u0435\u0434 \u043d\u0430 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\u0442\u043e \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fat: +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 833
    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " kg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "An increase since the first measurement. Review the diet and the training frequency."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f6

    .line 835
    :cond_754
    const-wide v4, -0x4016666666666666L    # -0.8

    cmpg-double v4, v12, v4

    if-gtz v4, :cond_6f6

    .line 836
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430: \u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-double v10, v12

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043a\u0433"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u0441\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u0431\u0435\u043b\u0442\u044a\u043a \u0438 \u0441\u0438\u043b\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430; \u043f\u0440\u0438 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435 \u2014 \u043f\u043e-\u0443\u043c\u0435\u0440\u0435\u043d \u0434\u0435\u0444\u0438\u0446\u0438\u0442."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Muscle mass: \u2212"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    neg-double v12, v12

    .line 838
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " kg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "More protein and a strength program; when losing weight, a more moderate deficit."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6f6

    :cond_7aa
    move v5, v10

    goto/16 :goto_59d

    :cond_7ad
    move-wide v4, v12

    move v6, v10

    goto/16 :goto_265
.end method

.method public static ageNorm(DI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    .line 604
    int-to-double v2, p2

    .line 605
    const/4 v0, 0x6

    new-array v1, v0, [D

    const/4 v0, 0x0

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    sub-double v4, v2, v4

    aput-wide v4, v1, v0

    const/4 v0, 0x1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    sub-double v4, v2, v4

    aput-wide v4, v1, v0

    const/4 v0, 0x2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sub-double v4, v2, v4

    aput-wide v4, v1, v0

    const/4 v0, 0x3

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v2

    aput-wide v4, v1, v0

    const/4 v0, 0x4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v4, v2

    aput-wide v4, v1, v0

    const/4 v0, 0x5

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 606
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_3e

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "Imboden 2017 (DXA, 3 327)"

    move-object v3, p3

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    nop

    :array_3e
    .array-data 4
        -0xf9492c
        -0xef467f
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method public static asymmetry(Lorg/json/JSONArray;II)D
    .registers 13

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 299
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 303
    :cond_10
    :goto_10
    return-wide v0

    .line 302
    :cond_11
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    .line 303
    add-double v6, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_10

    sub-double v0, v2, v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    goto :goto_10
.end method

.method static atAge([DI)D
    .registers 10

    .prologue
    .line 488
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    sget-object v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 489
    const/4 v0, 0x1

    :goto_18
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 490
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    aget-wide v4, v1, v0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_47

    .line 491
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    sub-double/2addr v2, v4

    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    aget-wide v4, v1, v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v1, v6

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 492
    add-int/lit8 v1, v0, -0x1

    aget-wide v4, p0, v1

    aget-wide v6, p0, v0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 495
    :goto_46
    return-wide v0

    .line 489
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 495
    :cond_4a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    goto :goto_46
.end method

.method public static bmiNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 617
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    .line 618
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    const-string v6, ""

    const/4 v7, 0x1

    const-string v8, "WHO"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 617
    :array_14
    .array-data 8
        0x4028000000000000L    # 12.0
        0x4030000000000000L    # 16.0
        0x4032800000000000L    # 18.5
        0x4039000000000000L    # 25.0
        0x403e000000000000L    # 30.0
        0x4044000000000000L    # 40.0
    .end array-data
.end method

.method public static body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;
    .registers 19

    .prologue
    .line 350
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;-><init>()V

    .line 351
    if-eqz p0, :cond_17

    const-string v2, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x64

    move/from16 v0, p2

    if-ge v0, v2, :cond_19

    :cond_17
    move-object v2, v10

    .line 404
    :goto_18
    return-object v2

    .line 354
    :cond_19
    move/from16 v0, p2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 355
    const-string v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 356
    const-string v6, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 357
    const-string v8, "fatKg"

    mul-double v12, v2, v6

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 358
    const-string v11, "lean"

    sub-double v12, v2, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 359
    div-double v14, v12, v4

    iput-wide v14, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    .line 360
    div-double/2addr v8, v4

    iput-wide v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    .line 361
    const-string v8, "skel"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 362
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_149

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_65
    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->smi:D

    .line 363
    if-eqz p1, :cond_182

    .line 364
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_150

    const/4 v2, 0x0

    :goto_72
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 365
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_169

    const/4 v2, 0x0

    :goto_7b
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    .line 370
    :goto_7d
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-nez v2, :cond_1c7

    .line 371
    const/4 v2, 0x6

    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    .line 377
    :goto_84
    const-string v2, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 378
    const-string v3, "ash"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 379
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1f0

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1f0

    .line 381
    mul-double v2, v6, v12

    div-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    .line 386
    :cond_a7
    :goto_a7
    const-string v2, "pa"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 387
    const/16 v2, 0x12

    if-lt v9, v2, :cond_d2

    .line 388
    int-to-double v2, v9

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    move/from16 v0, p1

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zMuscle(DZI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    .line 389
    int-to-double v2, v9

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    move/from16 v0, p1

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zFat(DZI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    .line 391
    :cond_d2
    const-string v2, "rhr"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    .line 392
    const/16 v2, 0x12

    if-lt v9, v2, :cond_f9

    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 393
    int-to-double v2, v9

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    move/from16 v0, p1

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zHeart(DZI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromHeart:D

    .line 395
    :cond_f9
    const-string v2, "pag"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 396
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_216

    :goto_109
    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 397
    const-string v2, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_146

    .line 399
    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const/4 v3, 0x4

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 400
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    add-double/2addr v6, v4

    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    add-double/2addr v6, v8

    const/4 v3, 0x2

    const-wide/16 v8, 0x0

    .line 401
    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    add-double/2addr v2, v6

    .line 402
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_224

    div-double v2, v4, v2

    :goto_144
    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    :cond_146
    move-object v2, v10

    .line 404
    goto/16 :goto_18

    .line 362
    :cond_149
    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v8

    div-double/2addr v2, v4

    goto/16 :goto_65

    .line 364
    :cond_150
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_15b

    const/4 v2, 0x1

    goto/16 :goto_72

    :cond_15b
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4037000000000000L    # 23.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_166

    const/4 v2, 0x2

    goto/16 :goto_72

    :cond_166
    const/4 v2, 0x3

    goto/16 :goto_72

    .line 365
    :cond_169
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_174

    const/4 v2, 0x1

    goto/16 :goto_7b

    :cond_174
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_17f

    const/4 v2, 0x2

    goto/16 :goto_7b

    :cond_17f
    const/4 v2, 0x3

    goto/16 :goto_7b

    .line 367
    :cond_182
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_198

    const/4 v2, 0x0

    :goto_18b
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 368
    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_1b1

    const/4 v2, 0x0

    :goto_194
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    goto/16 :goto_7d

    .line 367
    :cond_198
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_1a2

    const/4 v2, 0x1

    goto :goto_18b

    :cond_1a2
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide v8, 0x4033800000000000L    # 19.5

    cmpg-double v2, v2, v8

    if-gez v2, :cond_1af

    const/4 v2, 0x2

    goto :goto_18b

    :cond_1af
    const/4 v2, 0x3

    goto :goto_18b

    .line 368
    :cond_1b1
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_1bb

    const/4 v2, 0x1

    goto :goto_194

    :cond_1bb
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_1c5

    const/4 v2, 0x2

    goto :goto_194

    :cond_1c5
    const/4 v2, 0x3

    goto :goto_194

    .line 372
    :cond_1c7
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1de

    .line 373
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1d6

    const/4 v2, 0x0

    :goto_1d2
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    goto/16 :goto_84

    :cond_1d6
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v2, :cond_1dc

    const/4 v2, 0x5

    goto :goto_1d2

    :cond_1dc
    const/4 v2, 0x1

    goto :goto_1d2

    .line 375
    :cond_1de
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1e8

    const/4 v2, 0x2

    :goto_1e4
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    goto/16 :goto_84

    :cond_1e8
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v2, :cond_1ee

    const/4 v2, 0x4

    goto :goto_1e4

    :cond_1ee
    const/4 v2, 0x3

    goto :goto_1e4

    .line 382
    :cond_1f0
    if-eqz v2, :cond_a7

    .line 383
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    const/4 v3, 0x2

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    add-double/2addr v6, v8

    const/4 v3, 0x3

    const-wide/16 v8, 0x0

    .line 384
    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    add-double/2addr v6, v8

    const/4 v3, 0x4

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    add-double/2addr v2, v6

    div-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    goto/16 :goto_a7

    .line 396
    :cond_216
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    iget-wide v4, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    move/from16 v8, p1

    invoke-static/range {v2 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->physicalAge(DDDZI)D

    move-result-wide v2

    goto/16 :goto_109

    .line 402
    :cond_224
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_144
.end method

.method public static channelFat(Lorg/json/JSONObject;)[D
    .registers 27

    .prologue
    .line 209
    if-eqz p0, :cond_31

    const-string v4, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v17, v4

    .line 210
    :goto_c
    if-eqz p0, :cond_35

    const-string v4, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v16, v4

    .line 211
    :goto_18
    if-eqz p0, :cond_39

    const-string v4, "fat"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move-wide v14, v4

    .line 212
    :goto_25
    if-eqz v17, :cond_2f

    if-eqz v16, :cond_2f

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 213
    :cond_2f
    const/4 v4, 0x0

    .line 241
    :goto_30
    return-object v4

    .line 209
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v17, v4

    goto :goto_c

    .line 210
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v16, v4

    goto :goto_18

    .line 211
    :cond_39
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v14, v4

    goto :goto_25

    .line 215
    :cond_3d
    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v18, v0

    .line 216
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 217
    const/4 v4, 0x3

    new-array v0, v4, [[I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v5, v10

    aput-object v5, v19, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ec

    aput-object v5, v19, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_f4

    aput-object v5, v19, v4

    .line 219
    const/4 v4, 0x0

    move v5, v4

    move-wide v10, v6

    move-wide v12, v8

    :goto_6b
    const/4 v4, 0x3

    if-ge v5, v4, :cond_b7

    .line 220
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 221
    aget-object v20, v19, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v4, 0x0

    :goto_7a
    move/from16 v0, v21

    if-ge v4, v0, :cond_9f

    aget v22, v20, v4

    .line 222
    const-wide/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v24

    add-double v8, v8, v24

    .line 223
    const-wide/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v22

    add-double v6, v6, v22

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 225
    :cond_9f
    add-double v20, v8, v6

    const-wide/16 v22, 0x0

    cmpg-double v4, v20, v22

    if-gtz v4, :cond_a9

    .line 226
    const/4 v4, 0x0

    goto :goto_30

    .line 228
    :cond_a9
    add-double v20, v8, v6

    div-double v20, v8, v20

    aput-wide v20, v18, v5

    .line 229
    add-double/2addr v12, v8

    .line 230
    add-double/2addr v6, v8

    add-double/2addr v6, v10

    .line 219
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-wide v10, v6

    goto :goto_6b

    .line 232
    :cond_b7
    div-double v10, v12, v10

    .line 233
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    array-length v4, v4

    new-array v5, v4, [D

    .line 234
    const/4 v4, 0x0

    :goto_bf
    array-length v6, v5

    if-ge v4, v6, :cond_e9

    .line 235
    const-wide/16 v8, 0x0

    .line 236
    const/4 v6, 0x0

    :goto_c5
    const/4 v7, 0x3

    if-ge v6, v7, :cond_d6

    .line 237
    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v6

    aget-wide v16, v18, v6

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_c5

    .line 239
    :cond_d6
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    mul-double/2addr v8, v14

    div-double/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    :cond_e9
    move-object v4, v5

    .line 241
    goto/16 :goto_30

    .line 217
    :array_ec
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_f4
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public static channelMuscle(Lorg/json/JSONObject;ZI)[D
    .registers 17

    .prologue
    .line 251
    invoke-static/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 252
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 253
    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 254
    const/4 v1, 0x3

    aget-wide v6, v0, v1

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    .line 255
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 256
    :cond_30
    const/4 v0, 0x0

    .line 273
    :goto_31
    return-object v0

    .line 258
    :cond_32
    const/4 v6, 0x3

    new-array v8, v6, [D

    const/4 v6, 0x0

    aput-wide v2, v8, v6

    const/4 v2, 0x1

    aput-wide v4, v8, v2

    const/4 v2, 0x2

    aput-wide v0, v8, v2

    .line 259
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    array-length v0, v0

    new-array v1, v0, [D

    .line 260
    const-wide/16 v2, 0x0

    .line 261
    const/4 v0, 0x0

    :goto_46
    array-length v4, v1

    if-ge v0, v4, :cond_62

    .line 262
    const-wide/16 v6, 0x0

    .line 263
    const/4 v4, 0x0

    :goto_4c
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5c

    .line 264
    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    aget-object v5, v5, v0

    aget-wide v10, v5, v4

    aget-wide v12, v8, v4

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 266
    :cond_5c
    aput-wide v6, v1, v0

    .line 267
    add-double/2addr v2, v6

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 269
    :cond_62
    array-length v0, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 270
    const/4 v0, 0x0

    :goto_66
    array-length v4, v1

    if-ge v0, v4, :cond_83

    .line 271
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3ff6666666666666L    # 1.4

    aget-wide v8, v1, v0

    div-double/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_83
    move-object v0, v1

    .line 273
    goto :goto_31
.end method

.method static f1(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 668
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fatMid(Z)D
    .registers 3

    .prologue
    .line 194
    if-eqz p0, :cond_5

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    :goto_4
    return-wide v0

    :cond_5
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    goto :goto_4
.end method

.method public static fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 15

    .prologue
    const/16 v2, 0x3c

    const/16 v1, 0x28

    const/4 v0, 0x6

    .line 576
    if-eqz p2, :cond_2b

    .line 577
    if-ge p3, v1, :cond_1d

    new-array v0, v0, [D

    fill-array-data v0, :array_42

    :goto_e
    move-object v1, v0

    .line 583
    :goto_f
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    const-string v6, " %"

    const/4 v7, 0x1

    const-string v8, "Gallagher 2000 \u00b7 AJCN"

    move-object v3, p4

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 577
    :cond_1d
    if-ge p3, v2, :cond_25

    new-array v0, v0, [D

    fill-array-data v0, :array_5e

    goto :goto_e

    .line 578
    :cond_25
    new-array v0, v0, [D

    fill-array-data v0, :array_7a

    goto :goto_e

    .line 580
    :cond_2b
    if-ge p3, v1, :cond_34

    new-array v0, v0, [D

    fill-array-data v0, :array_96

    :goto_32
    move-object v1, v0

    .line 581
    goto :goto_f

    .line 580
    :cond_34
    if-ge p3, v2, :cond_3c

    new-array v0, v0, [D

    fill-array-data v0, :array_b2

    goto :goto_32

    .line 581
    :cond_3c
    new-array v0, v0, [D

    fill-array-data v0, :array_ce

    goto :goto_32

    .line 577
    :array_42
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x4020000000000000L    # 8.0
        0x4034000000000000L    # 20.0
        0x4039000000000000L    # 25.0
        0x4044000000000000L    # 40.0
    .end array-data

    :array_5e
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x4026000000000000L    # 11.0
        0x4036000000000000L    # 22.0
        0x403c000000000000L    # 28.0
        0x4045000000000000L    # 42.0
    .end array-data

    .line 578
    :array_7a
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x402a000000000000L    # 13.0
        0x4039000000000000L    # 25.0
        0x403e000000000000L    # 30.0
        0x4046000000000000L    # 44.0
    .end array-data

    .line 580
    :array_96
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4035000000000000L    # 21.0
        0x4040800000000000L    # 33.0
        0x4043800000000000L    # 39.0
        0x4049000000000000L    # 50.0
    .end array-data

    :array_b2
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4037000000000000L    # 23.0
        0x4041000000000000L    # 34.0
        0x4044000000000000L    # 40.0
        0x404a000000000000L    # 52.0
    .end array-data

    .line 581
    :array_ce
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4038000000000000L    # 24.0
        0x4042000000000000L    # 36.0
        0x4045000000000000L    # 42.0
        0x404b000000000000L    # 54.0
    .end array-data
.end method

.method static legsZ20(Lorg/json/JSONObject;)D
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    .line 83
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_16

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 85
    :cond_16
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 87
    :goto_18
    return-wide v0

    :cond_19
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_18
.end method

.method static median(Ljava/util/List;)D
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 73
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 79
    :goto_8
    return-wide v0

    .line 76
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 79
    rem-int/lit8 v0, v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_27

    div-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_8

    :cond_27
    div-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8
.end method

.method public static muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    const/4 v0, 0x6

    .line 592
    if-eqz p2, :cond_16

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    .line 593
    :goto_8
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    const-string v6, ""

    const/4 v7, 0x1

    const-string v8, "FFMI \u00b7 Schutz 2002 \u00b7 Kelly 2009 (NHANES)"

    move-object v3, p3

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 592
    :cond_16
    new-array v1, v0, [D

    fill-array-data v1, :array_38

    goto :goto_8

    :array_1c
    .array-data 8
        0x402a000000000000L    # 13.0
        0x4030000000000000L    # 16.0
        0x4031000000000000L    # 17.0
        0x4034000000000000L    # 20.0
        0x4037000000000000L    # 23.0
        0x403b000000000000L    # 27.0
    .end array-data

    :array_38
    .array-data 8
        0x4024000000000000L    # 10.0
        0x402a000000000000L    # 13.0
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4033800000000000L    # 19.5
        0x4037000000000000L    # 23.0
    .end array-data
.end method

.method static norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 558
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;-><init>()V

    .line 559
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    const/4 v2, 0x6

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    iput-wide p3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    .line 563
    iput-object p5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->unit:Ljava/lang/String;

    .line 564
    iput p6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->decimals:I

    .line 565
    iput-object p7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    .line 566
    return-object v0
.end method

.method public static ofNormal(Lorg/json/JSONObject;ZI)[[D
    .registers 25

    .prologue
    .line 159
    const/4 v2, 0x2

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 160
    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x5

    if-ge v3, v4, :cond_23

    .line 161
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v4, v3

    .line 162
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v4, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 164
    :cond_23
    if-eqz p0, :cond_56

    const-string v3, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v14, v3

    .line 165
    :goto_2e
    if-eqz p0, :cond_59

    const-string v3, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v13, v3

    .line 166
    :goto_39
    if-eqz p0, :cond_5c

    const-string v3, "w"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 167
    :goto_45
    if-eqz v14, :cond_55

    if-eqz v13, :cond_55

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_55

    const/16 v3, 0x64

    move/from16 v0, p2

    if-ge v0, v3, :cond_5f

    .line 189
    :cond_55
    return-object v2

    .line 164
    :cond_56
    const/4 v3, 0x0

    move-object v14, v3

    goto :goto_2e

    .line 165
    :cond_59
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_39

    .line 166
    :cond_5c
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_45

    .line 170
    :cond_5f
    move/from16 v0, p2

    int-to-double v6, v0

    .line 171
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->stdWeight(IZ)F

    move-result v8

    .line 172
    if-eqz p1, :cond_138

    const v3, 0x3f59999a    # 0.85f

    :goto_6f
    mul-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v16

    .line 173
    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v8, v4

    const-wide v10, 0x3fba1cac083126e9L    # 0.102

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    const-wide v10, -0x4058f5c28f5c28f6L    # -0.045

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x400e04189374bc6aL    # 3.752

    add-double/2addr v8, v10

    .line 174
    const-wide v10, 0x3fae353f7ced9168L    # 0.059

    mul-double/2addr v10, v4

    const-wide v18, 0x3fc5810624dd2f1bL    # 0.168

    mul-double v18, v18, v16

    add-double v10, v10, v18

    const-wide v18, -0x405353f7ced91687L    # -0.056

    mul-double v18, v18, v6

    add-double v10, v10, v18

    const-wide v18, 0x401319999999999aL    # 4.775

    add-double v10, v10, v18

    .line 175
    const-wide v18, 0x3fc53f7ced916873L    # 0.166

    mul-double v4, v4, v18

    const-wide v18, 0x3fdf0a3d70a3d70aL    # 0.485

    mul-double v16, v16, v18

    add-double v4, v4, v16

    const-wide v16, -0x403b851eb851eb85L    # -0.16

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    const-wide v6, 0x402b30a3d70a3d71L    # 13.595

    add-double/2addr v6, v4

    .line 176
    const/4 v3, 0x0

    move v12, v3

    :goto_cf
    const/4 v3, 0x5

    if-ge v12, v3, :cond_55

    .line 177
    const/4 v3, 0x1

    if-eq v12, v3, :cond_d8

    const/4 v3, 0x2

    if-ne v12, v3, :cond_13d

    :cond_d8
    const/4 v3, 0x1

    move v4, v3

    .line 178
    :goto_da
    if-nez v12, :cond_140

    const/4 v3, 0x1

    .line 179
    :goto_dd
    if-eqz v3, :cond_142

    move-wide v4, v6

    .line 180
    :goto_e0
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_fb

    const-wide/16 v16, 0x0

    cmpl-double v3, v4, v16

    if-lez v3, :cond_fb

    .line 181
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v16

    div-double v4, v16, v4

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    aput-wide v4, v3, v12

    .line 184
    :cond_fb
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v14, v12, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v16

    invoke-virtual {v13, v12, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v16

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_134

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_134

    add-double v18, v4, v16

    const-wide/16 v20, 0x0

    cmpl-double v3, v18, v20

    if-lez v3, :cond_134

    .line 186
    const/4 v3, 0x1

    aget-object v3, v2, v3

    add-double v16, v16, v4

    div-double v4, v4, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatMid(Z)D

    move-result-wide v16

    div-double v4, v4, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    aput-wide v4, v3, v12

    .line 176
    :cond_134
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_cf

    .line 172
    :cond_138
    const v3, 0x3f451eb8    # 0.77f

    goto/16 :goto_6f

    .line 177
    :cond_13d
    const/4 v3, 0x0

    move v4, v3

    goto :goto_da

    .line 178
    :cond_140
    const/4 v3, 0x0

    goto :goto_dd

    .line 179
    :cond_142
    if-eqz v4, :cond_146

    move-wide v4, v8

    goto :goto_e0

    :cond_146
    move-wide v4, v10

    goto :goto_e0
.end method

.method public static physicalAge(DDDZI)D
    .registers 24

    .prologue
    .line 428
    const/16 v4, 0x12

    move/from16 v0, p7

    if-lt v0, v4, :cond_12

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_12

    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-gtz v4, :cond_15

    .line 429
    :cond_12
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 443
    :goto_14
    return-wide v4

    .line 431
    :cond_15
    move-wide/from16 v0, p2

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zFat(DZI)D

    move-result-wide v4

    neg-double v6, v4

    .line 432
    const/4 v4, 0x1

    .line 433
    move-wide/from16 v0, p0

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zMuscle(DZI)D

    move-result-wide v8

    .line 434
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_33

    .line 435
    add-double/2addr v6, v8

    .line 436
    const/4 v4, 0x2

    .line 438
    :cond_33
    invoke-static/range {p4 .. p7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zHeart(DZI)D

    move-result-wide v8

    .line 439
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_40

    .line 440
    sub-double/2addr v6, v8

    .line 441
    add-int/lit8 v4, v4, 0x1

    .line 443
    :cond_40
    move/from16 v0, p7

    int-to-double v8, v0

    const-wide/high16 v10, -0x3fe0000000000000L    # -8.0

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v14

    int-to-double v4, v4

    div-double v4, v6, v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double v4, v8, v4

    goto :goto_14
.end method

.method public static physicalAge(DDZI)D
    .registers 14

    .prologue
    .line 418
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v0, p0

    move-wide v2, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->physicalAge(DDDZI)D

    move-result-wide v0

    return-wide v0
.end method

.method static ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D
    .registers 13

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 64
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 69
    :cond_14
    :goto_14
    return-wide v0

    .line 67
    :cond_15
    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    .line 68
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    .line 69
    cmpl-double v6, v2, v8

    if-lez v6, :cond_14

    cmpl-double v6, v4, v8

    if-lez v6, :cond_14

    div-double v0, v4, v2

    goto :goto_14
.end method

.method static reachFactor(D)D
    .registers 10

    .prologue
    .line 847
    const-wide v0, 0x3fe3333333333333L    # 0.6

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    sub-double v4, p0, v4

    neg-double v4, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;
    .registers 22

    .prologue
    .line 92
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;-><init>()V

    .line 93
    if-eqz p0, :cond_10

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object v8, v2

    .line 94
    :goto_c
    if-nez v8, :cond_13

    move-object v2, v6

    .line 152
    :goto_f
    return-object v2

    .line 93
    :cond_10
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_c

    .line 97
    :cond_13
    const-string v2, "t"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 98
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 99
    add-int/lit8 v2, p1, -0x1

    :goto_20
    if-ltz v2, :cond_5d

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/16 v7, 0x8

    if-ge v3, v7, :cond_5d

    .line 100
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_5a

    const-string v7, "t"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/32 v12, 0x1499700

    cmp-long v7, v10, v12

    if-ltz v7, :cond_5a

    const-string v7, "z20"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_5a

    const-string v7, "f1"

    .line 103
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "f1"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-ne v7, v10, :cond_5a

    .line 104
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 107
    :cond_5d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->base:I

    .line 108
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6c

    move-object v2, v6

    .line 109
    goto :goto_f

    .line 111
    :cond_6c
    const-wide/16 v4, 0x0

    .line 112
    const/4 v2, 0x0

    move v7, v2

    :goto_70
    const/4 v2, 0x5

    if-ge v7, v2, :cond_fe

    const-string v2, "f1"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_fe

    .line 113
    const-string v2, "z20"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "z100"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D

    move-result-wide v10

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_95
    :goto_95
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 116
    const-string v13, "z20"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "z100"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v13, v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D

    move-result-wide v14

    .line 117
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_95

    .line 118
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 121
    :cond_bf
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v2

    .line 122
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1b9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1b9

    .line 123
    iget-object v12, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    div-double v2, v10, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v10

    aput-wide v2, v12, v7

    .line 125
    const/4 v2, 0x1

    if-eq v7, v2, :cond_e1

    const/4 v2, 0x2

    if-ne v7, v2, :cond_fb

    :cond_e1
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 126
    :goto_e6
    iget-object v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v10, v10, v7

    mul-double/2addr v10, v2

    cmpl-double v10, v10, v4

    if-lez v10, :cond_1b9

    .line 127
    iget-object v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    .line 128
    iput v7, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    .line 112
    :goto_f6
    add-int/lit8 v7, v7, 0x1

    move-wide v4, v2

    goto/16 :goto_70

    .line 125
    :cond_fb
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_e6

    .line 132
    :cond_fe
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_107
    :goto_107
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 134
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->legsZ20(Lorg/json/JSONObject;)D

    move-result-wide v10

    .line 135
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_107

    .line 136
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 139
    :cond_125
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->legsZ20(Lorg/json/JSONObject;)D

    move-result-wide v8

    .line 140
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v2

    .line 141
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_149

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_149

    const-wide/16 v10, 0x0

    cmpl-double v7, v2, v10

    if-lez v7, :cond_149

    .line 142
    div-double v2, v8, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    .line 144
    :cond_149
    iget-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_199

    const-wide/16 v2, 0x0

    .line 145
    :goto_153
    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide/high16 v14, 0x4036000000000000L    # 22.0

    const-wide/16 v16, 0x0

    const-wide v18, 0x3fd999999999999aL    # 0.4

    sub-double v18, v4, v18

    .line 146
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v18, v2, v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 145
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    iput v7, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    .line 147
    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_1a2

    .line 148
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    :cond_196
    :goto_196
    move-object v2, v6

    .line 152
    goto/16 :goto_f

    .line 144
    :cond_199
    const-wide/16 v2, 0x0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_153

    .line 149
    :cond_1a2
    const-wide v8, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v4, v8

    if-gez v4, :cond_1b1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_196

    .line 150
    :cond_1b1
    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    goto :goto_196

    :cond_1b9
    move-wide v2, v4

    goto/16 :goto_f6
.end method

.method public static readyNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 629
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    .line 630
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_34

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "XEMS"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 629
    :array_18
    .array-data 8
        0x0
        0x4044000000000000L    # 40.0
        0x404e000000000000L    # 60.0
        0x4054000000000000L    # 80.0
        0x4056800000000000L    # 90.0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 630
    :array_34
    .array-data 4
        -0x10bbbc
        -0x68cea
        -0xa61f5
        -0xdd3aa2
        -0xdd3aa2
    .end array-data
.end method

.method public static visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 611
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    .line 612
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_34

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "WLA25 / Fitdays"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 611
    :array_18
    .array-data 8
        0x0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4024000000000000L    # 10.0
        0x402e000000000000L    # 15.0
        0x4035000000000000L    # 21.0
    .end array-data

    .line 612
    :array_34
    .array-data 4
        -0xef467f
        -0xdd3aa2
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method public static waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    const/4 v0, 0x6

    .line 598
    if-eqz p2, :cond_16

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    .line 599
    :goto_8
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    const-string v6, " %"

    const/4 v7, 0x1

    const-string v8, "BIA reference ranges"

    move-object v3, p3

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 598
    :cond_16
    new-array v1, v0, [D

    fill-array-data v1, :array_38

    goto :goto_8

    :array_1c
    .array-data 8
        0x4041800000000000L    # 35.0
        0x4046800000000000L    # 45.0
        0x4049000000000000L    # 50.0
        0x4050400000000000L    # 65.0
        0x4051800000000000L    # 70.0
        0x4054000000000000L    # 80.0
    .end array-data

    :array_38
    .array-data 8
        0x403e000000000000L    # 30.0
        0x4044000000000000L    # 40.0
        0x4046800000000000L    # 45.0
        0x404e000000000000L    # 60.0
        0x4050400000000000L    # 65.0
        0x4052c00000000000L    # 75.0
    .end array-data
.end method

.method public static weakFocus(Lorg/json/JSONObject;ZI)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v0

    aget-object v4, v0, v3

    .line 282
    const/4 v2, -0x1

    .line 283
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 284
    :goto_d
    const/4 v5, 0x5

    if-ge v3, v5, :cond_24

    .line 285
    aget-wide v6, v4, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_21

    aget-wide v6, v4, v3

    cmpg-double v5, v6, v0

    if-gez v5, :cond_21

    .line 286
    aget-wide v0, v4, v3

    move v2, v3

    .line 284
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 290
    :cond_24
    if-gez v2, :cond_28

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_27
    return-object v0

    :cond_28
    if-nez v2, :cond_2d

    const-string v0, "abs"

    goto :goto_27

    .line 294
    :cond_2d
    const/4 v0, 0x1

    if-eq v2, v0, :cond_33

    const/4 v0, 0x2

    if-ne v2, v0, :cond_36

    :cond_33
    const-string v0, "arms"

    goto :goto_27

    :cond_36
    const-string v0, "legs"

    goto :goto_27
.end method

.method static zFat(DZI)D
    .registers 10

    .prologue
    .line 481
    if-eqz p2, :cond_2c

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P25:[D

    :goto_4
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v2

    if-eqz p2, :cond_2f

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P50:[D

    :goto_c
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v4

    .line 482
    if-eqz p2, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P75:[D

    :goto_14
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v0

    .line 483
    div-double v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3ff595810624dd2fL    # 1.349

    div-double/2addr v0, v2

    div-double v0, v4, v0

    return-wide v0

    .line 481
    :cond_2c
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P25:[D

    goto :goto_4

    :cond_2f
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P50:[D

    goto :goto_c

    .line 482
    :cond_32
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P75:[D

    goto :goto_14
.end method

.method static zHeart(DZI)D
    .registers 16

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 448
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_17

    const-wide v4, 0x4041800000000000L    # 35.0

    cmpg-double v0, p0, v4

    if-ltz v0, :cond_17

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpl-double v0, p0, v4

    if-lez v0, :cond_1a

    .line 449
    :cond_17
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 458
    :goto_19
    return-wide v0

    .line 451
    :cond_1a
    if-eqz p2, :cond_8b

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P25:[D

    move-object v4, v0

    :goto_1f
    if-eqz p2, :cond_8f

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P50:[D

    move-object v3, v0

    .line 452
    :goto_24
    if-eqz p2, :cond_93

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P75:[D

    .line 453
    :goto_28
    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    aget-wide v8, v5, v2

    int-to-double v10, p3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 454
    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    aget-wide v8, v5, v1

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_96

    .line 455
    :goto_42
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v8, v2, v5

    sub-double/2addr v6, v8

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    aget-wide v8, v2, v1

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v10, v2, v5

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 456
    add-int/lit8 v2, v1, -0x1

    aget-wide v8, v4, v2

    aget-wide v10, v4, v1

    add-int/lit8 v2, v1, -0x1

    aget-wide v4, v4, v2

    sub-double v4, v10, v4

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    add-int/lit8 v2, v1, -0x1

    aget-wide v8, v3, v2

    aget-wide v10, v3, v1

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v3, v2

    sub-double v2, v10, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    .line 457
    add-int/lit8 v8, v1, -0x1

    aget-wide v8, v0, v8

    aget-wide v10, v0, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sub-double v0, v10, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v8

    .line 458
    sub-double v2, p0, v2

    sub-double/2addr v0, v4

    const-wide v4, 0x3ff595810624dd2fL    # 1.349

    div-double/2addr v0, v4

    div-double v0, v2, v0

    goto :goto_19

    .line 451
    :cond_8b
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P25:[D

    move-object v4, v0

    goto :goto_1f

    :cond_8f
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P50:[D

    move-object v3, v0

    goto :goto_24

    .line 452
    :cond_93
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P75:[D

    goto :goto_28

    :cond_96
    move v1, v2

    .line 454
    goto :goto_42
.end method

.method static zMuscle(DZI)D
    .registers 10

    .prologue
    .line 471
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_f

    .line 472
    :cond_c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 476
    :goto_e
    return-wide v0

    .line 474
    :cond_f
    if-eqz p2, :cond_33

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P25:[D

    :goto_13
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v2

    if-eqz p2, :cond_36

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P50:[D

    :goto_1b
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v4

    .line 475
    if-eqz p2, :cond_39

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P75:[D

    :goto_23
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v0

    .line 476
    sub-double v4, p0, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3ff595810624dd2fL    # 1.349

    div-double/2addr v0, v2

    div-double v0, v4, v0

    goto :goto_e

    .line 474
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P25:[D

    goto :goto_13

    :cond_36
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P50:[D

    goto :goto_1b

    .line 475
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P75:[D

    goto :goto_23
.end method

.method public static zoneNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 623
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    .line 624
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    const-string v6, " %"

    const/4 v7, 0x0

    const-string v8, "WLA25 / Fitdays segment standard"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 623
    :array_14
    .array-data 8
        0x404e000000000000L    # 60.0
        0x4054000000000000L    # 80.0
        0x4056800000000000L    # 90.0
        0x405b800000000000L    # 110.0
        0x405e000000000000L    # 120.0
        0x4062c00000000000L    # 150.0
    .end array-data
.end method
