.class public final Lcom/isaigu/gymapp/ai/ParamFormula;
.super Ljava/lang/Object;
.source "ParamFormula.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/ParamFormula$Variant;,
        Lcom/isaigu/gymapp/ai/ParamFormula$Out;,
        Lcom/isaigu/gymapp/ai/ParamFormula$In;
    }
.end annotation


# static fields
.field public static final ADAPT:I = 0x3

.field static final ADAPTATION:Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

.field public static final AP:I = 0x4

.field public static final HZ:I = 0x0

.field public static final MODES:I = 0x4

.field static final MODE_BG:[Ljava/lang/String;

.field static final MODE_EN:[Ljava/lang/String;

.field public static final OFF:I = 0x3

.field public static final ON:I = 0x2

.field public static final P:I = 0x7

.field public static final PHZ:I = 0x5

.field public static final PS:I = 0x6

.field public static final W:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 26
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    aput-object v1, v0, v7

    const-string v1, "\u041a\u0430\u0440\u0434\u0438\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u0430\u0441\u0430\u0436"

    aput-object v1, v0, v8

    sput-object v0, Lcom/isaigu/gymapp/ai/ParamFormula;->MODE_BG:[Ljava/lang/String;

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Main"

    aput-object v1, v0, v6

    const-string v1, "Muscle"

    aput-object v1, v0, v7

    const-string v1, "Cardio"

    aput-object v1, v0, v5

    const-string v1, "Massage"

    aput-object v1, v0, v8

    sput-object v0, Lcom/isaigu/gymapp/ai/ParamFormula;->MODE_EN:[Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v1, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f"

    const-string v2, "Adaptation"

    new-array v3, v3, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_58

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_60

    aput-object v4, v3, v7

    new-array v4, v5, [I

    fill-array-data v4, :array_68

    aput-object v4, v3, v5

    new-array v4, v5, [I

    fill-array-data v4, :array_70

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/ParamFormula;->ADAPTATION:Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    return-void

    nop

    :array_58
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_60
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_68
    .array-data 4
        0x1e
        0x8
    .end array-data

    :array_70
    .array-data 4
        0x5
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compute(Lcom/isaigu/gymapp/ai/ParamFormula$In;)Lcom/isaigu/gymapp/ai/ParamFormula$Out;
    .registers 31

    .prologue
    .line 121
    new-instance v24, Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    invoke-direct/range {v24 .. v24}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;-><init>()V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v2, :cond_314

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-object v10, v2

    .line 123
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v2, :cond_319

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-object v11, v2

    .line 124
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_31e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_31e

    const/4 v2, 0x1

    move v12, v2

    .line 125
    :goto_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v2, v3, :cond_322

    const/4 v2, 0x1

    .line 129
    :goto_38
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_325

    .line 130
    sget-object v3, Lcom/isaigu/gymapp/ai/ParamFormula;->ADAPTATION:Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    .line 131
    const/4 v4, -0x1

    move-object/from16 v0, v24

    iput v4, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variant:I

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043e\u0442 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0437\u0430 \u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f: 85 Hz, 4 s, \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Training "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of adaptation: 85 Hz, 4 s, longer pause."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    .line 143
    :goto_a0
    iget-object v3, v13, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->bg:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantBg:Ljava/lang/String;

    .line 144
    iget-object v3, v13, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->en:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantEn:Ljava/lang/String;

    .line 147
    if-eqz v2, :cond_3af

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    .line 148
    :goto_b0
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fatPct:Ljava/lang/Double;

    if-eqz v3, :cond_3b3

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fatPct:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 151
    const/4 v6, 0x1

    move-object/from16 v0, v24

    iput-boolean v6, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatMeasured:Z

    .line 157
    :goto_c5
    move-object/from16 v0, v24

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatPct:D

    .line 158
    const/16 v8, 0x15e

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_638

    .line 160
    sub-double v6, v2, v4

    .line 161
    const-wide/16 v14, 0x0

    cmpl-double v9, v6, v14

    if-lez v9, :cond_406

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v14

    :goto_dc
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v6, v8

    .line 162
    const/16 v7, 0x12c

    const/16 v8, 0x190

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 163
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 %.0f %%%s (\u043d\u043e\u0440\u043c\u0430 %.0f) \u2192 \u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 %d \u00b5s."

    const/4 v6, 0x4

    new-array v14, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v14, v6

    const/4 v15, 0x1

    .line 164
    move-object/from16 v0, v24

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatMeasured:Z

    if-eqz v6, :cond_40b

    const-string v6, " (\u043a\u0430\u043d\u0442\u0430\u0440)"

    :goto_105
    aput-object v6, v14, v15

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v14, v6

    const/4 v6, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    .line 163
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Fat %.0f%%%s (norm %.0f) \u2192 depth %d \u00b5s."

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v14, v15

    const/4 v3, 0x1

    .line 166
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatMeasured:Z

    if-eqz v2, :cond_40f

    const-string v2, " (scale)"

    :goto_130
    aput-object v2, v14, v3

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v14, v2

    const/4 v2, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    .line 165
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v2}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v7

    .line 168
    :goto_14a
    const/4 v2, 0x0

    .line 169
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v11, v3, :cond_151

    .line 170
    const/16 v2, 0x19

    .line 172
    :cond_151
    if-eqz v12, :cond_155

    .line 173
    add-int/lit8 v2, v2, 0x19

    .line 175
    :cond_155
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    if-eqz v3, :cond_634

    .line 176
    add-int/lit8 v2, v2, 0x19

    move/from16 v23, v2

    .line 178
    :goto_15f
    if-lez v23, :cond_1f4

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e-\u043f\u043b\u0438\u0442\u043a\u043e \u2212"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b5s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v11, v2, :cond_413

    const-string v2, "\u0441\u043b\u0430\u0431\u0430 \u0444\u043e\u0440\u043c\u0430"

    :goto_182
    aput-object v2, v4, v5

    const/4 v5, 0x1

    .line 180
    if-eqz v12, :cond_416

    const-string v2, "60+"

    :goto_189
    aput-object v2, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    if-eqz v2, :cond_419

    const-string v2, "\u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    :goto_194
    aput-object v2, v4, v5

    .line 179
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/ParamFormula;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shallower \u2212"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u00b5s: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 181
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v11, v2, :cond_41c

    const-string v2, "low fitness"

    :goto_1c9
    aput-object v2, v5, v6

    const/4 v6, 0x1

    .line 182
    if-eqz v12, :cond_41f

    const-string v2, "60+"

    :goto_1d0
    aput-object v2, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    if-eqz v2, :cond_422

    const-string v2, "sensitivity"

    :goto_1db
    aput-object v2, v5, v6

    .line 181
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ParamFormula;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1f4
    if-nez v12, :cond_1fc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->muscleLow:Z

    if-eqz v2, :cond_631

    :cond_1fc
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eq v11, v2, :cond_631

    .line 188
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v11, v2, :cond_425

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    :goto_206
    move-object v15, v2

    .line 190
    :goto_207
    invoke-static {v15}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v25

    .line 191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_429

    const-wide v2, 0x3feb333333333333L    # 0.85

    move-wide/from16 v16, v2

    .line 192
    :goto_219
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->muscleLow:Z

    if-eqz v2, :cond_228

    .line 193
    const-string v2, "\u041c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u2014 \u043f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430 \u043d\u0430 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 (\u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430)."

    const-string v3, "Low muscle mass \u2014 a lower fatigue limit (longer pause)."

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_228
    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_22b
    const/4 v2, 0x4

    move/from16 v0, v22

    if-ge v0, v2, :cond_4cf

    .line 198
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    aget-object v26, v2, v22

    .line 199
    const/4 v2, 0x0

    iget-object v3, v13, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->v:[[I

    aget-object v3, v3, v22

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v26, v2

    .line 200
    const/4 v2, 0x2

    iget-object v3, v13, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->v:[[I

    aget-object v3, v3, v22

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v26, v2

    .line 201
    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_42f

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 202
    :goto_252
    if-nez v21, :cond_269

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eq v11, v2, :cond_25a

    if-eqz v12, :cond_269

    :cond_25a
    const/4 v2, 0x2

    aget v2, v26, v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_269

    const/4 v2, 0x2

    move/from16 v0, v22

    if-eq v0, v2, :cond_269

    .line 203
    const/4 v2, 0x2

    const/4 v3, 0x4

    aput v3, v26, v2

    .line 205
    :cond_269
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v11, v2, :cond_282

    if-nez v12, :cond_282

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_282

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_282

    .line 206
    const/4 v2, 0x2

    aget v3, v26, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v26, v2

    .line 208
    :cond_282
    const/4 v3, 0x1

    if-eqz v21, :cond_437

    const/16 v4, 0xc8

    const/16 v5, 0x15e

    add-int/lit16 v2, v14, -0x15e

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v6, v2, 0x118

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    if-eqz v2, :cond_434

    const/16 v2, 0x19

    :goto_297
    sub-int v2, v6, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 209
    :goto_2a1
    aput v2, v26, v3

    .line 212
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_441

    .line 213
    const/4 v2, 0x0

    .line 219
    :goto_2a9
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v3

    if-nez v3, :cond_62d

    .line 220
    const/16 v19, 0x0

    .line 222
    :goto_2b1
    if-eqz v21, :cond_45f

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v26, v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v18, v2

    .line 223
    :goto_2c5
    const/4 v2, 0x0

    aget v2, v26, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_2ce

    .line 224
    const/16 v19, 0x0

    .line 226
    :cond_2ce
    if-eqz v21, :cond_46e

    const/16 v2, 0x3c

    .line 227
    :goto_2d2
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eq v11, v3, :cond_2dc

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    if-eqz v3, :cond_629

    .line 228
    :cond_2dc
    add-int/lit8 v20, v2, -0x5

    .line 231
    :goto_2de
    if-eqz v21, :cond_482

    const/4 v4, 0x2

    .line 233
    :goto_2e1
    if-eqz v21, :cond_48d

    .line 243
    :cond_2e3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->offS:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    if-eqz v2, :cond_4c2

    if-eqz v21, :cond_4c2

    const/4 v2, 0x1

    :goto_2f0
    add-int/2addr v2, v3

    add-int v3, v4, v2

    .line 244
    if-eqz v19, :cond_625

    const/4 v2, 0x2

    if-ge v3, v2, :cond_625

    .line 245
    const/4 v2, 0x0

    .line 247
    :goto_2f9
    const/4 v4, 0x3

    aput v3, v26, v4

    .line 248
    const/4 v4, 0x4

    if-eqz v2, :cond_4c5

    const/4 v3, 0x1

    :goto_300
    aput v3, v26, v4

    .line 249
    const/4 v3, 0x5

    if-eqz v2, :cond_4c8

    :goto_305
    aput v18, v26, v3

    .line 250
    const/4 v3, 0x6

    if-eqz v2, :cond_4cc

    move/from16 v2, v20

    :goto_30c
    aput v2, v26, v3

    .line 197
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto/16 :goto_22b

    .line 122
    :cond_314
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-object v10, v2

    goto/16 :goto_10

    .line 123
    :cond_319
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-object v11, v2

    goto/16 :goto_1b

    .line 124
    :cond_31e
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_2f

    .line 125
    :cond_322
    const/4 v2, 0x0

    goto/16 :goto_38

    .line 135
    :cond_325
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/ParamFormula;->variants(Lcom/isaigu/gymapp/ai/AiModel$Goal;)[Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    move-result-object v4

    .line 136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    add-int/lit8 v3, v3, -0x3

    array-length v5, v4

    rem-int/2addr v3, v5

    move-object/from16 v0, v24

    iput v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variant:I

    .line 137
    move-object/from16 v0, v24

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variant:I

    aget-object v3, v4, v3

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0412\u0430\u0440\u0438\u0430\u043d\u0442 \u201e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->bg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u201c ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget v6, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variant:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u043e\u0442 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") \u2014 \u0432\u0441\u044f\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0440\u0430\u0437\u043b\u0438\u0447\u0435\u043d \u0441\u0442\u0438\u043c\u0443\u043b."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Variant \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->en:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    iget v7, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variant:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") \u2014 a different stimulus every training."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    goto/16 :goto_a0

    .line 147
    :cond_3af
    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    goto/16 :goto_b0

    .line 152
    :cond_3b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->weightKg:Ljava/lang/Double;

    if-eqz v3, :cond_63b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->heightCm:I

    const/16 v8, 0x64

    if-lt v3, v8, :cond_63b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_63b

    .line 153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->heightCm:I

    int-to-double v6, v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v6

    div-double v6, v8, v6

    .line 155
    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v8

    const-wide v8, 0x3fcd70a3d70a3d71L    # 0.23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v14, v3

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    const-wide v8, 0x402599999999999aL    # 10.8

    if-eqz v2, :cond_404

    const/4 v2, 0x1

    :goto_3f8
    int-to-double v2, v2

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    const-wide v6, 0x401599999999999aL    # 5.4

    sub-double/2addr v2, v6

    goto/16 :goto_c5

    :cond_404
    const/4 v2, 0x0

    goto :goto_3f8

    .line 161
    :cond_406
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v14

    goto/16 :goto_dc

    .line 164
    :cond_40b
    const-string v6, " (\u043f\u043e \u0442\u0435\u0433\u043b\u043e \u0438 \u0440\u044a\u0441\u0442)"

    goto/16 :goto_105

    .line 166
    :cond_40f
    const-string v2, " (from weight and height)"

    goto/16 :goto_130

    .line 179
    :cond_413
    const/4 v2, 0x0

    goto/16 :goto_182

    .line 180
    :cond_416
    const/4 v2, 0x0

    goto/16 :goto_189

    :cond_419
    const/4 v2, 0x0

    goto/16 :goto_194

    .line 181
    :cond_41c
    const/4 v2, 0x0

    goto/16 :goto_1c9

    .line 182
    :cond_41f
    const/4 v2, 0x0

    goto/16 :goto_1d0

    :cond_422
    const/4 v2, 0x0

    goto/16 :goto_1db

    .line 188
    :cond_425
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto/16 :goto_206

    .line 191
    :cond_429
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v2

    goto/16 :goto_219

    .line 201
    :cond_42f
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_252

    .line 208
    :cond_434
    const/4 v2, 0x0

    goto/16 :goto_297

    .line 209
    :cond_437
    const/16 v2, 0xfa

    sub-int v4, v14, v23

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_2a1

    .line 214
    :cond_441
    if-eqz v21, :cond_451

    .line 215
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v10, v2, :cond_44b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v10, v2, :cond_44e

    :cond_44b
    const/4 v2, 0x1

    goto/16 :goto_2a9

    :cond_44e
    const/4 v2, 0x0

    goto/16 :goto_2a9

    .line 217
    :cond_451
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v10, v2, :cond_459

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v10, v2, :cond_45c

    :cond_459
    const/4 v2, 0x1

    goto/16 :goto_2a9

    :cond_45c
    const/4 v2, 0x0

    goto/16 :goto_2a9

    .line 222
    :cond_45f
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v10, v2, :cond_469

    const/16 v2, 0x8

    move/from16 v18, v2

    goto/16 :goto_2c5

    :cond_469
    const/4 v2, 0x6

    move/from16 v18, v2

    goto/16 :goto_2c5

    .line 226
    :cond_46e
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v10, v2, :cond_476

    const/16 v2, 0x32

    goto/16 :goto_2d2

    :cond_476
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v10, v2, :cond_47e

    const/16 v2, 0x2d

    goto/16 :goto_2d2

    :cond_47e
    const/16 v2, 0x28

    goto/16 :goto_2d2

    .line 231
    :cond_482
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_48a

    const/4 v4, 0x3

    goto/16 :goto_2e1

    :cond_48a
    const/4 v4, 0x2

    goto/16 :goto_2e1

    .line 237
    :cond_48d
    const/4 v2, 0x0

    aget-wide v2, v25, v2

    mul-double v28, v16, v2

    .line 238
    :goto_492
    const/16 v2, 0x14

    if-ge v4, v2, :cond_2e3

    const/4 v2, 0x0

    aget v2, v26, v2

    const/4 v3, 0x2

    aget v3, v26, v3

    if-eqz v19, :cond_4bd

    move/from16 v5, v18

    :goto_4a0
    if-eqz v19, :cond_4bf

    move/from16 v0, v20

    int-to-double v6, v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    :goto_4a8
    const/4 v8, 0x2

    aget-wide v8, v25, v8

    invoke-static/range {v2 .. v9}, Lcom/isaigu/gymapp/ai/ParamFormula;->steadyPeak(IIIIDD)D

    move-result-wide v2

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double v6, v6, v28

    cmpl-double v2, v2, v6

    if-lez v2, :cond_2e3

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_492

    .line 238
    :cond_4bd
    const/4 v5, 0x0

    goto :goto_4a0

    :cond_4bf
    const-wide/16 v6, 0x0

    goto :goto_4a8

    .line 243
    :cond_4c2
    const/4 v2, 0x0

    goto/16 :goto_2f0

    .line 248
    :cond_4c5
    const/4 v3, 0x0

    goto/16 :goto_300

    .line 249
    :cond_4c8
    const/16 v18, 0x0

    goto/16 :goto_305

    .line 250
    :cond_4cc
    const/4 v2, 0x0

    goto/16 :goto_30c

    .line 252
    :cond_4cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0430\u0443\u0437\u0430 \u043e\u0442 \u043c\u043e\u0434\u0435\u043b\u0430 \u043d\u0430 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/isaigu/gymapp/ai/ParamFormula;->fitBg(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v16, v4

    if-gez v2, :cond_61d

    const-string v2, ", \u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f"

    :goto_4ea
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): \u041e\u0441\u043d\u043e\u0432\u0435\u043d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pause from the fatigue model ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-virtual {v15}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v16, v6

    if-gez v2, :cond_621

    const-string v2, ", adaptation"

    :goto_53f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): Main "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " s."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_594

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5d7

    .line 257
    :cond_594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/ParamFormula;->goalBg(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second impulse in the pause: goal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 258
    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_5d7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->offS:I

    if-lez v2, :cond_61c

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u0434\u043d\u0435\u0441: \u043f\u0430\u0443\u0437\u0430 +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->offS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Today\'s state: pause +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->offS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_61c
    return-object v24

    .line 252
    :cond_61d
    const-string v2, ""

    goto/16 :goto_4ea

    .line 254
    :cond_621
    const-string v2, ""

    goto/16 :goto_53f

    :cond_625
    move/from16 v2, v19

    goto/16 :goto_2f9

    :cond_629
    move/from16 v20, v2

    goto/16 :goto_2de

    :cond_62d
    move/from16 v19, v2

    goto/16 :goto_2b1

    :cond_631
    move-object v15, v11

    goto/16 :goto_207

    :cond_634
    move/from16 v23, v2

    goto/16 :goto_15f

    :cond_638
    move v14, v8

    goto/16 :goto_14a

    :cond_63b
    move-wide v2, v6

    goto/16 :goto_c5
.end method

.method static fitBg(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_7

    const-string v0, "\u0441\u043b\u0430\u0431\u0430 \u0444\u043e\u0440\u043c\u0430"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_e

    const-string v0, "\u0434\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430"

    goto :goto_6

    :cond_e
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u0444\u043e\u0440\u043c\u0430"

    goto :goto_6
.end method

.method static goalBg(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const-string v0, "\u0446\u0435\u043b \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    const-string v0, "\u0446\u0435\u043b \u0446\u0435\u043b\u0443\u043b\u0438\u0442"

    goto :goto_6

    .line 300
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_15

    const-string v0, "\u0446\u0435\u043b \u043c\u0430\u0441\u0430\u0436"

    goto :goto_6

    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_1c

    const-string v0, "\u0446\u0435\u043b \u0434\u0440\u0435\u043d\u0430\u0436"

    goto :goto_6

    :cond_1c
    const-string v0, "\u0446\u0435\u043b \u0441\u0442\u044f\u0433\u0430\u043d\u0435"

    goto :goto_6
.end method

.method private static varargs join([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_24

    aget-object v4, p0, v1

    .line 306
    if-eqz v4, :cond_1d

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_21

    const-string v0, ", "

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 307
    :cond_21
    const-string v0, ""

    goto :goto_16

    .line 310
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static line([IZ)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b5s \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const/4 v0, 0x4

    aget v0, p0, v0

    if-ne v0, v3, :cond_5e

    .line 285
    if-eqz p1, :cond_63

    const-string v0, " \u00b7 2-\u0440\u0438 "

    :goto_41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :cond_63
    const-string v0, " \u00b7 2nd "

    goto :goto_41
.end method

.method public static modeName(IZ)Ljava/lang/String;
    .registers 3

    .prologue
    .line 291
    if-eqz p1, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/ai/ParamFormula;->MODE_BG:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/ParamFormula;->MODE_EN:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_6
.end method

.method public static steadyPeak(IIIIDD)D
    .registers 20

    .prologue
    .line 271
    neg-int v0, p1

    int-to-double v0, v0

    div-double v0, v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 272
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    int-to-double v0, v0

    div-double v0, v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 273
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double v6, v0, p6

    .line 274
    if-lez p3, :cond_4b

    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double v0, v0, p4

    mul-double v0, v0, p6

    .line 275
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

    .line 276
    mul-double v4, v0, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v2, v8, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 274
    :cond_4b
    const-wide/16 v0, 0x0

    goto :goto_25
.end method

.method static variants(Lcom/isaigu/gymapp/ai/AiModel$Goal;)[Lcom/isaigu/gymapp/ai/ParamFormula$Variant;
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_b0

    .line 88
    new-array v0, v10, [Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v3, "Metabolic"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_28c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_294

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_29c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_2a4

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0418\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v3, "Endurance"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_2ac

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_2b4

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_2bc

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_2c4

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u043d\u0430"

    const-string v3, "Interval"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_2cc

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_2d4

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_2dc

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_2e4

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0421\u0438\u043b\u0430"

    const-string v3, "Strength"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_2ec

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_2f4

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_2fc

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_304

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v9

    .line 110
    :goto_af
    return-object v0

    .line 95
    :cond_b0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_15c

    .line 96
    new-array v0, v10, [Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v3, "Firming"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_30c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_314

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_31c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_324

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041a\u0440\u044a\u0432\u043e\u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    const-string v3, "Circulation"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_32c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_334

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_33c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_344

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041e\u0431\u0435\u043c"

    const-string v3, "Volume"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_34c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_354

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_35c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_364

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0418\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v3, "Endurance"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_36c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_374

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_37c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_384

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v9

    goto/16 :goto_af

    .line 103
    :cond_15c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_164

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_1e3

    .line 104
    :cond_164
    new-array v0, v9, [Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041b\u0435\u043a\u0430 \u0441\u0438\u043b\u0430"

    const-string v3, "Light strength"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_38c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_394

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_39c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_3a4

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041e\u0431\u0435\u043c"

    const-string v3, "Volume"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_3ac

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_3b4

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_3bc

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_3c4

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0418\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v3, "Endurance"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_3cc

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_3d4

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_3dc

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_3e4

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v6

    goto/16 :goto_af

    .line 110
    :cond_1e3
    new-array v0, v10, [Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0421\u0438\u043b\u0430"

    const-string v3, "Strength"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_3ec

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_3f4

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_3fc

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_404

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041c\u043e\u0449\u043d\u043e\u0441\u0442"

    const-string v3, "Power"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_40c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_414

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_41c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_424

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u041e\u0431\u0435\u043c"

    const-string v3, "Volume"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_42c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_434

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_43c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_444

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;

    const-string v2, "\u0418\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v3, "Endurance"

    new-array v4, v10, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_44c

    aput-object v5, v4, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_454

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_45c

    aput-object v5, v4, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_464

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;[[I)V

    aput-object v1, v0, v9

    goto/16 :goto_af

    .line 88
    nop

    :array_28c
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_294
    .array-data 4
        0x55
        0x5
    .end array-data

    :array_29c
    .array-data 4
        0x28
        0x6
    .end array-data

    :array_2a4
    .array-data 4
        0x5
        0xa
    .end array-data

    :array_2ac
    .array-data 4
        0x32
        0x8
    .end array-data

    :array_2b4
    .array-data 4
        0x4b
        0x6
    .end array-data

    :array_2bc
    .array-data 4
        0x19
        0xa
    .end array-data

    :array_2c4
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_2cc
    .array-data 4
        0x46
        0x6
    .end array-data

    :array_2d4
    .array-data 4
        0x64
        0x4
    .end array-data

    :array_2dc
    .array-data 4
        0x32
        0x5
    .end array-data

    :array_2e4
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_2ec
    .array-data 4
        0x55
        0x5
    .end array-data

    :array_2f4
    .array-data 4
        0x5a
        0x6
    .end array-data

    :array_2fc
    .array-data 4
        0x1e
        0x8
    .end array-data

    :array_304
    .array-data 4
        0x5
        0xa
    .end array-data

    .line 96
    :array_30c
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_314
    .array-data 4
        0x55
        0x5
    .end array-data

    :array_31c
    .array-data 4
        0x1e
        0x8
    .end array-data

    :array_324
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_32c
    .array-data 4
        0x1e
        0xa
    .end array-data

    :array_334
    .array-data 4
        0x4b
        0x6
    .end array-data

    :array_33c
    .array-data 4
        0x14
        0xa
    .end array-data

    :array_344
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_34c
    .array-data 4
        0x46
        0x6
    .end array-data

    :array_354
    .array-data 4
        0x5a
        0x6
    .end array-data

    :array_35c
    .array-data 4
        0x28
        0x6
    .end array-data

    :array_364
    .array-data 4
        0x5
        0xa
    .end array-data

    :array_36c
    .array-data 4
        0x32
        0x8
    .end array-data

    :array_374
    .array-data 4
        0x64
        0x4
    .end array-data

    :array_37c
    .array-data 4
        0x19
        0xa
    .end array-data

    :array_384
    .array-data 4
        0x8
        0x8
    .end array-data

    .line 104
    :array_38c
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_394
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_39c
    .array-data 4
        0x1e
        0x8
    .end array-data

    :array_3a4
    .array-data 4
        0x5
        0xa
    .end array-data

    :array_3ac
    .array-data 4
        0x46
        0x5
    .end array-data

    :array_3b4
    .array-data 4
        0x4b
        0x5
    .end array-data

    :array_3bc
    .array-data 4
        0x19
        0xa
    .end array-data

    :array_3c4
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_3cc
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_3d4
    .array-data 4
        0x55
        0x5
    .end array-data

    :array_3dc
    .array-data 4
        0x28
        0x6
    .end array-data

    :array_3e4
    .array-data 4
        0x8
        0x8
    .end array-data

    .line 110
    :array_3ec
    .array-data 4
        0x55
        0x4
    .end array-data

    :array_3f4
    .array-data 4
        0x55
        0x5
    .end array-data

    :array_3fc
    .array-data 4
        0x1e
        0x8
    .end array-data

    :array_404
    .array-data 4
        0x5
        0xa
    .end array-data

    :array_40c
    .array-data 4
        0x64
        0x3
    .end array-data

    :array_414
    .array-data 4
        0x64
        0x4
    .end array-data

    :array_41c
    .array-data 4
        0x32
        0x5
    .end array-data

    :array_424
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_42c
    .array-data 4
        0x46
        0x6
    .end array-data

    :array_434
    .array-data 4
        0x5a
        0x6
    .end array-data

    :array_43c
    .array-data 4
        0x28
        0x6
    .end array-data

    :array_444
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_44c
    .array-data 4
        0x32
        0x8
    .end array-data

    :array_454
    .array-data 4
        0x4b
        0x6
    .end array-data

    :array_45c
    .array-data 4
        0x19
        0xa
    .end array-data

    :array_464
    .array-data 4
        0x5
        0xa
    .end array-data
.end method
