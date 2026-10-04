.class public final Lcom/isaigu/gymapp/ai/SafeLimits;
.super Ljava/lang/Object;
.source "SafeLimits.java"


# static fields
.field public static final AP:I = 0x4

.field public static final HZ:I = 0x0

.field public static final HZ_MAX:I = 0x78

.field public static final HZ_MAX_60:I = 0x55

.field public static final N:I = 0x8

.field public static final OFF:I = 0x3

.field public static final OFF_MAX_SEARCH:I = 0x1e

.field public static final ON:I = 0x2

.field public static final ON_MAX_50HZ:I = 0x6

.field public static final ON_MAX_TETANIC:I = 0xa

.field public static final PAUSE_HZ_MAX:I = 0xa

.field public static final PAUSE_PCT_MAX:I = 0x64

.field public static final PHZ:I = 0x5

.field public static final PS:I = 0x6

.field public static final PW:I = 0x1

.field public static final PW_MAX:I = 0x190

.field public static final PW_MAX_100HZ:I = 0x12c

.field public static final PW_MIN:I = 0x32

.field public static final RAMP:I = 0x7

.field public static final RAMP_MIN_MS:I = 0x12c

.field public static final TETANIC_HZ:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)[I
    .registers 16

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x5

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 47
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v3

    .line 48
    aget v1, v0, v2

    if-le v1, v3, :cond_76

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u2192 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " Hz"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v1, 0x3c

    if-lt p1, v1, :cond_24e

    const-string v1, " (60+)"

    :goto_3a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frequency "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v6, v0, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u2192 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " Hz"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_252

    const-string v1, " (60+)"

    :goto_69
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {p2, p3, v5, v1}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    aput v3, v0, v2

    .line 53
    :cond_76
    aget v1, v0, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v2

    .line 54
    aget v1, v0, v2

    const/16 v3, 0x64

    if-lt v1, v3, :cond_256

    const/16 v1, 0x12c

    .line 55
    :goto_86
    aget v3, v0, v4

    if-le v3, v1, :cond_f1

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0414\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u2192 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b5s \u043f\u0440\u0438 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Hz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2192 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b5s at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Hz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3, v3, v5}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    aput v1, v0, v4

    .line 60
    :cond_f1
    const/16 v1, 0x32

    aget v3, v0, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v4

    .line 61
    aget v1, v0, v10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v10

    .line 62
    aget v1, v0, v11

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v11

    .line 63
    aget v1, v0, v2

    const/16 v3, 0x14

    if-lt v1, v3, :cond_25a

    move v3, v4

    .line 64
    :goto_112
    if-eqz v3, :cond_192

    .line 65
    aget v1, v0, v2

    const/16 v5, 0x32

    if-lt v1, v5, :cond_25d

    const/4 v1, 0x6

    .line 66
    :goto_11b
    aget v5, v0, v10

    if-le v5, v1, :cond_186

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0418\u043c\u043f\u0443\u043b\u0441 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2192 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s \u043f\u0440\u0438 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Hz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impulse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u2192 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Hz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v5, v6}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    aput v1, v0, v10

    .line 71
    :cond_186
    const/4 v1, 0x7

    aget v1, v0, v1

    const/16 v5, 0x12c

    if-ge v1, v5, :cond_192

    .line 72
    const/4 v1, 0x7

    const/16 v5, 0x12c

    aput v5, v0, v1

    .line 75
    :cond_192
    const/4 v1, 0x4

    aget v1, v0, v1

    if-ne v1, v4, :cond_1ad

    .line 76
    const/16 v1, 0xa

    aget v5, v0, v2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 77
    if-ge v1, v4, :cond_261

    .line 78
    const-string v1, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d: \u043e\u0441\u043d\u043e\u0432\u043d\u0430\u0442\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0435 \u0442\u0432\u044a\u0440\u0434\u0435 \u043d\u0438\u0441\u043a\u0430"

    const-string v5, "Second impulse off: the main frequency is too low"

    invoke-static {p2, p3, v1, v5}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 95
    :cond_1ad
    :goto_1ad
    if-eqz v3, :cond_24d

    .line 96
    aget v3, v0, v2

    aget v6, v0, v10

    const/4 v1, 0x4

    aget v1, v0, v1

    if-ne v1, v4, :cond_2d1

    aget v1, v0, v8

    :goto_1ba
    const/4 v5, 0x4

    aget v5, v0, v5

    if-ne v5, v4, :cond_2d4

    const/4 v4, 0x6

    aget v4, v0, v4

    int-to-double v4, v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v8

    :goto_1c6
    invoke-static {v3, v6, v1, v4, v5}, Lcom/isaigu/gymapp/ai/SafeLimits;->minOff(IIID)I

    move-result v1

    .line 97
    aget v3, v0, v11

    if-ge v3, v1, :cond_24d

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u0430\u0443\u0437\u0430 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2192 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s: \u043f\u0440\u0438 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hz \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0430 \u043d\u0435 \u0435 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s: at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Hz \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " s a shorter one is not safe"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v3, v2}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    aput v1, v0, v11

    .line 105
    :cond_24d
    return-object v0

    .line 49
    :cond_24e
    const-string v1, ""

    goto/16 :goto_3a

    .line 50
    :cond_252
    const-string v1, ""

    goto/16 :goto_69

    .line 54
    :cond_256
    const/16 v1, 0x190

    goto/16 :goto_86

    :cond_25a
    move v3, v2

    .line 63
    goto/16 :goto_112

    .line 65
    :cond_25d
    const/16 v1, 0xa

    goto/16 :goto_11b

    .line 82
    :cond_261
    aget v5, v0, v8

    if-le v5, v1, :cond_2b4

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2192 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Hz (\u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0435 \u0437\u0430 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second impulse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u2192 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Hz (the pause is for relaxing)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v5, v6}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    aput v1, v0, v8

    .line 87
    :cond_2b4
    aget v1, v0, v8

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v8

    .line 88
    const/4 v1, 0x6

    aget v1, v0, v1

    const/16 v5, 0x64

    if-le v1, v5, :cond_1ad

    .line 89
    const-string v1, "\u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043f\u043e-\u0441\u0438\u043b\u0435\u043d \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f"

    const-string v5, "The second impulse cannot be stronger than the main one"

    invoke-static {p2, p3, v1, v5}, Lcom/isaigu/gymapp/ai/SafeLimits;->note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x6

    const/16 v5, 0x64

    aput v5, v0, v1

    goto/16 :goto_1ad

    :cond_2d1
    move v1, v2

    .line 96
    goto/16 :goto_1ba

    :cond_2d4
    const-wide/16 v4, 0x0

    goto/16 :goto_1c6
