.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;
.implements Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Page"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field again:Landroid/widget/TextView;

.field age:I

.field at:I

.field body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

.field detail:Landroid/widget/TextView;

.field gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

.field heightCm:I

.field heightFromProfile:Z

.field heightRow:Landroid/widget/LinearLayout;

.field heightValue:Landroid/widget/TextView;

.field hist:Lorg/json/JSONArray;

.field infoPop:Landroid/widget/PopupWindow;

.field lastKg:D

.field layer:I

.field layerHolder:Landroid/widget/LinearLayout;

.field legend:Landroid/widget/TextView;

.field link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field male:Z

.field metric:I

.field middle:Landroid/widget/LinearLayout;

.field radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

.field reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

.field reasons:Landroid/widget/LinearLayout;

.field right:Landroid/widget/LinearLayout;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field saved:Landroid/widget/TextView;

.field selected:I

.field final spark:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

.field status:Landroid/widget/TextView;

.field final tileDelta:[Landroid/widget/TextView;

.field final tileValue:[Landroid/widget/TextView;

.field final tiles:[Landroid/widget/LinearLayout;

.field trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

.field trendTitle:Landroid/widget/TextView;

.field final u:Lcom/isaigu/gymapp/bean/TrainUser;

.field final userId:J

.field weight:Landroid/widget/TextView;

.field weightDelta:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 9

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 71
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 91
    new-array v0, v3, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    .line 92
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    .line 93
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    .line 94
    new-array v0, v3, [Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->spark:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 104
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 105
    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 106
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 107
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 108
    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 111
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    .line 112
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 113
    iget-wide v4, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    .line 114
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_63

    .line 116
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_47

    .line 117
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v4, :cond_99

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 119
    :cond_47
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_53

    .line 120
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 122
    :cond_53
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 123
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_63

    .line 124
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 127
    :cond_63
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-lez v0, :cond_9b

    :goto_67
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    .line 128
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_8c

    .line 129
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 131
    :cond_8c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_98

    .line 132
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-eqz v0, :cond_9d

    const/16 v0, 0xb2

    :goto_96
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 134
    :cond_98
    return-void

    :cond_99
    move v0, v2

    .line 117
    goto :goto_45

    :cond_9b
    move v1, v2

    .line 127
    goto :goto_67

    .line 132
    :cond_9d
    const/16 v0, 0xa5

    goto :goto_96
.end method

.method static one(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 533
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u2014"

    :goto_8
    return-object v0

    :cond_9
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

    goto :goto_8
.end method

.method static signedPct(D)Ljava/lang/String;
    .registers 10

    .prologue
    .line 537
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u2014"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_3f

    const-string v0, "+"

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_3f
    const-string v0, "\u2212"

    goto :goto_16
.end method


# virtual methods
.method cur()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 334
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method detailText(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 413
    if-eqz p1, :cond_f

    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 414
    :cond_f
    const-string v0, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0444\u0438\u0433\u0443\u0440\u0430\u0442\u0430"

    const-string v1, "Tap a zone on the figure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_17
    return-object v0

    .line 416
    :cond_18
    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 417
    const-string v1, "segFat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 418
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    if-gez v2, :cond_62

    .line 419
    invoke-static {v0, v8, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v2

    .line 420
    invoke-static {v0, v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v0

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0411\u0430\u043b\u0430\u043d\u0441 \u041b/\u0414 \u00b7 \u0440\u044a\u0446\u0435 "

    const-string v6, "Balance L/R \u00b7 arms "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u00b7  \u043a\u0440\u0430\u043a\u0430 "

    const-string v4, "  \u00b7  legs "

    .line 422
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 424
    :cond_62
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    .line 425
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v3

    .line 426
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "\u0422\u043e\u0440\u0441"

    const-string v6, "Trunk"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    const-string v6, "Left arm"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    const-string v6, "Right arm"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    const-string v6, "Left leg"

    .line 427
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v6, "Right leg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v4, "  \u00b7  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u043c\u0443\u0441\u043a\u0443\u043b\u0438 "

    const-string v7, "muscle "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043a\u0433 ("

    const-string v6, " kg ("

    .line 430
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v2, v9

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " %)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v0, "  \u00b7  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    const-string v6, "fat "

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u0433 ("

    const-string v4, " kg ("

    .line 432
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v8

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 434
    const-string v0, "  \u00b7  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 "

    const-string v2, "swelling "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_15b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method heightStepper()Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/16 v6, 0x30

    const/4 v8, 0x1

    const/high16 v7, 0x42400000    # 48.0f

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 303
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 304
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0420\u044a\u0441\u0442"

    const-string v3, "Height"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v1, v2, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    .line 308
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 310
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 314
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v2, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 315
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 316
    return-object v0
.end method

.method indexOf(Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    .line 390
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 391
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-ne v1, p1, :cond_12

    .line 395
    :goto_11
    return v0

    .line 390
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    goto :goto_11
.end method

.method layerControl()V
    .registers 6

    .prologue
    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 295
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v3, "Muscle"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Recovery"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 296
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v2, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method layerValues(Lorg/json/JSONObject;IZ)[D
    .registers 15

    .prologue
    const/4 v10, 0x5

    const/4 v0, 0x0

    .line 374
    if-nez p1, :cond_6

    .line 375
    const/4 v0, 0x0

    .line 386
    :goto_5
    return-object v0

    .line 377
    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_31

    .line 378
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v1

    .line 379
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 380
    new-array v2, v10, [D

    move v3, v0

    .line 381
    :goto_16
    if-ge v3, v10, :cond_2f

    .line 382
    if-eqz p3, :cond_2a

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v6, v5, v3

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    :goto_24
    aput-wide v0, v2, v3

    .line 381
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 382
    :cond_2a
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v0, v0, v3

    goto :goto_24

    :cond_2f
    move-object v0, v2

    .line 384
    goto :goto_5

    .line 386
    :cond_31
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v1

    if-nez p2, :cond_3e

    :goto_3b
    aget-object v0, v1, v0

    goto :goto_5

    :cond_3e
    const/4 v0, 0x1

    goto :goto_3b
.end method

.method leftColumn(I)Landroid/widget/LinearLayout;
    .registers 13

    .prologue
    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 188
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 189
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2014"

    const/high16 v6, 0x42580000    # 54.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    .line 190
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 191
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, " \u043a\u0433"

    const-string v6, " kg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41900000    # 18.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 193
    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    .line 196
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v2, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 197
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 201
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 202
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    .line 203
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2713 \u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e"

    const-string v6, "\u2713 Saved"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    .line 205
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightStepper()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    .line 209
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    if-eqz v0, :cond_130

    move v0, v1

    :goto_d4
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v10, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-object v3

    :cond_130
    move v0, v2

    .line 209
    goto :goto_d4
.end method

.method middleColumn(I)Landroid/widget/LinearLayout;
    .registers 13

    .prologue
    const/16 v10, 0x11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 226
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    .line 228
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43660000    # 230.0f

    .line 229
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    int-to-float v5, p1

    const v6, 0x3ed70a3d    # 0.42f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    .line 231
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 232
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 236
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    .line 237
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 238
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    .line 240
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 243
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    return-object v0
.end method

.method public onLive(DZ)V
    .registers 7

    .prologue
    .line 602
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_13

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    return-void

    .line 603
    :cond_13
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_f
.end method

.method public onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 608
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v1, v2, v3, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;)Lorg/json/JSONObject;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_31

    .line 613
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 616
    :cond_31
    if-nez v0, :cond_40

    .line 617
    const-string v0, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e \u2014 \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435"

    const-string v1, "Weight only \u2014 hold the handle with both hands"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    .line 620
    :cond_40
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 621
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 623
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 624
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 625
    return-void
.end method

.method public onSegment(I)V
    .registers 3

    .prologue
    .line 544
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->zones(Z)V

    .line 546
    return-void
.end method

.method public onState(I)V
    .registers 4

    .prologue
    .line 573
    packed-switch p1, :pswitch_data_4a

    .line 593
    :goto_3
    return-void

    .line 575
    :pswitch_4
    const-string v0, "\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v1, "Step on the scale barefoot"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 578
    :pswitch_12
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 582
    :pswitch_20
    const-string v0, "\u0425\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0434\u0440\u044a\u0436"

    const-string v1, "Hold the handle and stay still"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 585
    :pswitch_2e
    const-string v0, "\u2713 \u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043b\u0435\u0437\u0435"

    const-string v1, "\u2713 Done \u2014 step off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 588
    :pswitch_3c
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 573
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_2e
        :pswitch_3c
    .end packed-switch
.end method

.method prev()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method readiness(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 441
    if-eqz p1, :cond_13

    const-string v0, "z20"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_23

    .line 442
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    const-string v1, "\u0421\u0442\u044a\u043f\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v2, "Step on the scale"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v7, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_22
    :goto_22
    return-void

    .line 445
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v0

    if-nez v0, :cond_49

    .line 447
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    const-string v1, "\u0411\u0430\u0437\u0430\u0442\u0430 \u0441\u0435 \u0442\u0440\u0443\u043f\u0430"

    const-string v2, "Building the baseline"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u0434\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v3, "readiness comes with the second measurement"

    .line 448
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {v0, v7, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 451
    :cond_49
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_157

    const-string v0, "\u041f\u044a\u043b\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v2, "Full strength"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u00b7 "

    const-string v4, "against the client\'s usual \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->base:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0435\u0440\u0435\u043d\u0438\u044f"

    const-string v4, " measurements"

    .line 454
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    invoke-virtual {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v0, :cond_10c

    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v2, v0, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_10c

    .line 457
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0442\u043e\u0440\u0441"

    const-string v4, "trunk"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u041b. \u0440\u044a\u043a\u0430"

    const-string v4, "L arm"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u0414. \u0440\u044a\u043a\u0430"

    const-string v4, "R arm"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u041b. \u043a\u0440\u0430\u043a"

    const-string v4, "L leg"

    .line 458
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u0414. \u043a\u0440\u0430\u043a"

    const-string v4, "R leg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 459
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v5, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v5, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v4, v4, v5

    .line 460
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v4

    .line 459
    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    :cond_10c
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_22

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_22

    .line 463
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udca7 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0432\u043e\u0434\u0430  "

    const-string v4, "\ud83d\udca7 less water  "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 465
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 467
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 468
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_22

    .line 452
    :cond_157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2212"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    sub-double v2, v4, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " % \u0434\u043d\u0435\u0441"

    const-string v3, " % today"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57
.end method

.method render(Z)V
    .registers 14

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 344
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    .line 345
    if-eqz v2, :cond_6c

    const-string v0, "fat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    move v8, v7

    .line 346
    :goto_1a
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6e

    move v0, v1

    :goto_1f
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_70

    :goto_26
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 348
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerControl()V

    .line 349
    if-nez v2, :cond_72

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v4, "No measurement yet"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    const-string v4, "w"

    const-string v0, " \u043a\u0433"

    const-string v5, " kg"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 363
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readiness(Lorg/json/JSONObject;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->zones(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tilesAndTrend()V

    .line 366
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    if-eqz v8, :cond_104

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v0

    :goto_5c
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->set([D)V

    .line 367
    if-eqz p1, :cond_6b

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->animateIn()V

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->animateIn()V

    .line 371
    :cond_6b
    return-void

    :cond_6c
    move v8, v6

    .line 345
    goto :goto_1a

    :cond_6e
    move v0, v4

    .line 346
    goto :goto_1f

    :cond_70
    move v1, v4

    .line 347
    goto :goto_26

    .line 352
    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "t"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v0, v0, v4

    if-gez v0, :cond_c0

    move v0, v7

    .line 353
    :goto_85
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    if-eqz p1, :cond_c2

    const-string v0, "\u0421\u0435\u0433\u0430"

    const-string v1, "Now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    if-nez p1, :cond_3b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    const-string v1, "w"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3b

    :cond_c0
    move v0, v6

    .line 352
    goto :goto_85

    .line 355
    :cond_c2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    if-eqz v0, :cond_f8

    const-string v1, "\u0414\u043d\u0435\u0441 \u00b7 "

    const-string v9, "Today \u00b7 "

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 355
    if-eqz v0, :cond_101

    const-string v0, "HH:mm"

    :goto_db
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    const-string v9, "t"

    .line 356
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    .line 354
    :cond_f8
    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e \u00b7 "

    const-string v9, "Last \u00b7 "

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d1

    .line 355
    :cond_101
    const-string v0, "d.MM.yyyy"

    goto :goto_db

    .line 366
    :cond_104
    const/4 v0, 0x0

    goto/16 :goto_5c
.end method

.method rightColumn(I)Landroid/widget/LinearLayout;
    .registers 16

    .prologue
    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 250
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Body fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "\u0412\u043e\u0434\u0430"

    const-string v2, "Water"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438"

    const-string v2, "Visceral"

    .line 251
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 252
    const/4 v0, 0x0

    move v2, v0

    :goto_37
    const/4 v0, 0x2

    if-ge v2, v0, :cond_127

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_42
    const/4 v0, 0x2

    if-ge v1, v0, :cond_113

    .line 255
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v1

    .line 256
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 257
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 258
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 259
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 260
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    aget-object v9, v4, v0

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v10, ""

    const/high16 v11, 0x41500000    # 13.0f

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    aput-object v9, v8, v0

    .line 263
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v9, "\u2014"

    const/high16 v10, 0x41e00000    # 28.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v0

    .line 266
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 267
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->spark:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    aput-object v8, v7, v0

    .line 269
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->spark:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    aget-object v7, v7, v0

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 272
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    aput-object v6, v7, v0

    .line 273
    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v1, :cond_110

    const/4 v0, 0x0

    :goto_102
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_42

    .line 273
    :cond_110
    const/16 v0, 0xa

    goto :goto_102

    .line 275
    :cond_113
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v2, :cond_124

    const/4 v0, 0x0

    :goto_118
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_37

    .line 275
    :cond_124
    const/16 v0, 0xa

    goto :goto_118

    .line 277
    :cond_127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    .line 279
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 281
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 283
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 284
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0422\u043e\u043a \u0434\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u00b7 \u043f\u043e \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v4, "Current to the muscle \u00b7 per channel"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    .line 288
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42ec0000    # 118.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    return-object v3
.end method

.method say(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    return-void
.end method

.method series(Ljava/lang/String;)[D
    .registers 9

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 496
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 497
    new-array v6, v5, [D

    move v4, v0

    .line 498
    :goto_e
    if-ge v4, v5, :cond_24

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_22

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :goto_1c
    aput-wide v0, v6, v4

    .line 498
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    :cond_22
    move-wide v0, v2

    .line 500
    goto :goto_1c

    .line 502
    :cond_24
    return-object v6
.end method

.method setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    .prologue
    .line 517
    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 518
    :cond_10
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_15
    return-void

    .line 521
    :cond_16
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 522
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-gez v0, :cond_38

    .line 523
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    .line 527
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_72

    const-string v0, "\u25b2 "

    :goto_45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_75

    const/4 v0, 0x1

    :goto_67
    if-ne v0, p6, :cond_77

    const/4 v0, 0x1

    .line 529
    :goto_6a
    if-eqz p7, :cond_79

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_6e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    .line 527
    :cond_72
    const-string v0, "\u25bc "

    goto :goto_45

    .line 528
    :cond_75
    const/4 v0, 0x0

    goto :goto_67

    :cond_77
    const/4 v0, 0x0

    goto :goto_6a

    .line 529
    :cond_79
    if-eqz v0, :cond_7e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_6e

    :cond_7e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_6e
.end method

.method setLayer(I)V
    .registers 3

    .prologue
    .line 549
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 550
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerControl()V

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->zones(Z)V

    .line 552
    return-void
.end method

.method setMetric(I)V
    .registers 2

    .prologue
    .line 555
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 556
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tilesAndTrend()V

    .line 557
    return-void
.end method

.method show()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_172

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_27
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_186

    :goto_2f
    const-string v2, "\u041a\u0430\u043d\u0442\u0430\u0440 \u00b7 \u0431\u043e\u0441, \u043f\u043e \u0442\u044a\u043d\u043a\u0438 \u0434\u0440\u0435\u0445\u0438, \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v3, "Scale \u00b7 barefoot, light clothes, before the training"

    .line 147
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    .line 146
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 153
    const/high16 v1, 0x43e60000    # 460.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x432a0000    # 170.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 156
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->leftColumn(I)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f733333    # 0.95f

    invoke-direct {v3, v5, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middleColumn(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    .line 159
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 160
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 161
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rightColumn(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    .line 163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3f8f5c29    # 1.12f

    invoke-direct {v2, v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 164
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041c\u0435\u0440\u0438 \u043f\u0430\u043a"

    const-string v2, "Measure again"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 179
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 183
    return-void

    .line 145
    :cond_172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_182
    const-string v0, ""

    goto/16 :goto_27

    .line 146
    :cond_186
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v2, "Scale"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f
.end method

.method showInfo(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 630
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 672
    :goto_14
    return-void

    .line 634
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 635
    const-string v1, "\u041c\u0435\u0440\u0435\u043d\u0435\n\u2022 \u0431\u043e\u0441\u0438 \u0441\u0442\u044a\u043f\u0430\u043b\u0430, \u0433\u043e\u043b\u0438 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u2014 \u0442\u044a\u043d\u043a\u0438\u0442\u0435 \u0434\u0440\u0435\u0445\u0438 \u043d\u0435 \u043f\u0440\u0435\u0447\u0430\u0442\n\u2022 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043e \u0435\u0434\u043d\u043e \u0438 \u0441\u044a\u0449\u043e \u0432\u0440\u0435\u043c\u0435, 2 \u0447 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\n\n\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\n\u0421\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 20 \u0438 100 kHz \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 EMS (\u0434\u0435\u043d 2\u20134) \u0433\u043e \u0432\u0434\u0438\u0433\u0430 \u2192 \u0434\u043d\u0435\u0441 \u043f\u043e-\u0441\u043b\u0430\u0431\u043e: \u221215 % \u0438\u043b\u0438 \u221230 %. \u0421\u044a\u0449\u043e\u0442\u043e \u043f\u0440\u0438\u043b\u0430\u0433\u0430\u0442 Auto \u0438 \u043f\u043b\u0430\u043d\u0430 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043a\u043b\u0438\u0435\u043d\u0442. \u041f\u043e-\u0441\u0438\u043b\u043d\u043e\u0442\u043e \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 (\u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 / \u043a\u0430\u043d\u0442\u0430\u0440) \u043f\u0435\u0447\u0435\u043b\u0438.\n\n\u0417\u043e\u043d\u0438\n100 % = \u043d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430, \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0438 \u043f\u043e\u043b\u0430 (WLA25, \u043a\u0430\u0442\u043e Fitdays). \u041f\u0443\u043d\u043a\u0442\u0438\u0440 = \u043c\u0438\u043d\u0430\u043b\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435.\n\n\u0422\u043e\u043a \u0434\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430\n\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043d\u0430\u0434 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442: \u043a\u044a\u0441\u0430 \u043a\u043e\u043b\u043e\u043d\u0430 = \u0442\u0430\u043c \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u2014 \u043d\u0443\u0436\u043d\u0430 \u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u0438\u043b\u0438 \u043f\u043e-\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441. \u0427\u0438\u0441\u043b\u043e\u0442\u043e \u0435 \u0441\u043f\u0440\u044f\u043c\u043e \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v2, "Measuring\n\u2022 bare feet, bare hands on the handle \u2014 light clothes do not matter\n\u2022 before the training, same time of day, 2 h after a meal\n\nReadiness\nThe 20 and 100 kHz impedance against this client\'s usual. Swelling after a hard EMS session (day 2\u20134) raises it \u2192 softer today: \u221215 % or \u221230 %. Auto and the next-client plan apply the same; the stronger of rest days and scale wins.\n\nZones\n100 % = normal for the height, weight and sex (WLA25, as Fitdays). Dashed = last time.\n\nCurrent to the muscle\nFat over a zone insulates: a short column = the current reaches less there \u2014 more strength or a wider pulse. Relative to the body\'s mean."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 659
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 660
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 661
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, -0xbd5a0b

    const v4, 0x3e23d70a    # 0.16f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    .line 662
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const v4, -0xbd5a0b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 661
    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x44020000    # 520.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 665
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 666
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 668
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x43f80000    # 496.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b2} :catch_b4

    goto/16 :goto_14

    .line 669
    :catch_b4
    move-exception v0

    .line 670
    const-string v1, "ScaleScreen.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method

.method startLink()V
    .registers 11

    .prologue
    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_9

    .line 561
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 563
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;-><init>(Landroid/content/Context;JZIIDLcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->start()V

    .line 567
    return-void
.end method

.method stepHeight(I)V
    .registers 6

    .prologue
    .line 320
    const/16 v0, 0x64

    const/16 v1, 0xdc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 323
    return-void
.end method

.method tilesAndTrend()V
    .registers 13

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 474
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    .line 475
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, " %"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, " \u043a\u0433"

    const-string v4, " kg"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, " %"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, ""

    aput-object v1, v9, v0

    .line 476
    const/4 v0, 0x4

    new-array v10, v0, [Z

    fill-array-data v10, :array_158

    .line 477
    const/4 v0, 0x4

    new-array v11, v0, [I

    fill-array-data v11, :array_15e

    .line 478
    const/4 v0, 0x0

    move v8, v0

    :goto_33
    const/4 v0, 0x4

    if-ge v8, v0, :cond_da

    .line 479
    if-eqz v2, :cond_a2

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 480
    :goto_42
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_a5

    const-string v0, "\u2014"

    :goto_4e
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v4, v0, v8

    const-string v5, ""

    aget-boolean v6, v10, v8

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->spark:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    aget-object v0, v0, v8

    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->times()[J

    move-result-object v4

    aget v5, v11, v8

    const-string v6, ""

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->set([D[JILjava/lang/String;)V

    .line 484
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    if-ne v0, v8, :cond_cc

    const/4 v0, 0x1

    .line 485
    :goto_7e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    aget-object v4, v1, v8

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    int-to-float v6, v1

    .line 486
    if-eqz v0, :cond_ce

    aget v1, v11, v8

    :goto_8f
    if-eqz v0, :cond_d7

    const/high16 v0, 0x40000000    # 2.0f

    :goto_93
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v0

    .line 485
    invoke-static {v5, v6, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_33

    .line 479
    :cond_a2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_42

    .line 481
    :cond_a5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    const/4 v6, 0x3

    if-ne v8, v6, :cond_c4

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_b2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    const/4 v0, 0x3

    if-ne v8, v0, :cond_c9

    const-string v0, ""

    :goto_bb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 480
    :cond_c4
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    .line 481
    :cond_c9
    aget-object v0, v9, v8

    goto :goto_bb

    .line 484
    :cond_cc
    const/4 v0, 0x0

    goto :goto_7e

    .line 486
    :cond_ce
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v7, 0x88

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto :goto_8f

    :cond_d7
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_93

    .line 488
    :cond_da
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u00b7 %"

    const-string v3, "Body fat \u00b7 %"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u00b7 \u043a\u0433"

    const-string v3, "Muscle \u00b7 kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0412\u043e\u0434\u0430 \u00b7 %"

    const-string v3, "Water \u00b7 %"

    .line 489
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438"

    const-string v3, "Visceral"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0422\u0435\u0433\u043b\u043e \u00b7 \u043a\u0433"

    const-string v3, "Weight \u00b7 kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 490
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v11, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v11, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v11, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget v3, v11, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    const v3, -0x587406

    aput v3, v1, v2

    .line 491
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->times()[J

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget v1, v1, v4

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->set([D[JILjava/lang/String;)V

    .line 493
    return-void

    .line 476
    :array_158
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 477
    :array_15e
    .array-data 4
        -0xa61f5
        -0xdd3aa2
        -0xc74208
        -0x68cea
    .end array-data
.end method

.method times()[J
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 506
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 507
    new-array v4, v3, [J

    move v2, v0

    .line 508
    :goto_c
    if-ge v2, v3, :cond_25

    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_22

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1c
    aput-wide v0, v4, v2

    .line 508
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 510
    :cond_22
    const-wide/16 v0, 0x0

    goto :goto_1c

    .line 512
    :cond_25
    return-object v4
.end method

.method updateHeight()V
    .registers 5

    .prologue
    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441\u043c"

    const-string v3, " cm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_24
    return-void
.end method

.method zones(Z)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 399
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v3

    .line 400
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v0, :cond_4a

    move v0, v1

    :goto_d
    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    invoke-virtual {p0, v3, v6, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v4, v0, v5, v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->set(ZI[DI)V

    .line 401
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v5

    .line 402
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4c

    const/4 v0, 0x0

    :goto_2a
    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 401
    invoke-virtual {v2, v4, v5, v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->set(I[D[DI)V

    .line 403
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-nez v0, :cond_57

    .line 404
    const-string v0, "\u25cf \u043f\u043e\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430   \u25cf \u043d\u043e\u0440\u043c\u0430   \u25cf \u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v1, "\u25cf below normal   \u25cf normal   \u25cf above"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_3d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detailText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-void

    :cond_4a
    move v0, v2

    .line 400
    goto :goto_d

    .line 402
    :cond_4c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v0

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    invoke-virtual {p0, v0, v6, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v0

    goto :goto_2a

    .line 405
    :cond_57
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-ne v0, v1, :cond_64

    .line 406
    const-string v0, "\u25cf \u043d\u0438\u0441\u043a\u043e   \u25cf \u043d\u043e\u0440\u043c\u0430   \u25cf \u0432\u0438\u0441\u043e\u043a\u043e"

    const-string v1, "\u25cf low   \u25cf normal   \u25cf high"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 407
    :cond_64
    const-string v0, "\u25cf \u043a\u0430\u0442\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e   \u25cf \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435   \u25cf \u0441\u0438\u043b\u043d\u043e \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435"

    const-string v1, "\u25cf as usual   \u25cf swelling   \u25cf strong swelling"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method
