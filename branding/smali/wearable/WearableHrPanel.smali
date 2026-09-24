.class public final Lcom/isaigu/gymapp/wearable/WearableHrPanel;
.super Ljava/lang/Object;
.source "WearableHrPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;,
        Lcom/isaigu/gymapp/wearable/WearableHrPanel$Tick;
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

    .prologue
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

    .line 24
    :array_1e
    .array-data 8
        0x493e0
        0xdbba0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/wearable/HrChartView;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/wearable/HrChartView;)Lcom/isaigu/gymapp/wearable/HrChartView;
    .registers 1

    .prologue
    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    return-object p0
.end method

.method static synthetic access$402(I)I
    .registers 1

    .prologue
    .line 23
    sput p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    return p0
.end method

.method static synthetic access$500()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->range(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()V
    .registers 0

    .prologue
    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->refresh()V

    return-void
.end method

.method static dismiss()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 170
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_13

    .line 173
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_18

    .line 177
    :cond_13
    :goto_13
    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 178
    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    .line 179
    return-void

    .line 174
    :catch_18
    move-exception v0

    goto :goto_13
.end method

.method private static fillZones([J)V
    .registers 15

    .prologue
    .line 241
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 242
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 243
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 244
    const-wide/16 v2, 0x0

    .line 245
    const/4 v0, 0x1

    move-wide v4, v2

    :goto_14
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1e

    .line 246
    aget-wide v2, p0, v0

    add-long/2addr v2, v4

    .line 245
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    goto :goto_14

    .line 248
    :cond_1e
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_4d

    .line 249
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 250
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :cond_4d
    const/4 v0, 0x1

    move v2, v0

    :goto_4f
    const/4 v0, 0x5

    if-gt v2, v0, :cond_1a3

    .line 255
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v3

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_e0

    aget-wide v0, p0, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_e0

    .line 257
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 259
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 260
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 261
    const/16 v0, 0x8

    new-array v9, v0, [F

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v0

    if-ne v2, v0, :cond_186

    move v0, v1

    :goto_84
    aput v0, v9, v10

    const/4 v10, 0x1

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v0

    if-ne v2, v0, :cond_189

    move v0, v1

    :goto_8e
    aput v0, v9, v10

    const/4 v10, 0x2

    .line 262
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v0

    if-ne v2, v0, :cond_18c

    move v0, v1

    :goto_98
    aput v0, v9, v10

    const/4 v10, 0x3

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v0

    if-ne v2, v0, :cond_18f

    move v0, v1

    :goto_a2
    aput v0, v9, v10

    const/4 v10, 0x4

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v0

    if-ne v2, v0, :cond_192

    move v0, v1

    :goto_ac
    aput v0, v9, v10

    const/4 v10, 0x5

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->last([J)I

    move-result v0

    if-ne v2, v0, :cond_195

    move v0, v1

    :goto_b6
    aput v0, v9, v10

    const/4 v10, 0x6

    .line 263
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v0

    if-ne v2, v0, :cond_198

    move v0, v1

    :goto_c0
    aput v0, v9, v10

    const/4 v0, 0x7

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->first([J)I

    move-result v10

    if-ne v2, v10, :cond_19b

    :goto_c9
    aput v1, v9, v0

    .line 261
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 264
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v8, -0x1

    aget-wide v10, p0, v2

    long-to-float v9, v10

    invoke-direct {v0, v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 267
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_e0
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 270
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 271
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 272
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v1, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    aget-wide v0, p0, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Z"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v8, 0x3c

    div-long v8, v0, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3c

    rem-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x41480000    # 12.5f

    .line 276
    aget-wide v0, p0, v2

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-lez v0, :cond_19e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_163
    aget-wide v10, p0, v2

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_1a1

    const/4 v1, 0x1

    .line 275
    :goto_16c
    invoke-static {v6, v3, v8, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 277
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4f

    .line 261
    :cond_186
    const/4 v0, 0x0

    goto/16 :goto_84

    :cond_189
    const/4 v0, 0x0

    goto/16 :goto_8e

    .line 262
    :cond_18c
    const/4 v0, 0x0

    goto/16 :goto_98

    :cond_18f
    const/4 v0, 0x0

    goto/16 :goto_a2

    :cond_192
    const/4 v0, 0x0

    goto/16 :goto_ac

    :cond_195
    const/4 v0, 0x0

    goto/16 :goto_b6

    .line 263
    :cond_198
    const/4 v0, 0x0

    goto/16 :goto_c0

    :cond_19b
    const/4 v1, 0x0

    goto/16 :goto_c9

    .line 276
    :cond_19e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_163

    :cond_1a1
    const/4 v1, 0x0

    goto :goto_16c

    .line 280
    :cond_1a3
    return-void
.end method

.method private static first([J)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 283
    move v0, v1

    :goto_2
    const/4 v2, 0x5

    if-gt v0, v2, :cond_11

    .line 284
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 288
    :goto_d
    return v0

    .line 283
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    move v0, v1

    .line 288
    goto :goto_d
.end method

.method private static last([J)I
    .registers 7

    .prologue
    const/4 v1, 0x5

    .line 292
    move v0, v1

    :goto_2
    const/4 v2, 0x1

    if-lt v0, v2, :cond_11

    .line 293
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 297
    :goto_d
    return v0

    .line 292
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_11
    move v0, v1

    .line 297
    goto :goto_d
.end method

.method private static range(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5 \u043c\u0438\u043d"

    const-string v3, "5 min"

    .line 146
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "15 \u043c\u0438\u043d"

    const-string v3, "15 min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0412\u0441\u0438\u0447\u043a\u043e"

    const-string v3, "All"

    .line 147
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$RangePick;-><init>()V

    .line 145
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static refresh()V
    .registers 12

    .prologue
    .line 182
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    if-nez v0, :cond_9

    .line 238
    :cond_8
    :goto_8
    return-void

    .line 185
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 187
    if-eqz v0, :cond_1b4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    .line 188
    :goto_1d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v11

    .line 189
    if-eqz v11, :cond_1b8

    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v7

    .line 190
    :goto_27
    if-eqz v11, :cond_1bc

    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v8

    .line 192
    :goto_2d
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v9

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->WINDOWS:[J

    sget v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    aget-wide v0, v0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v10

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    sget v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1bf

    move-object v1, v9

    :goto_45
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->WINDOWS:[J

    sget v5, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    aget-wide v4, v4, v5

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/HrChartView;->set(Lcom/isaigu/gymapp/wearable/HrHistory$Series;JJIII)V

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v4

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v5

    .line 198
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v0

    if-lez v0, :cond_1c2

    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sub-long v0, v2, v0

    .line 199
    :goto_68
    if-lez v5, :cond_1c9

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c9

    if-nez v4, :cond_1c9

    const/4 v0, 0x1

    .line 200
    :goto_73
    if-eqz v0, :cond_1cc

    .line 201
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v0

    .line 202
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v1

    .line 203
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    const/16 v2, 0x26

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x77

    .line 208
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 207
    invoke-static {v2, v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_e4
    sget v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->windowIdx:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_216

    .line 220
    :goto_e9
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->avgVal:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_219

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_fa
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->maxVal:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v0

    if-lez v0, :cond_21d

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_10d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->minVal:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v0

    if-lez v0, :cond_221

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->min()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_120
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    if-eqz v11, :cond_225

    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v0

    .line 224
    :goto_129
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->kcalVal:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_229

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_139
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    if-lez v8, :cond_158

    .line 228
    const-string v1, "\u043f\u043e\u043a\u043e\u0439 "

    const-string v2, "rest "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   \u00b7   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_158
    const-string v1, "\u043f\u0440\u0430\u0433 "

    const-string v2, "limit "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   \u00b7   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0442\u0430\u0432\u0430\u043d "

    const-string v3, "ceiling "

    .line 231
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v1

    .line 233
    if-ltz v1, :cond_1a2

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1a2

    .line 234
    const-string v2, "   \u00b7   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0431\u0430\u0442\u0435\u0440\u0438\u044f "

    const-string v4, "battery "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_1a2
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v9, v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->fillZones([J)V

    goto/16 :goto_8

    .line 187
    :cond_1b4
    const/16 v6, 0xaa

    goto/16 :goto_1d

    .line 189
    :cond_1b8
    add-int/lit8 v7, v6, 0xc

    goto/16 :goto_27

    .line 190
    :cond_1bc
    const/4 v8, 0x0

    goto/16 :goto_2d

    :cond_1bf
    move-object v1, v10

    .line 194
    goto/16 :goto_45

    .line 198
    :cond_1c2
    const-wide v0, 0x7fffffffffffffffL

    goto/16 :goto_68

    .line 199
    :cond_1c9
    const/4 v0, 0x0

    goto/16 :goto_73

    .line 210
    :cond_1cc
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    if-eqz v4, :cond_1fb

    const-string v0, "\u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v1, "band not worn"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_1e4
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    if-eqz v4, :cond_213

    const v0, -0x10acb0

    :goto_1f0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e4

    .line 213
    :cond_1fb
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-eqz v0, :cond_20a

    const-string v0, "\u0447\u0430\u043a\u0430 \u043f\u0443\u043b\u0441"

    const-string v1, "waiting for HR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e4

    .line 214
    :cond_20a
    const-string v0, "\u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb"

    const-string v1, "not connected \u2014 tap \u21bb"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e4

    .line 216
    :cond_213
    const/16 v0, -0x339a

    goto :goto_1f0

    :cond_216
    move-object v9, v10

    .line 219
    goto/16 :goto_e9

    .line 220
    :cond_219
    const-string v0, "--"

    goto/16 :goto_fa

    .line 221
    :cond_21d
    const-string v0, "--"

    goto/16 :goto_10d

    .line 222
    :cond_221
    const-string v0, "--"

    goto/16 :goto_120

    .line 223
    :cond_225
    const-wide/16 v0, 0x0

    goto/16 :goto_129

    .line 224
    :cond_229
    const-string v0, "--"

    goto/16 :goto_139
.end method

.method static show(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->showImpl(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 50
    :goto_3
    return-void

    .line 47
    :catch_4
    move-exception v0

    .line 48
    const-string v1, "WearableHrPanel.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static showImpl(Landroid/app/Activity;)V
    .registers 13

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v9, -0x2

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, 0x0

    .line 53
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 142
    :cond_10
    :goto_10
    return-void

    .line 56
    :cond_11
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
    const-string v3, "--"

    const/high16 v4, 0x42700000    # 60.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    .line 67
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowVal:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const-string v3, " \u0443\u0434/\u043c\u0438\u043d"

    const-string v4, " bpm"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 69
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v7, v7, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    .line 73
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->nowZone:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const-string v1, "\u0421\u0440\u0435\u0434\u043d\u043e"

    const-string v2, "Average"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->avgVal:Landroid/widget/TextView;

    .line 80
    const-string v1, "\u0412\u0440\u044a\u0445"

    const-string v2, "Peak"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->maxVal:Landroid/widget/TextView;

    .line 81
    const-string v1, "\u041d\u0430\u0439-\u043d\u0438\u0441\u044a\u043a"

    const-string v2, "Low"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->minVal:Landroid/widget/TextView;

    .line 82
    const-string v1, "kcal"

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->kcalVal:Landroid/widget/TextView;

    .line 83
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->range(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/HrChartView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x43660000    # 230.0f

    .line 90
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 92
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chart:Lcom/isaigu/gymapp/wearable/HrChartView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const-string v0, ""

    const/high16 v1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    .line 94
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->limitsLine:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->chartCard:Landroid/widget/LinearLayout;

    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 100
    const-string v1, "\u0412\u0440\u0435\u043c\u0435 \u043f\u043e \u0437\u043e\u043d\u0438"

    const-string v2, "Time in zones"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    .line 102
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41600000    # 14.0f

    .line 103
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    .line 107
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->zoneLegend:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const-string v0, "\u0422\u0435\u0445\u043d\u0438\u0447\u0435\u0441\u043a\u0438 \u0434\u0430\u043d\u043d\u0438"

    const-string v1, "Technical data"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel$2;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel$3;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableHrPanel$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->refresh()V

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 139
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v1, 0x3f70a3d7    # 0.94f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 140
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10
.end method

.method private static stat(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 11

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/16 v7, 0x11

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 151
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 154
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const-string v1, "--"

    const/high16 v2, 0x41c00000    # 24.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    const/high16 v2, 0x41380000    # 11.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-object v1
.end method
