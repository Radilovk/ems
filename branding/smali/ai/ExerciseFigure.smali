.class public final Lcom/isaigu/gymapp/ai/ExerciseFigure;
.super Landroid/view/View;
.source "ExerciseFigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/ExerciseFigure$Load;,
        Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;
    }
.end annotation


# static fields
.field public static final ASSET:Ljava/lang/String; = "xems/exercises.json"

.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR:I = -0xdd1c01

.field public static final COLOR_F:I = -0xc42c

.field private static final RAW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile app:Landroid/content/Context;

.field private static volatile loaded:Z

.field private static volatile loading:Z


# instance fields
.field private cycleStartMs:J

.field private final density:F

.field private fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

.field private final fill:Landroid/graphics/Paint;

.field private final glow:Landroid/graphics/Paint;

.field private glowScale:F

.field private id:Ljava/lang/String;

.field private offS:I

.field private onS:I

.field private still:Z

.field private withGlow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->RAW:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v2, 0x4

    const v3, -0xdd1c01

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    .line 52
    iput v2, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->onS:I

    .line 53
    iput v2, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->offS:I

    .line 55
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glowScale:F

    .line 59
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->withGlow:Z

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setLayerType(ILandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iput v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->density:F

    .line 70
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->RAW:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 25
    sput-boolean p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->loaded:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 25
    sput-boolean p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->loading:Z

    return p0
.end method

.method public static colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_8

    const v0, -0xdd1c01

    :goto_7
    return v0

    :cond_8
    const v0, -0xc42c

    goto :goto_7
.end method

.method private static fig(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    sget-object v4, Lcom/isaigu/gymapp/ai/ExerciseFigure;->RAW:Ljava/util/Map;

    monitor-enter v4

    .line 121
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    .line 122
    if-eqz v0, :cond_11

    .line 123
    monitor-exit v4

    .line 145
    :goto_10
    return-object v0

    .line 125
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->RAW:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 126
    if-nez v0, :cond_90

    sget-object v3, Lcom/isaigu/gymapp/ai/ExerciseFigure;->app:Landroid/content/Context;

    if-eqz v3, :cond_90

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->app:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cachedFigure(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v3, v0

    .line 129
    :goto_26
    if-nez v3, :cond_2b

    .line 130
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_89

    move-object v0, v1

    goto :goto_10

    .line 133
    :cond_2b
    :try_start_2b
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;-><init>()V

    .line 134
    const-string v5, "vb"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 135
    const/4 v6, 0x4

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    .line 136
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v5, v8

    aput v5, v6, v7

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    .line 137
    const-string v5, "paths"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/Path;

    iput-object v5, v0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->frames:[Landroid/graphics/Path;

    .line 139
    :goto_6d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_82

    .line 140
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->frames:[Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->parse(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    aput-object v6, v5, v2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 142
    :cond_82
    sget-object v2, Lcom/isaigu/gymapp/ai/ExerciseFigure;->CACHE:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_87} :catch_8c
    .catchall {:try_start_2b .. :try_end_87} :catchall_89

    .line 143
    :try_start_87
    monitor-exit v4

    goto :goto_10

    .line 147
    :catchall_89
    move-exception v0

    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_89

    throw v0

    .line 144
    :catch_8c
    move-exception v0

    .line 145
    :try_start_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_89

    move-object v0, v1

    goto :goto_10

    :cond_90
    move-object v3, v0

    goto :goto_26
.end method

.method static parse(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 12

    .prologue
    .line 152
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 153
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 154
    const/4 v8, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 156
    const/16 v7, 0x4d

    .line 157
    const/4 v1, 0x6

    new-array v10, v1, [F

    .line 158
    :goto_14
    if-ge v8, v9, :cond_cd

    .line 159
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 160
    const/16 v2, 0x20

    if-eq v1, v2, :cond_22

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_25

    .line 161
    :cond_22
    add-int/lit8 v8, v8, 0x1

    .line 162
    goto :goto_14

    .line 164
    :cond_25
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 166
    add-int/lit8 v8, v8, 0x1

    .line 167
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_d0

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    move v7, v1

    goto :goto_14

    .line 172
    :cond_36
    const/16 v1, 0x43

    if-ne v7, v1, :cond_55

    const/4 v1, 0x6

    .line 173
    :goto_3b
    const/4 v2, 0x0

    move v4, v2

    :goto_3d
    if-ge v4, v1, :cond_91

    move v3, v8

    .line 174
    :goto_40
    if-ge v3, v9, :cond_57

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_52

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_57

    .line 175
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 172
    :cond_55
    const/4 v1, 0x2

    goto :goto_3b

    .line 178
    :cond_57
    if-ge v3, v9, :cond_ce

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_69

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2b

    if-ne v2, v5, :cond_ce

    .line 179
    :cond_69
    add-int/lit8 v2, v3, 0x1

    .line 181
    :goto_6b
    if-ge v2, v9, :cond_82

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_7f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_82

    .line 182
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 184
    :cond_82
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v10, v4

    .line 173
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v8, v2

    goto :goto_3d

    .line 186
    :cond_91
    const/16 v1, 0x4d

    if-ne v7, v1, :cond_a3

    .line 187
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 188
    const/16 v1, 0x4c

    :goto_a0
    move v7, v1

    .line 194
    goto/16 :goto_14

    .line 189
    :cond_a3
    const/16 v1, 0x4c

    if-ne v7, v1, :cond_b2

    .line 190
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move v1, v7

    goto :goto_a0

    .line 191
    :cond_b2
    const/16 v1, 0x43

    if-ne v7, v1, :cond_cb

    .line 192
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x2

    aget v3, v10, v3

    const/4 v4, 0x3

    aget v4, v10, v4

    const/4 v5, 0x4

    aget v5, v10, v5

    const/4 v6, 0x5

    aget v6, v10, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_cb
    move v1, v7

    goto :goto_a0

    .line 195
    :cond_cd
    return-object v0

    :cond_ce
    move v2, v3

    goto :goto_6b

    :cond_d0
    move v7, v1

    goto/16 :goto_14
.end method

.method public static preload(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 75
    if-eqz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->app:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->app:Landroid/content/Context;

    .line 78
    :cond_c
    sget-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->loaded:Z

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->loading:Z

    if-nez v0, :cond_16

    if-nez p0, :cond_17

    .line 83
    :cond_16
    :goto_16
    return-void

    .line 81
    :cond_17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->loading:Z

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure$Load;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure$Load;-><init>(Landroid/content/Context;)V

    const-string v2, "xems-figures"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_16
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->id:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 289
    :cond_b
    :goto_b
    return-void

    .line 242
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    if-nez v0, :cond_22

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    if-nez v0, :cond_22

    .line 245
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->postInvalidateDelayed(J)V

    goto :goto_b

    .line 249
    :cond_22
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 250
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 251
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    div-float v6, v0, v6

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    div-float v7, v4, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v0, v7

    div-float/2addr v0, v12

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    aget v7, v7, v2

    mul-float/2addr v7, v6

    sub-float/2addr v0, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    div-float/2addr v4, v12

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->vb:[F

    aget v7, v7, v5

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 255
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->withGlow:Z

    if-eqz v0, :cond_94

    iget v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glowScale:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_94

    .line 256
    iput v6, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glowScale:F

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x40600000    # 3.5f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->density:F

    mul-float/2addr v8, v9

    div-float v6, v8, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 259
    :cond_94
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->frames:[Landroid/graphics/Path;

    array-length v6, v0

    .line 261
    if-le v6, v5, :cond_154

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->still:Z

    if-nez v0, :cond_154

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 263
    iget v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->onS:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->offS:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    .line 264
    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->cycleStartMs:J

    sub-long/2addr v8, v10

    long-to-float v0, v8

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v0, v7

    rem-float/2addr v0, v4

    .line 265
    cmpg-float v7, v0, v1

    if-gez v7, :cond_b6

    .line 266
    add-float/2addr v0, v4

    .line 268
    :cond_b6
    iget v4, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->onS:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_ed

    move v4, v5

    .line 269
    :goto_be
    if-eqz v4, :cond_ef

    iget v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->onS:I

    int-to-float v7, v7

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    div-float/2addr v0, v7

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 270
    :goto_cc
    mul-float v7, v0, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v0, v12

    sub-float v0, v8, v0

    mul-float/2addr v0, v7

    .line 271
    if-eqz v4, :cond_100

    sub-float v0, v3, v0

    add-int/lit8 v4, v6, -0x1

    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_dc
    move v4, v2

    .line 273
    :goto_dd
    if-ge v4, v6, :cond_140

    .line 274
    if-ne v6, v5, :cond_105

    move v2, v3

    .line 275
    :goto_e2
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_113

    .line 273
    :goto_e9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_dd

    :cond_ed
    move v4, v2

    .line 268
    goto :goto_be

    .line 269
    :cond_ef
    iget v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->onS:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->offS:I

    int-to-float v7, v7

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    div-float/2addr v0, v7

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_cc

    .line 271
    :cond_100
    add-int/lit8 v4, v6, -0x1

    int-to-float v4, v4

    mul-float/2addr v0, v4

    goto :goto_dc

    .line 274
    :cond_105
    int-to-float v2, v4

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_e2

    .line 278
    :cond_113
    iget-boolean v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->withGlow:Z

    if-eqz v7, :cond_12b

    .line 279
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    const/high16 v8, 0x42dc0000    # 110.0f

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->frames:[Landroid/graphics/Path;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 282
    :cond_12b
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;->frames:[Landroid/graphics/Path;

    aget-object v2, v2, v4

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_e9

    .line 285
    :cond_140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 286
    if-le v6, v5, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->still:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->postInvalidateOnAnimation()V

    goto/16 :goto_b

    :cond_154
    move v0, v1

    goto :goto_dc
.end method

.method public setColor(I)V
    .registers 4

    .prologue
    const v1, 0xffffff

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    and-int/2addr v0, v1

    and-int/2addr v1, p1

    if-eq v0, v1, :cond_1a

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->glow:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->invalidate()V

    .line 218
    :cond_1a
    return-void
.end method

.method public setCycle(JII)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 232
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->cycleStartMs:J

    .line 233
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->onS:I

    .line 234
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->offS:I

    .line 235
    return-void
.end method

.method public setExercise(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 222
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->id:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 228
    :cond_6
    :goto_6
    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 225
    :cond_f
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->id:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->fig:Lcom/isaigu/gymapp/ai/ExerciseFigure$Fig;

    .line 227
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->invalidate()V

    goto :goto_6
.end method

.method public setGlow(Z)V
    .registers 4

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->withGlow:Z

    .line 207
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_5
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setLayerType(ILandroid/graphics/Paint;)V

    .line 208
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->invalidate()V

    .line 209
    return-void

    .line 207
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setStill(Z)V
    .registers 2

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure;->still:Z

    .line 201
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->invalidate()V

    .line 202
    return-void
.end method