.end method

.method public static cycle(IIIIIDII)[I
    .registers 16

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-lez p4, :cond_35

    const-wide/16 v4, 0x0

    cmpl-double v0, p5, v4

    if-lez v0, :cond_35

    move v0, v1

    .line 115
    :goto_c
    const/16 v3, 0x8

    new-array v3, v3, [I

    aput p0, v3, v2

    aput p1, v3, v1

    const/4 v4, 0x2

    aput p2, v3, v4

    const/4 v4, 0x3

    aput p3, v3, v4

    const/4 v4, 0x4

    if-eqz v0, :cond_37

    :goto_1d
    aput v1, v3, v4

    const/4 v0, 0x5

    aput p4, v3, v0

    const/4 v0, 0x6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    aput v1, v3, v0

    const/4 v0, 0x7

    aput p7, v3, v0

    invoke-static {v3, p8, v6, v6}, Lcom/isaigu/gymapp/ai/SafeLimits;->apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)[I

    move-result-object v0

    return-object v0

    :cond_35
    move v0, v2

    .line 114
    goto :goto_c

    :cond_37
    move v1, v2

    .line 115
    goto :goto_1d
.end method

.method public static hzMax(I)I
    .registers 2

    .prologue
    .line 37
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_7

    const/16 v0, 0x55

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x78

    goto :goto_6
.end method

.method public static minOff(IIID)I
    .registers 14

    .prologue
    const/4 v2, 0x1

    .line 139
    const/16 v0, 0x14

    if-ge p0, v0, :cond_6

    .line 147
    :cond_5
    return v2

    .line 142
    :cond_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v8

    .line 144
    :goto_c
    const/16 v0, 0x1e

    if-ge v2, v0, :cond_5

    const/4 v0, 0x2

    aget-wide v6, v8, v0

    move v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/SafeLimits;->peak(IIIIDD)D

    move-result-wide v0

    const/4 v3, 0x0

    aget-wide v4, v8, v3

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double/2addr v4, v6

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method private static note(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 161
    if-eqz p0, :cond_11

    .line 162
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    const-string v0, "\n"

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_11
    if-eqz p1, :cond_22

    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_26

    const-string v0, "\n"

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_22
    return-void

    .line 162
    :cond_23
    const-string v0, ""

    goto :goto_a

    .line 165
    :cond_26
    const-string v0, ""

    goto :goto_1b
.end method

.method public static pauseSend(IIZII)[I
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 126
    if-eqz p2, :cond_6

    if-gtz p0, :cond_7

    .line 134
    :cond_6
    :goto_6
    return-object v0

    .line 129
    :cond_7
    const/16 v1, 0xa

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 130
    const/16 v2, 0x64

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 131
    if-lt v1, v4, :cond_6

    if-lez v2, :cond_6

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v3

    aput v2, v0, v4

    goto :goto_6
.end method

.method public static peak(IIIIDD)D
    .registers 20

    .prologue
    .line 152
    neg-int v0, p1

    int-to-double v0, v0

    div-double v0, v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 153
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    int-to-double v0, v0

    div-double v0, v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 154
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double v6, v0, p6

    .line 155
    if-lez p3, :cond_4b

    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double v0, v0, p4

    mul-double v0, v0, p6

    .line 156
    :goto_25
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v2

    mul-double/2addr v8, v6

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v4

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v2

    sub-double v4, v10, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 157
    mul-double v4, v0, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v2, v8, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 155
    :cond_4b
    const-wide/16 v0, 0x0

    goto :goto_25
.end method
