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

.field static final OTHER_TIME_K:D = 1.5

.field static final RED:I = -0x10bbbc

.field static final RHR_AGES:[D

.field static final RHR_F_P25:[D

.field static final RHR_F_P50:[D

.field static final RHR_F_P75:[D

.field static final RHR_M_P25:[D

.field static final RHR_M_P50:[D

.field static final RHR_M_P75:[D

.field static final SAME_HOURS:D = 3.0

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

.field static final TRUNK_WEAK:D = 85.0

.field public static final T_ATHLETIC:I = 0x0

.field public static final T_BALANCED:I = 0x1

.field public static final T_FAT:I = 0x3

.field public static final T_FAT_LOW_MUSCLE:I = 0x4

.field public static final T_LEAN_LOW_MUSCLE:I = 0x5

.field public static final T_STRONG_FAT:I = 0x2

.field public static final T_VERY_LEAN:I = 0x6

.field static final WEEK_MS:J = 0x240c8400L

.field static final WEIGHT_DROP:D = 2.0

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

    .line 265
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

    .line 530
    new-array v0, v3, [D

    fill-array-data v0, :array_288

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    .line 531
    new-array v0, v3, [D

    fill-array-data v0, :array_298

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P25:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2a8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P50:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2b8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P75:[D

    .line 532
    new-array v0, v3, [D

    fill-array-data v0, :array_2c8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P25:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2d8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P50:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2e8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P75:[D

    .line 567
    new-array v0, v4, [D

    fill-array-data v0, :array_2f8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    .line 568
    new-array v0, v4, [D

    fill-array-data v0, :array_314

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_330

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P50:[D

    .line 569
    new-array v0, v4, [D

    fill-array-data v0, :array_34c

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P75:[D

    .line 570
    new-array v0, v4, [D

    fill-array-data v0, :array_368

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_384

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P50:[D

    .line 571
    new-array v0, v4, [D

    fill-array-data v0, :array_3a0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P75:[D

    .line 572
    new-array v0, v4, [D

    fill-array-data v0, :array_3bc

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_3d8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P50:[D

    .line 573
    new-array v0, v4, [D

    fill-array-data v0, :array_3f4

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P75:[D

    .line 574
    new-array v0, v4, [D

    fill-array-data v0, :array_410

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P25:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_42c

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P50:[D

    .line 575
    new-array v0, v4, [D

    fill-array-data v0, :array_448

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P75:[D

    .line 616
    new-array v0, v5, [I

    fill-array-data v0, :array_464

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    .line 618
    new-array v0, v5, [I

    fill-array-data v0, :array_472

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    .line 620
    new-array v0, v5, [I

    fill-array-data v0, :array_480

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    .line 721
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

    .line 722
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

    .line 724
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

    .line 725
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

    .line 727
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

    .line 729
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

    .line 265
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

    .line 530
    :array_288
    .array-data 8
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x4051800000000000L    # 70.0
    .end array-data

    .line 531
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

    .line 532
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

    .line 567
    :array_2f8
    .array-data 8
        0x4039000000000000L    # 25.0
        0x4041800000000000L    # 35.0
        0x4046800000000000L    # 45.0
        0x404b800000000000L    # 55.0
        0x4050400000000000L    # 65.0
        0x4052c00000000000L    # 75.0
    .end array-data

    .line 568
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

    .line 569
    :array_34c
    .array-data 8
        0x4024666666666666L    # 10.2
        0x4023333333333333L    # 9.6
        0x4022666666666666L    # 9.2
        0x4022666666666666L    # 9.2
        0x4022000000000000L    # 9.0
        0x402099999999999aL    # 8.3
    .end array-data

    .line 570
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

    .line 571
    :array_3a0
    .array-data 8
        0x401d99999999999aL    # 7.4
        0x401d99999999999aL    # 7.4
        0x401ccccccccccccdL    # 7.2
        0x401c666666666666L    # 7.1
        0x401c666666666666L    # 7.1
        0x401acccccccccccdL    # 6.7
    .end array-data

    .line 572
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

    .line 573
    :array_3f4
    .array-data 8
        0x401c666666666666L    # 7.1
        0x4024333333333333L    # 10.1
        0x4025000000000000L    # 10.5
        0x402499999999999aL    # 10.3
        0x4024666666666666L    # 10.2
        0x4023333333333333L    # 9.6
    .end array-data

    .line 574
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

    .line 575
    :array_448
    .array-data 8
        0x4020666666666666L    # 8.2
        0x4027cccccccccccdL    # 11.9
        0x402999999999999aL    # 12.8
        0x402ccccccccccccdL    # 14.4
        0x402c99999999999aL    # 14.3
        0x402999999999999aL    # 12.8
    .end array-data

    .line 616
    :array_464
    .array-data 4
        -0x10bbbc
        -0xa61f5
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 618
    :array_472
    .array-data 4
        -0x10bbbc
        -0xa61f5
        -0xdd3aa2
        -0xef467f
        -0xf9492c
    .end array-data

    .line 620
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
    .registers 31
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
    .line 741
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 742
    if-eqz p0, :cond_2b

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object v15, v4

    .line 743
    :goto_c
    if-eqz v15, :cond_16

    const-string v4, "fat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 744
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

    .line 914
    :goto_2a
    return-object v4

    .line 742
    :cond_2b
    const/4 v4, 0x0

    move-object v15, v4

    goto :goto_c

    .line 749
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

    .line 750
    const-string v4, "w"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 751
    const-string v4, "fat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 752
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v13

    .line 754
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v20

    .line 755
    invoke-virtual/range {v20 .. v20}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v4

    if-nez v4, :cond_26a

    .line 756
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

    .line 783
    :goto_7b
    const-string v4, "water"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v15, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move/from16 v0, p2

    invoke-static {v4, v5, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v11

    .line 784
    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    if-ltz v4, :cond_eb

    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_eb

    .line 785
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

    .line 786
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

    .line 788
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

    .line 785
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_eb
    move-wide/from16 v0, v18

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    .line 792
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v20

    .line 793
    const/4 v5, 0x3

    move/from16 v0, v20

    if-lt v0, v5, :cond_3f6

    .line 796
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 797
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

    .line 798
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    move/from16 v0, v20

    if-ne v0, v7, :cond_3eb

    const/4 v7, 0x3

    :goto_12b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    const/4 v8, 0x4

    move/from16 v0, v20

    if-ne v0, v8, :cond_3ee

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

    .line 801
    const/4 v10, 0x4

    move/from16 v0, v20

    if-ne v0, v10, :cond_3f2

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

    .line 798
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_185
    :goto_185
    iget-wide v4, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move/from16 v0, p2

    invoke-static {v4, v5, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    .line 811
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    .line 812
    if-ltz v4, :cond_40d

    const/4 v5, 0x1

    if-gt v4, v5, :cond_40d

    .line 813
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

    .line 814
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

    .line 816
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

    .line 813
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_1ed
    :goto_1ed
    const-string v4, "visc"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 827
    const/16 v4, 0xa

    if-lt v11, v4, :cond_239

    .line 828
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0xf

    if-lt v11, v7, :cond_474

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

    .line 829
    const/16 v9, 0xf

    if-lt v11, v9, :cond_477

    const-string v9, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u043a\u043e\u043d\u0441\u0443\u043b\u0442\u0430\u0446\u0438\u044f \u0441 \u043b\u0435\u043a\u0430\u0440 \u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435."

    .line 830
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

    .line 831
    const/16 v12, 0xf

    if-lt v11, v12, :cond_47b

    const-string v11, "A doctor\'s advice and a fat-loss program are recommended."

    .line 832
    :goto_233
    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_239
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v8

    .line 836
    const/4 v10, -0x1

    .line 837
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 838
    const/4 v7, 0x0

    :goto_248
    const/4 v4, 0x5

    if-ge v7, v4, :cond_47f

    .line 839
    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_832

    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    cmpg-double v4, v4, v12

    if-gez v4, :cond_832

    .line 840
    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    move v6, v7

    .line 838
    :goto_265
    add-int/lit8 v7, v7, 0x1

    move-wide v12, v4

    move v10, v6

    goto :goto_248

    .line 760
    :cond_26a
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3d6

    .line 761
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v10, v4

    .line 762
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->water:Z

    if-nez v4, :cond_337

    move-object/from16 v0, v20

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v4, :cond_337

    const/4 v4, 0x1

    move v11, v4

    .line 763
    :goto_291
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    const-wide v22, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v8, v22

    if-gtz v7, :cond_33b

    const/4 v7, 0x3

    :goto_2a3
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

    .line 764
    if-eqz v11, :cond_33e

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

    .line 769
    :goto_2e7
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

    .line 771
    if-eqz v11, :cond_38a

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

    .line 776
    :goto_32f
    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 762
    :cond_337
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_291

    .line 763
    :cond_33b
    const/4 v7, 0x2

    goto/16 :goto_2a3

    .line 766
    :cond_33e
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_386

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, -0x4000000000000000L    # -2.0

    cmpg-double v9, v22, v24

    if-gtz v9, :cond_386

    .line 767
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u0422\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u0441 "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, " % \u043f\u043e\u0434 \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0441\u0435\u0434\u043c\u0438\u0446\u0430\u0442\u0430 \u2014 \u0437\u0430\u0433\u0443\u0431\u0435\u043d\u0430 \u0432\u043e\u0434\u0430. \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u0441\u0435 0,5 \u043b \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2e7

    .line 769
    :cond_386
    const-string v9, "\u041f\u043e\u043d\u0438\u0436\u0435\u043d\u0430 \u0445\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f. \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    goto/16 :goto_2e7

    .line 773
    :cond_38a
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_3d2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, -0x4000000000000000L    # -2.0

    cmpg-double v11, v22, v24

    if-gtz v11, :cond_3d2

    .line 774
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Weight "

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, " % under the week\'s usual \u2014 water lost. 0.5 l of water before the session is advised."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_32f

    .line 776
    :cond_3d2
    const-string v11, "Low hydration. Water before the session is advised."

    goto/16 :goto_32f

    .line 778
    :cond_3d6
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

    .line 798
    :cond_3eb
    const/4 v7, 0x2

    goto/16 :goto_12b

    .line 799
    :cond_3ee
    const-string v8, "\u041f\u043e\u0432\u0438\u0448\u0435\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    goto/16 :goto_137

    .line 801
    :cond_3f2
    const-string v10, "Elevated body fat"

    goto/16 :goto_161

    .line 804
    :cond_3f6
    if-nez v20, :cond_185

    .line 805
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

    .line 818
    :cond_40d
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1ed

    const/4 v4, 0x2

    move/from16 v0, v20

    if-gt v0, v4, :cond_1ed

    .line 819
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e \u0442\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    const-string v9, "bmi"

    const-wide/16 v12, 0x0

    invoke-virtual {v15, v9, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4039000000000000L    # 25.0

    cmpl-double v9, v12, v16

    if-ltz v9, :cond_46e

    const-string v9, "\u041f\u043e\u0432\u0438\u0448\u0435\u043d\u0438\u044f\u0442 \u0418\u0422\u041c \u0441\u0435 \u0434\u044a\u043b\u0436\u0438 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430. "

    :goto_431
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

    .line 822
    const-string v11, "bmi"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v11, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4039000000000000L    # 25.0

    cmpl-double v11, v16, v18

    if-ltz v11, :cond_471

    const-string v11, "The raised BMI is due to muscle mass. "

    :goto_458
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "A maintenance strength program is advised."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ed

    .line 820
    :cond_46e
    const-string v9, ""

    goto :goto_431

    .line 822
    :cond_471
    const-string v11, ""

    goto :goto_458

    .line 828
    :cond_474
    const/4 v7, 0x2

    goto/16 :goto_201

    .line 830
    :cond_477
    const-string v9, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u0441\u0435 \u0430\u0435\u0440\u043e\u0431\u043d\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435."

    goto/16 :goto_21a

    .line 832
    :cond_47b
    const-string v11, "Aerobic exercise and a fat-loss program are recommended."

    goto/16 :goto_233

    .line 844
    :cond_47f
    if-ltz v10, :cond_503

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_503

    .line 845
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

    .line 846
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

    .line 847
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

    .line 845
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_503
    const-string v4, "segMus"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 851
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v6, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v4

    .line 852
    const/4 v7, 0x3

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v6

    .line 853
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_5e7

    move-wide v10, v4

    .line 854
    :goto_522
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5d1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_5d1

    .line 855
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5ea

    const/4 v4, 0x1

    move v13, v4

    .line 856
    :goto_540
    const-wide/16 v4, 0x0

    cmpl-double v4, v10, v4

    if-lez v4, :cond_5ee

    const/4 v4, 0x1

    move v12, v4

    .line 857
    :goto_548
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

    .line 858
    if-eqz v13, :cond_5f5

    if-eqz v12, :cond_5f2

    const-string v9, "\u0414\u044f\u0441\u043d\u0430\u0442\u0430 \u0440\u044a\u043a\u0430 \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431\u0430."

    .line 859
    :goto_57b
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

    .line 861
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

    .line 862
    if-eqz v13, :cond_601

    if-eqz v12, :cond_5fe

    const-string v11, "The right arm"

    :goto_5bb
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is weaker. Single-side exercises are advised."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_5d1
    invoke-static {v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v11

    .line 867
    if-eqz v11, :cond_6c7

    .line 868
    const-wide/16 v6, 0x0

    .line 869
    array-length v5, v11

    const/4 v4, 0x0

    :goto_5db
    if-ge v4, v5, :cond_609

    aget-wide v8, v11, v4

    .line 870
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->reachFactor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 869
    add-int/lit8 v4, v4, 0x1

    goto :goto_5db

    :cond_5e7
    move-wide v10, v6

    .line 853
    goto/16 :goto_522

    .line 855
    :cond_5ea
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_540

    .line 856
    :cond_5ee
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_548

    .line 858
    :cond_5f2
    const-string v9, "\u041b\u044f\u0432\u0430\u0442\u0430 \u0440\u044a\u043a\u0430 \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431\u0430."

    goto :goto_57b

    .line 859
    :cond_5f5
    if-eqz v12, :cond_5fa

    const-string v9, "\u0414\u0435\u0441\u043d\u0438\u044f\u0442 \u043a\u0440\u0430\u043a \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431."

    goto :goto_57b

    :cond_5fa
    const-string v9, "\u041b\u0435\u0432\u0438\u044f\u0442 \u043a\u0440\u0430\u043a \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431."

    goto/16 :goto_57b

    .line 862
    :cond_5fe
    const-string v11, "The left arm"

    goto :goto_5bb

    :cond_601
    if-eqz v12, :cond_606

    const-string v11, "The right leg"

    goto :goto_5bb

    :cond_606
    const-string v11, "The left leg"

    goto :goto_5bb

    .line 872
    :cond_609
    array-length v4, v11

    int-to-double v4, v4

    div-double v12, v6, v4

    .line 873
    const/4 v5, -0x1

    .line 874
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 875
    const/4 v4, 0x0

    move v10, v5

    :goto_612
    array-length v5, v11

    if-ge v4, v5, :cond_626

    .line 876
    aget-wide v8, v11, v4

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->reachFactor(D)D

    move-result-wide v8

    div-double/2addr v8, v12

    .line 877
    cmpg-double v5, v8, v6

    if-gez v5, :cond_82f

    move-wide v6, v8

    move v5, v4

    .line 875
    :goto_622
    add-int/lit8 v4, v4, 0x1

    move v10, v5

    goto :goto_612

    .line 882
    :cond_626
    if-ltz v10, :cond_6c7

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpg-double v4, v6, v4

    if-gez v4, :cond_6c7

    .line 883
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v11, v4

    .line 884
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

    .line 891
    :cond_6c7
    if-lez p1, :cond_786

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 892
    :goto_6d0
    if-eqz v4, :cond_77b

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77b

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77b

    .line 893
    const-string v5, "muscle"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    sub-double v12, v6, v8

    .line 894
    const-string v5, "fatKg"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double v16, v6, v4

    .line 895
    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v12, v4

    if-ltz v4, :cond_789

    const-wide v4, -0x4036666666666666L    # -0.2

    cmpg-double v4, v16, v4

    if-gtz v4, :cond_789

    .line 896
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

    .line 897
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

    .line 898
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

    .line 896
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_77b
    :goto_77b
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;-><init>()V

    invoke-static {v14, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v14

    .line 914
    goto/16 :goto_2a

    .line 891
    :cond_786
    const/4 v4, 0x0

    goto/16 :goto_6d0

    .line 900
    :cond_789
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v16, v4

    if-ltz v4, :cond_7d9

    .line 901
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

    .line 904
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

    .line 901
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_77b

    .line 906
    :cond_7d9
    const-wide v4, -0x4016666666666666L    # -0.8

    cmpg-double v4, v12, v4

    if-gtz v4, :cond_77b

    .line 907
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

    .line 909
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

    .line 907
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_77b

    :cond_82f
    move v5, v10

    goto/16 :goto_622

    :cond_832
    move-wide v4, v12

    move v6, v10

    goto/16 :goto_265
.end method

.method public static ageNorm(DI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    .line 669
    int-to-double v2, p2

    .line 670
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

    .line 671
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

    .line 364
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 368
    :cond_10
    :goto_10
    return-wide v0

    .line 367
    :cond_11
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    .line 368
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
    .line 553
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

    .line 554
    const/4 v0, 0x1

    :goto_18
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 555
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    aget-wide v4, v1, v0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_47

    .line 556
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

    .line 557
    add-int/lit8 v1, v0, -0x1

    aget-wide v4, p0, v1

    aget-wide v6, p0, v0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 560
    :goto_46
    return-wide v0

    .line 554
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 560
    :cond_4a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    goto :goto_46
.end method

.method public static bmiNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 682
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    .line 683
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    const-string v6, ""

    const/4 v7, 0x1

    const-string v8, "WHO"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 682
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
    .line 415
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;-><init>()V

    .line 416
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

    .line 469
    :goto_18
    return-object v2

    .line 419
    :cond_19
    move/from16 v0, p2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 420
    const-string v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 421
    const-string v6, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 422
    const-string v8, "fatKg"

    mul-double v12, v2, v6

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 423
    const-string v11, "lean"

    sub-double v12, v2, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 424
    div-double v14, v12, v4

    iput-wide v14, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    .line 425
    div-double/2addr v8, v4

    iput-wide v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    .line 426
    const-string v8, "skel"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 427
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_149

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_65
    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->smi:D

    .line 428
    if-eqz p1, :cond_182

    .line 429
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_150

    const/4 v2, 0x0

    :goto_72
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 430
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_169

    const/4 v2, 0x0

    :goto_7b
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    .line 435
    :goto_7d
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-nez v2, :cond_1c7

    .line 436
    const/4 v2, 0x6

    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    .line 442
    :goto_84
    const-string v2, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 443
    const-string v3, "ash"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 444
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1f0

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1f0

    .line 446
    mul-double v2, v6, v12

    div-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    .line 451
    :cond_a7
    :goto_a7
    const-string v2, "pa"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 452
    const/16 v2, 0x12

    if-lt v9, v2, :cond_d2

    .line 453
    int-to-double v2, v9

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    move/from16 v0, p1

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zMuscle(DZI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    .line 454
    int-to-double v2, v9

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    move/from16 v0, p1

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zFat(DZI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    .line 456
    :cond_d2
    const-string v2, "rhr"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    .line 457
    const/16 v2, 0x12

    if-lt v9, v2, :cond_f9

    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 458
    int-to-double v2, v9

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    move/from16 v0, p1

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zHeart(DZI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromHeart:D

    .line 460
    :cond_f9
    const-string v2, "pag"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 461
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_216

    :goto_109
    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 462
    const-string v2, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_146

    .line 464
    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const/4 v3, 0x4

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 465
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

    .line 466
    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    add-double/2addr v2, v6

    .line 467
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_224

    div-double v2, v4, v2

    :goto_144
    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    :cond_146
    move-object v2, v10

    .line 469
    goto/16 :goto_18

    .line 427
    :cond_149
    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v8

    div-double/2addr v2, v4

    goto/16 :goto_65

    .line 429
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

    .line 430
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

    .line 432
    :cond_182
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_198

    const/4 v2, 0x0

    :goto_18b
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 433
    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_1b1

    const/4 v2, 0x0

    :goto_194
    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    goto/16 :goto_7d

    .line 432
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

    .line 433
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

    .line 437
    :cond_1c7
    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1de

    .line 438
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

    .line 440
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

    .line 447
    :cond_1f0
    if-eqz v2, :cond_a7

    .line 448
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

    .line 449
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

    .line 461
    :cond_216
    iget-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    iget-wide v4, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    move/from16 v8, p1

    invoke-static/range {v2 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->physicalAge(DDDZI)D

    move-result-wide v2

    goto/16 :goto_109

    .line 467
    :cond_224
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_144
.end method

.method public static channelFat(Lorg/json/JSONObject;)[D
    .registers 27

    .prologue
    .line 271
    if-eqz p0, :cond_31

    const-string v4, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v17, v4

    .line 272
    :goto_c
    if-eqz p0, :cond_35

    const-string v4, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v16, v4

    .line 273
    :goto_18
    if-eqz p0, :cond_39

    const-string v4, "fat"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move-wide v14, v4

    .line 274
    :goto_25
    if-eqz v17, :cond_2f

    if-eqz v16, :cond_2f

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 275
    :cond_2f
    const/4 v4, 0x0

    .line 303
    :goto_30
    return-object v4

    .line 271
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v17, v4

    goto :goto_c

    .line 272
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v16, v4

    goto :goto_18

    .line 273
    :cond_39
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v14, v4

    goto :goto_25

    .line 277
    :cond_3d
    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v18, v0

    .line 278
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 279
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

    .line 281
    const/4 v4, 0x0

    move v5, v4

    move-wide v10, v6

    move-wide v12, v8

    :goto_6b
    const/4 v4, 0x3

    if-ge v5, v4, :cond_b7

    .line 282
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 283
    aget-object v20, v19, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v4, 0x0

    :goto_7a
    move/from16 v0, v21

    if-ge v4, v0, :cond_9f

    aget v22, v20, v4

    .line 284
    const-wide/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v24

    add-double v8, v8, v24

    .line 285
    const-wide/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v22

    add-double v6, v6, v22

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 287
    :cond_9f
    add-double v20, v8, v6

    const-wide/16 v22, 0x0

    cmpg-double v4, v20, v22

    if-gtz v4, :cond_a9

    .line 288
    const/4 v4, 0x0

    goto :goto_30

    .line 290
    :cond_a9
    add-double v20, v8, v6

    div-double v20, v8, v20

    aput-wide v20, v18, v5

    .line 291
    add-double/2addr v12, v8

    .line 292
    add-double/2addr v6, v8

    add-double/2addr v6, v10

    .line 281
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-wide v10, v6

    goto :goto_6b

    .line 294
    :cond_b7
    div-double v10, v12, v10

    .line 295
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    array-length v4, v4

    new-array v5, v4, [D

    .line 296
    const/4 v4, 0x0

    :goto_bf
    array-length v6, v5

    if-ge v4, v6, :cond_e9

    .line 297
    const-wide/16 v8, 0x0

    .line 298
    const/4 v6, 0x0

    :goto_c5
    const/4 v7, 0x3

    if-ge v6, v7, :cond_d6

    .line 299
    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v6

    aget-wide v16, v18, v6

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    .line 298
    add-int/lit8 v6, v6, 0x1

    goto :goto_c5

    .line 301
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

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    :cond_e9
    move-object v4, v5

    .line 303
    goto/16 :goto_30

    .line 279
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
    .line 313
    invoke-static/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 314
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 315
    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 316
    const/4 v1, 0x3

    aget-wide v6, v0, v1

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    .line 317
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 318
    :cond_30
    const/4 v0, 0x0

    .line 335
    :goto_31
    return-object v0

    .line 320
    :cond_32
    const/4 v6, 0x3

    new-array v8, v6, [D

    const/4 v6, 0x0

    aput-wide v2, v8, v6

    const/4 v2, 0x1

    aput-wide v4, v8, v2

    const/4 v2, 0x2

    aput-wide v0, v8, v2

    .line 321
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    array-length v0, v0

    new-array v1, v0, [D

    .line 322
    const-wide/16 v2, 0x0

    .line 323
    const/4 v0, 0x0

    :goto_46
    array-length v4, v1

    if-ge v0, v4, :cond_62

    .line 324
    const-wide/16 v6, 0x0

    .line 325
    const/4 v4, 0x0

    :goto_4c
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5c

    .line 326
    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    aget-object v5, v5, v0

    aget-wide v10, v5, v4

    aget-wide v12, v8, v4

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 328
    :cond_5c
    aput-wide v6, v1, v0

    .line 329
    add-double/2addr v2, v6

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 331
    :cond_62
    array-length v0, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 332
    const/4 v0, 0x0

    :goto_66
    array-length v4, v1

    if-ge v0, v4, :cond_83

    .line 333
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3ff6666666666666L    # 1.4

    aget-wide v8, v1, v0

    div-double/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_83
    move-object v0, v1

    .line 335
    goto :goto_31
.end method

.method static clockGap(JJ)D
    .registers 12

    .prologue
    const-wide v6, 0x414b774000000000L    # 3600000.0

    const-wide/32 v4, 0x5265c00

    .line 210
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, p0

    rem-long/2addr v2, v4

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v6

    .line 212
    invoke-virtual {v0, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p2

    rem-long/2addr v0, v4

    add-long/2addr v0, v4

    rem-long/2addr v0, v4

    long-to-double v0, v0

    div-double/2addr v0, v6

    .line 213
    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 214
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    sub-double/2addr v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static f1(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 733
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
    .line 256
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

    .line 641
    if-eqz p2, :cond_2b

    .line 642
    if-ge p3, v1, :cond_1d

    new-array v0, v0, [D

    fill-array-data v0, :array_42

    :goto_e
    move-object v1, v0

    .line 648
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

    .line 642
    :cond_1d
    if-ge p3, v2, :cond_25

    new-array v0, v0, [D

    fill-array-data v0, :array_5e

    goto :goto_e

    .line 643
    :cond_25
    new-array v0, v0, [D

    fill-array-data v0, :array_7a

    goto :goto_e

    .line 645
    :cond_2b
    if-ge p3, v1, :cond_34

    new-array v0, v0, [D

    fill-array-data v0, :array_96

    :goto_32
    move-object v1, v0

    .line 646
    goto :goto_f

    .line 645
    :cond_34
    if-ge p3, v2, :cond_3c

    new-array v0, v0, [D

    fill-array-data v0, :array_b2

    goto :goto_32

    .line 646
    :cond_3c
    new-array v0, v0, [D

    fill-array-data v0, :array_ce

    goto :goto_32

    .line 642
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

    .line 643
    :array_7a
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x402a000000000000L    # 13.0
        0x4039000000000000L    # 25.0
        0x403e000000000000L    # 30.0
        0x4046000000000000L    # 44.0
    .end array-data

    .line 645
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

    .line 646
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

    .line 104
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_16

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 106
    :cond_16
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 108
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
    .line 94
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 100
    :goto_8
    return-wide v0

    .line 97
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 100
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

    .line 657
    if-eqz p2, :cond_16

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    .line 658
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

    .line 657
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

    .line 623
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;-><init>()V

    .line 624
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    const/4 v2, 0x6

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iput-wide p3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    .line 628
    iput-object p5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->unit:Ljava/lang/String;

    .line 629
    iput p6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->decimals:I

    .line 630
    iput-object p7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    .line 631
    return-object v0
.end method

.method public static ofNormal(Lorg/json/JSONObject;ZI)[[D
    .registers 25

    .prologue
    .line 221
    const/4 v2, 0x2

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 222
    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x5

    if-ge v3, v4, :cond_23

    .line 223
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v4, v3

    .line 224
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v4, v3

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 226
    :cond_23
    if-eqz p0, :cond_56

    const-string v3, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v14, v3

    .line 227
    :goto_2e
    if-eqz p0, :cond_59

    const-string v3, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v13, v3

    .line 228
    :goto_39
    if-eqz p0, :cond_5c

    const-string v3, "w"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 229
    :goto_45
    if-eqz v14, :cond_55

    if-eqz v13, :cond_55

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_55

    const/16 v3, 0x64

    move/from16 v0, p2

    if-ge v0, v3, :cond_5f

    .line 251
    :cond_55
    return-object v2

    .line 226
    :cond_56
    const/4 v3, 0x0

    move-object v14, v3

    goto :goto_2e

    .line 227
    :cond_59
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_39

    .line 228
    :cond_5c
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_45

    .line 232
    :cond_5f
    move/from16 v0, p2

    int-to-double v6, v0

    .line 233
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->stdWeight(IZ)F

    move-result v8

    .line 234
    if-eqz p1, :cond_138

    const v3, 0x3f59999a    # 0.85f

    :goto_6f
    mul-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v16

    .line 235
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

    .line 236
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

    .line 237
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

    .line 238
    const/4 v3, 0x0

    move v12, v3

    :goto_cf
    const/4 v3, 0x5

    if-ge v12, v3, :cond_55

    .line 239
    const/4 v3, 0x1

    if-eq v12, v3, :cond_d8

    const/4 v3, 0x2

    if-ne v12, v3, :cond_13d

    :cond_d8
    const/4 v3, 0x1

    move v4, v3

    .line 240
    :goto_da
    if-nez v12, :cond_140

    const/4 v3, 0x1

    .line 241
    :goto_dd
    if-eqz v3, :cond_142

    move-wide v4, v6

    .line 242
    :goto_e0
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_fb

    const-wide/16 v16, 0x0

    cmpl-double v3, v4, v16

    if-lez v3, :cond_fb

    .line 243
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v16

    div-double v4, v16, v4

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    aput-wide v4, v3, v12

    .line 246
    :cond_fb
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v14, v12, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v16

    invoke-virtual {v13, v12, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v16

    .line 247
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

    .line 248
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

    .line 238
    :cond_134
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_cf

    .line 234
    :cond_138
    const v3, 0x3f451eb8    # 0.77f

    goto/16 :goto_6f

    .line 239
    :cond_13d
    const/4 v3, 0x0

    move v4, v3

    goto :goto_da

    .line 240
    :cond_140
    const/4 v3, 0x0

    goto :goto_dd

    .line 241
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
    .line 493
    const/16 v4, 0x12

    move/from16 v0, p7

    if-lt v0, v4, :cond_12

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_12

    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-gtz v4, :cond_15

    .line 494
    :cond_12
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 508
    :goto_14
    return-wide v4

    .line 496
    :cond_15
    move-wide/from16 v0, p2

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zFat(DZI)D

    move-result-wide v4

    neg-double v6, v4

    .line 497
    const/4 v4, 0x1

    .line 498
    move-wide/from16 v0, p0

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zMuscle(DZI)D

    move-result-wide v8

    .line 499
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_33

    .line 500
    add-double/2addr v6, v8

    .line 501
    const/4 v4, 0x2

    .line 503
    :cond_33
    invoke-static/range {p4 .. p7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zHeart(DZI)D

    move-result-wide v8

    .line 504
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_40

    .line 505
    sub-double/2addr v6, v8

    .line 506
    add-int/lit8 v4, v4, 0x1

    .line 508
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
    .line 483
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

    .line 85
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 90
    :cond_14
    :goto_14
    return-wide v0

    .line 88
    :cond_15
    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    .line 89
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    .line 90
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
    .line 918
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
    .registers 28

    .prologue
    .line 113
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;-><init>()V

    .line 114
    if-eqz p0, :cond_10

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object v13, v2

    .line 115
    :goto_c
    if-nez v13, :cond_13

    move-object v2, v10

    .line 205
    :goto_f
    return-object v2

    .line 114
    :cond_10
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_c

    .line 118
    :cond_13
    const-string v2, "t"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    add-int/lit8 v4, p1, -0x1

    :goto_25
    if-ltz v4, :cond_7d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_7d

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_7a

    const-string v6, "t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v14, v6

    const-wide/32 v8, 0x1499700

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7a

    const-string v6, "z20"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7a

    const-string v6, "f1"

    .line 125
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "f1"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_7a

    .line 126
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_67

    .line 127
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_67
    const-string v6, "t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->clockGap(JJ)D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_7a

    .line 130
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_7a
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 134
    :cond_7d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_a1

    move-object v12, v2

    .line 135
    :goto_85
    if-ne v12, v2, :cond_a3

    const/4 v2, 0x1

    :goto_88
    iput-boolean v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->sameTime:Z

    .line 136
    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->sameTime:Z

    if-eqz v2, :cond_a5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, v2

    .line 137
    :goto_91
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->base:I

    .line 138
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_a9

    move-object v2, v10

    .line 139
    goto/16 :goto_f

    :cond_a1
    move-object v12, v3

    .line 134
    goto :goto_85

    .line 135
    :cond_a3
    const/4 v2, 0x0

    goto :goto_88

    .line 136
    :cond_a5
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    move-wide v4, v2

    goto :goto_91

    .line 141
    :cond_a9
    const-string v2, "f1"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_108

    const/4 v2, 0x1

    move v3, v2

    .line 142
    :goto_b4
    const-wide/16 v8, 0x0

    .line 143
    const/4 v2, 0x0

    move v11, v2

    :goto_b8
    const/4 v2, 0x5

    if-ge v11, v2, :cond_14e

    if-nez v3, :cond_14e

    .line 144
    const-string v2, "z20"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v6, "z100"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v2, v6, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D

    move-result-wide v6

    .line 145
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d6
    :goto_d6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 147
    const-string v18, "z20"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const-string v19, "z100"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v0, v2, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D

    move-result-wide v18

    .line 148
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 149
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 141
    :cond_108
    const/4 v2, 0x0

    move v3, v2

    goto :goto_b4

    .line 152
    :cond_10b
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v16

    .line 153
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2c8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2c8

    .line 154
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    div-double v6, v6, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v16

    aput-wide v6, v2, v11

    .line 156
    const/4 v2, 0x1

    if-eq v11, v2, :cond_12f

    const/4 v2, 0x2

    if-ne v11, v2, :cond_14b

    :cond_12f
    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 157
    :goto_134
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v16, v2, v11

    mul-double v16, v16, v6

    cmpl-double v2, v16, v8

    if-lez v2, :cond_2c8

    .line 158
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v8, v2, v11

    mul-double/2addr v6, v8

    .line 159
    iput v11, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    .line 143
    :goto_145
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-wide v8, v6

    goto/16 :goto_b8

    .line 156
    :cond_14b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_134

    .line 163
    :cond_14e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_15c
    :goto_15c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 166
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->legsZ20(Lorg/json/JSONObject;)D

    move-result-wide v16

    .line 167
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_15c

    .line 168
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15c

    .line 172
    :cond_17a
    add-int/lit8 v2, p1, -0x1

    :goto_17c
    if-ltz v2, :cond_195

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 174
    if-eqz v11, :cond_195

    const-string v12, "t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v16, v14, v16

    const-wide/32 v18, 0x240c8400

    cmp-long v12, v16, v18

    if-lez v12, :cond_256

    .line 182
    :cond_195
    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->legsZ20(Lorg/json/JSONObject;)D

    move-result-wide v14

    .line 183
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v16

    .line 184
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1bb

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1bb

    const-wide/16 v18, 0x0

    cmpl-double v2, v16, v18

    if-lez v2, :cond_1bb

    .line 185
    div-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    iput-wide v14, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    .line 187
    :cond_1bb
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v6

    .line 188
    const-string v2, "w"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v13, v2, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1e3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1e3

    const-wide/16 v14, 0x0

    cmpl-double v2, v6, v14

    if-lez v2, :cond_1e3

    .line 190
    div-double v6, v12, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v12

    iput-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    .line 193
    :cond_1e3
    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1ed

    if-eqz v3, :cond_289

    :cond_1ed
    const-wide/16 v2, 0x0

    .line 194
    :goto_1ef
    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_293

    const-wide/16 v6, 0x0

    .line 195
    :goto_1f9
    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    const-wide/high16 v18, 0x4036000000000000L    # 22.0

    const-wide/16 v20, 0x0

    div-double v22, v8, v4

    const-wide v24, 0x3fd999999999999aL    # 0.4

    sub-double v22, v22, v24

    .line 196
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    const-wide/16 v20, 0x0

    div-double v22, v2, v4

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    sub-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v6, v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    .line 195
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v11, v12

    iput v11, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    .line 197
    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double/2addr v12, v4

    cmpl-double v11, v8, v12

    if-ltz v11, :cond_29e

    .line 198
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    :cond_253
    :goto_253
    move-object v2, v10

    .line 205
    goto/16 :goto_f

    .line 177
    :cond_256
    const-string v12, "w"

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v16

    invoke-virtual {v11, v12, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    .line 178
    const-string v12, "t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v18, v14, v18

    const-wide/32 v20, 0x1499700

    cmp-long v11, v18, v20

    if-ltz v11, :cond_285

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    cmpl-double v11, v16, v18

    if-ltz v11, :cond_285

    const-wide v18, 0x406f400000000000L    # 250.0

    cmpg-double v11, v16, v18

    if-gtz v11, :cond_285

    .line 179
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_285
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_17c

    .line 193
    :cond_289
    const-wide/16 v2, 0x0

    iget-wide v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto/16 :goto_1ef

    .line 194
    :cond_293
    const-wide/16 v6, 0x0

    iget-wide v12, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    neg-double v12, v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto/16 :goto_1f9

    .line 199
    :cond_29e
    const-wide v12, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v12, v4

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_2b0

    .line 200
    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    goto :goto_253

    .line 201
    :cond_2b0
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-gez v2, :cond_2bd

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_253

    .line 202
    :cond_2bd
    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    .line 203
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->water:Z

    goto :goto_253

    :cond_2c8
    move-wide v6, v8

    goto/16 :goto_145
.end method

.method public static readyNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 694
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    .line 695
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

    .line 694
    :array_18
    .array-data 8
        0x0
        0x4044000000000000L    # 40.0
        0x404e000000000000L    # 60.0
        0x4054000000000000L    # 80.0
        0x4056800000000000L    # 90.0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 695
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
    .line 676
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    .line 677
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

    .line 676
    :array_18
    .array-data 8
        0x0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4024000000000000L    # 10.0
        0x402e000000000000L    # 15.0
        0x4035000000000000L    # 21.0
    .end array-data

    .line 677
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

    .line 663
    if-eqz p2, :cond_16

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    .line 664
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

    .line 663
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
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v0

    aget-object v6, v0, v5

    .line 344
    const/4 v4, -0x1

    .line 345
    const-wide/16 v2, 0x0

    .line 346
    :goto_a
    const/4 v0, 0x5

    if-ge v5, v0, :cond_32

    .line 349
    if-nez v5, :cond_2c

    const-wide v0, 0x4055400000000000L    # 85.0

    .line 350
    :goto_14
    aget-wide v8, v6, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_47

    aget-wide v8, v6, v5

    sub-double v8, v0, v8

    cmpl-double v7, v8, v2

    if-lez v7, :cond_47

    .line 351
    aget-wide v2, v6, v5

    sub-double/2addr v0, v2

    move v4, v5

    .line 346
    :goto_28
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v0

    goto :goto_a

    .line 349
    :cond_2c
    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_14

    .line 355
    :cond_32
    if-gez v4, :cond_36

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_35
    return-object v0

    :cond_36
    if-nez v4, :cond_3b

    const-string v0, "abs"

    goto :goto_35

    .line 359
    :cond_3b
    const/4 v0, 0x1

    if-eq v4, v0, :cond_41

    const/4 v0, 0x2

    if-ne v4, v0, :cond_44

    :cond_41
    const-string v0, "arms"

    goto :goto_35

    :cond_44
    const-string v0, "legs"

    goto :goto_35

    :cond_47
    move-wide v0, v2

    goto :goto_28
.end method

.method static zFat(DZI)D
    .registers 10

    .prologue
    .line 546
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

    .line 547
    if-eqz p2, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M_P75:[D

    :goto_14
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v0

    .line 548
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

    .line 546
    :cond_2c
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P25:[D

    goto :goto_4

    :cond_2f
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P50:[D

    goto :goto_c

    .line 547
    :cond_32
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F_P75:[D

    goto :goto_14
.end method

.method static zHeart(DZI)D
    .registers 16

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 513
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_17

    const-wide v4, 0x4041800000000000L    # 35.0

    cmpg-double v0, p0, v4

    if-ltz v0, :cond_17

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpl-double v0, p0, v4

    if-lez v0, :cond_1a

    .line 514
    :cond_17
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 523
    :goto_19
    return-wide v0

    .line 516
    :cond_1a
    if-eqz p2, :cond_8b

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P25:[D

    move-object v4, v0

    :goto_1f
    if-eqz p2, :cond_8f

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P50:[D

    move-object v3, v0

    .line 517
    :goto_24
    if-eqz p2, :cond_93

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_M_P75:[D

    .line 518
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

    .line 519
    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_AGES:[D

    aget-wide v8, v5, v1

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_96

    .line 520
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

    .line 521
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

    .line 522
    add-int/lit8 v8, v1, -0x1

    aget-wide v8, v0, v8

    aget-wide v10, v0, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sub-double v0, v10, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v8

    .line 523
    sub-double v2, p0, v2

    sub-double/2addr v0, v4

    const-wide v4, 0x3ff595810624dd2fL    # 1.349

    div-double/2addr v0, v4

    div-double v0, v2, v0

    goto :goto_19

    .line 516
    :cond_8b
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P25:[D

    move-object v4, v0

    goto :goto_1f

    :cond_8f
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P50:[D

    move-object v3, v0

    goto :goto_24

    .line 517
    :cond_93
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->RHR_F_P75:[D

    goto :goto_28

    :cond_96
    move v1, v2

    .line 519
    goto :goto_42
.end method

.method static zMuscle(DZI)D
    .registers 10

    .prologue
    .line 536
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_f

    .line 537
    :cond_c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 541
    :goto_e
    return-wide v0

    .line 539
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

    .line 540
    if-eqz p2, :cond_39

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M_P75:[D

    :goto_23
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->atAge([DI)D

    move-result-wide v0

    .line 541
    sub-double v4, p0, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3ff595810624dd2fL    # 1.349

    div-double/2addr v0, v2

    div-double v0, v4, v0

    goto :goto_e

    .line 539
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P25:[D

    goto :goto_13

    :cond_36
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P50:[D

    goto :goto_1b

    .line 540
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F_P75:[D

    goto :goto_23
.end method

.method public static zoneNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 688
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    .line 689
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    const-string v6, " %"

    const/4 v7, 0x0

    const-string v8, "WLA25 / Fitdays segment standard"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 688
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
