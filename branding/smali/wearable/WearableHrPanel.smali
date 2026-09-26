.class public final Lcom/isaigu/gymapp/wearable/WearableHrPanel;
.super Ljava/lang/Object;
.source "WearableHrPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableHrPanel$Tick;,
        Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;
    }
.end annotation


# static fields
.field private static final WINDOWS:[J

.field private static avgVal:Landroid/widget/TextView;

.field private static chart:Lcom/isaigu/gymapp/wearable/HrChartView;

.field private static chartCard:Landroid/widget/LinearLayout;

.field private static final handler:Landroid/os/Handler;

.field private static kcalVal:Landroid/widget/TextView;

.field private static limitsLine:Landroid/widget/TextView;

.field private static maxVal:Landroid/widget/TextView;

.field private static minVal:Landroid/widget/TextView;

.field private static nowVal:Landroid/widget/TextView;

.field private static nowZone:Landroid/widget/TextView;

.field private static sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static final tick:Ljava/lang/Runnable;

.field private static windowIdx:I

.field private static zoneBar:Landroid/widget/LinearLayout;

.field private static zoneLegend:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->WINDOWS:[J

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    return-void

    :array_1e
    .array-data 8
        0x493e0
        0xdbba0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Runnable;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/wearable/HrChartView;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/wearable/HrChartView;)Lcom/isaigu/gymapp/wearable/HrChartView;
    .registers 1

    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    return-object p0
.end method

.method static synthetic access$402(I)I
    .registers 1

    .line 23
    sput p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    return p0
.end method

.method static synthetic access$500()Landroid/widget/LinearLayout;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Activity;)Landroid/view/View;
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->range(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->refresh()V

    return-void
.end method

.method static dismiss()V
    .registers 2

    .line 167
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 170
    :try_start_b
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 172
    goto :goto_12

    .line 171
    :catchall_11
    move-exception v0

    .line 174
    :cond_12
    :goto_12
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 175
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    .line 176
    return-void
.end method

.method private static fillZones([J)V
    .registers 18

    .line 238
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    nop

    .line 242
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    move-wide v5, v1

    const/4 v4, 0x1

    :goto_16
    const/4 v7, 0x5

    if-gt v4, v7, :cond_1f

    .line 243
    aget-wide v7, p0, v4

    add-long/2addr v5, v7

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 245
    :cond_1f
    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    cmp-long v10, v5, v1

    if-gtz v10, :cond_4a

    .line 246
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 247
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v11, 0x14

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v6, v11, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_4a
    const/4 v5, 0x1

    :goto_4b
    if-gt v5, v7, :cond_17b

    .line 252
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v6

    .line 253
    if-lez v10, :cond_e0

    aget-wide v11, p0, v5

    cmp-long v13, v11, v1

    if-lez v13, :cond_e0

    .line 254
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 256
    invoke-virtual {v12, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 257
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    .line 258
    const/16 v14, 0x8

    new-array v14, v14, [F

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v15

    const/16 v16, 0x0

    if-ne v5, v15, :cond_79

    move v15, v13

    goto :goto_7a

    :cond_79
    const/4 v15, 0x0

    :goto_7a
    aput v15, v14, v9

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v15

    if-ne v5, v15, :cond_84

    move v15, v13

    goto :goto_85

    :cond_84
    const/4 v15, 0x0

    :goto_85
    aput v15, v14, v3

    const/4 v15, 0x2

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v4

    if-ne v5, v4, :cond_90

    move v4, v13

    goto :goto_91

    :cond_90
    const/4 v4, 0x0

    :goto_91
    aput v4, v14, v15

    const/4 v4, 0x3

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v15

    if-ne v5, v15, :cond_9c

    move v15, v13

    goto :goto_9d

    :cond_9c
    const/4 v15, 0x0

    :goto_9d
    aput v15, v14, v4

    const/4 v4, 0x4

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v15

    if-ne v5, v15, :cond_a8

    move v15, v13

    goto :goto_a9

    :cond_a8
    const/4 v15, 0x0

    :goto_a9
    aput v15, v14, v4

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v4

    if-ne v5, v4, :cond_b3

    move v4, v13

    goto :goto_b4

    :cond_b3
    const/4 v4, 0x0

    :goto_b4
    aput v4, v14, v7

    const/4 v4, 0x6

    .line 260
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v15

    if-ne v5, v15, :cond_bf

    move v15, v13

    goto :goto_c0

    :cond_bf
    const/4 v15, 0x0

    :goto_c0
    aput v15, v14, v4

    const/4 v4, 0x7

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v15

    if-ne v5, v15, :cond_ca

    goto :goto_cb

    :cond_ca
    const/4 v13, 0x0

    :goto_cb
    aput v13, v14, v4

    .line 258
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 261
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    aget-wide v12, p0, v5

    long-to-float v12, v12

    invoke-direct {v4, v9, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 264
    sget-object v12, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    :cond_e0
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 267
    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 268
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 269
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v12, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v6, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    aget-wide v11, p0, v5

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Z"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x3c

    div-long v7, v11, v13

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v3, [Ljava/lang/Object;

    rem-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const-string v11, "%02d"

    invoke-static {v7, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41480000    # 12.5f

    .line 273
    aget-wide v11, p0, v5

    cmp-long v8, v11, v1

    if-lez v8, :cond_154

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_156

    :cond_154
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    :goto_156
    aget-wide v11, p0, v5

    cmp-long v13, v11, v1

    if-lez v13, :cond_15e

    const/4 v11, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v11, 0x0

    .line 272
    :goto_15f
    invoke-static {v0, v6, v7, v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 274
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    add-int/lit8 v5, v5, 0x1

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v7, 0x5

    const/4 v8, -0x1

    goto/16 :goto_4b

    .line 277
    :cond_17b
    return-void
.end method

.method private static first([J)I
    .registers 8

    .line 280
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x5

    if-gt v1, v2, :cond_11

    .line 281
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_e

    .line 282
    return v1

    .line 280
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    :cond_11
    return v0
.end method

.method private static last([J)I
    .registers 8

    .line 289
    const/4 v0, 0x5

    const/4 v1, 0x5

    :goto_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    .line 290
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_e

    .line 291
    return v1

    .line 289
    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 294
    :cond_11
    return v0
.end method

.method private static range(Landroid/app/Activity;)Landroid/view/View;
    .registers 4

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 143
    const-string v1, "5 \u043c\u0438\u043d"

    const-string v2, "5 min"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "15 \u043c\u0438\u043d"

    const-string v2, "15 min"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 144
    const-string v1, "\u0412\u0441\u0438\u0447\u043a\u043e"

    const-string v2, "All"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;-><init>()V

    .line 142
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private static refresh()V
    .registers 19

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_215

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    if-nez v0, :cond_a

    goto/16 :goto_215

    .line 182
    :cond_a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 184
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    goto :goto_1f

    :cond_1d
    const/16 v0, 0xaa

    .line 185
    :goto_1f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v12

    .line 186
    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v1

    goto :goto_2c

    :cond_2a
    add-int/lit8 v1, v0, 0xc

    :goto_2c
    move v13, v1

    .line 187
    if-eqz v12, :cond_35

    invoke-virtual {v12}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v1

    move v15, v1

    goto :goto_36

    :cond_35
    const/4 v15, 0x0

    .line 189
    :goto_36
    const-wide/16 v1, 0x0

    invoke-static {v10, v11, v1, v2}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v9

    .line 190
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->WINDOWS:[J

    sget v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    aget-wide v2, v1, v2

    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v16

    .line 191
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    sget v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_4f

    move-object v2, v9

    goto :goto_51

    :cond_4f
    move-object/from16 v2, v16

    :goto_51
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->WINDOWS:[J

    sget v4, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    aget-wide v5, v3, v4

    move-wide v3, v10

    move v7, v0

    const/4 v14, 0x2

    move v8, v13

    move-object/from16 v18, v9

    move v9, v15

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/HrChartView;->set(Lcom/isaigu/gymapp/wearable/HrHistory$Series;JJIII)V

    .line 193
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v1

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v2

    .line 195
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_7d

    move-object/from16 v3, v18

    iget-object v5, v3, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v6

    sub-int/2addr v6, v4

    aget-wide v6, v5, v6

    sub-long/2addr v10, v6

    goto :goto_84

    :cond_7d
    move-object/from16 v3, v18

    const-wide v10, 0x7fffffffffffffffL

    .line 196
    :goto_84
    if-lez v2, :cond_91

    const-wide/16 v5, 0x2710

    cmp-long v7, v10, v5

    if-gez v7, :cond_91

    if-nez v1, :cond_91

    const/16 v17, 0x1

    goto :goto_93

    :cond_91
    const/16 v17, 0x0

    .line 197
    :goto_93
    const-string v5, "--"

    if-eqz v17, :cond_103

    .line 198
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v1

    .line 199
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v6

    .line 200
    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Z"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    const/16 v2, 0x26

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    const/16 v8, 0x77

    .line 205
    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 204
    invoke-static {v2, v7, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    goto :goto_149

    .line 207
    :cond_103
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    if-eqz v1, :cond_11a

    const-string v2, "\u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v6, "band not worn"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_131

    .line 210
    :cond_11a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v2

    if-eqz v2, :cond_129

    const-string v2, "\u0447\u0430\u043a\u0430 \u043f\u0443\u043b\u0441"

    const-string v6, "waiting for HR"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_131

    .line 211
    :cond_129
    const-string v2, "\u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb"

    const-string v6, "not connected \u2014 tap \u21bb"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    :goto_131
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    if-eqz v1, :cond_13e

    const v1, -0x10acb0

    goto :goto_140

    :cond_13e
    const/16 v1, -0x339a

    :goto_140
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :goto_149
    sget v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    if-ne v1, v14, :cond_14f

    move-object v9, v3

    goto :goto_151

    :cond_14f
    move-object/from16 v9, v16

    .line 217
    :goto_151
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->avgVal:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-le v2, v4, :cond_162

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_163

    :cond_162
    move-object v2, v5

    :goto_163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->maxVal:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_177

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_178

    :cond_177
    move-object v2, v5

    :goto_178
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->minVal:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_18c

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->min()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18d

    :cond_18c
    move-object v2, v5

    :goto_18d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const-wide/16 v1, 0x0

    if-eqz v12, :cond_199

    invoke-virtual {v12}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v3

    goto :goto_19a

    :cond_199
    move-wide v3, v1

    .line 221
    :goto_19a
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->kcalVal:Landroid/widget/TextView;

    cmpl-double v7, v3, v1

    if-lez v7, :cond_1a8

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :cond_1a8
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    const-string v2, "   \u00b7   "

    if-lez v15, :cond_1c5

    .line 225
    const-string v3, "\u043f\u043e\u043a\u043e\u0439 "

    const-string v4, "rest "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1c5
    const-string v3, "\u043f\u0440\u0430\u0433 "

    const-string v4, "limit "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v3, "\u0442\u0430\u0432\u0430\u043d "

    const-string v4, "ceiling "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v3

    .line 230
    if-ltz v3, :cond_204

    const/16 v4, 0x14

    if-gt v3, v4, :cond_204

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0431\u0430\u0442\u0435\u0440\u0438\u044f "

    const-string v4, "battery "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_204
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v9, v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->fillZones([J)V

    .line 235
    return-void

    .line 180
    :cond_215
    :goto_215
    return-void
.end method

.method static show(Landroid/app/Activity;)V
    .registers 2

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->showImpl(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 49
    goto :goto_a

    .line 47
    :catchall_4
    move-exception p0

    .line 48
    const-string v0, "WearableHrPanel.show"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_a
    return-void
.end method

.method private static showImpl(Landroid/app/Activity;)V
    .registers 11

    .line 53
    if-eqz p0, :cond_1d5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1d5

    .line 56
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->dismiss()V

    .line 57
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 58
    const-string v0, "\u041f\u0443\u043b\u0441"

    const-string v1, "Heart rate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2f8

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 61
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 62
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 64
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 65
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    const/high16 v3, 0x42700000    # 60.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v5, "--"

    const/4 v6, 0x1

    invoke-static {p0, v5, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v3, v4, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    .line 70
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v2, v6, v8, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 74
    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v2, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const-string v1, "\u0421\u0440\u0435\u0434\u043d\u043e"

    const-string v2, "Average"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->avgVal:Landroid/widget/TextView;

    .line 77
    const-string v1, "\u0412\u0440\u044a\u0445"

    const-string v2, "Peak"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->maxVal:Landroid/widget/TextView;

    .line 78
    const-string v1, "\u041d\u0430\u0439-\u043d\u0438\u0441\u044a\u043a"

    const-string v2, "Low"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->minVal:Landroid/widget/TextView;

    .line 79
    const-string v1, "kcal"

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->kcalVal:Landroid/widget/TextView;

    .line 80
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    .line 84
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->range(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/HrChartView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43660000    # 230.0f

    .line 87
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/high16 v0, 0x41480000    # 12.5f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    .line 91
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    const/16 v3, 0xe

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 97
    const-string v1, "\u0412\u0440\u0435\u043c\u0435 \u043f\u043e \u0437\u043e\u043d\u0438"

    const-string v5, "Time in zones"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 102
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    .line 104
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const-string v0, "\u0422\u0435\u0445\u043d\u0438\u0447\u0435\u0441\u043a\u0438 \u0434\u0430\u043d\u043d\u0438"

    const-string v1, "Technical data"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel$2;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel$3;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->refresh()V

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 136
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v1, 0x3f70a3d7    # 0.94f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 137
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void

    .line 54
    :cond_1d5
    :goto_1d5
    return-void
.end method

.method private static stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 10

    .line 148
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 149
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 150
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v3, "--"

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/high16 v4, 0x41380000    # 11.5f

    const/4 v5, 0x0

    invoke-static {p0, p2, v4, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 156
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 158
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 162
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-object v2
.end method
