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


# static fields
.field static final FAT_E:[Ljava/lang/String;

.field static final FAT_N:[Ljava/lang/String;

.field static final TILE_KEY:[Ljava/lang/String;


# instance fields
.field final a:Landroid/app/Activity;

.field again:Landroid/widget/TextView;

.field age:I

.field at:I

.field body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

.field change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

.field changeHead:Landroid/widget/TextView;

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

.field meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

.field metric:I

.field metricHolder:Landroid/widget/LinearLayout;

.field middle:Landroid/widget/LinearLayout;

.field mode:I

.field modeHolder:Landroid/widget/LinearLayout;

.field radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

.field range:I

.field rangeHolder:Landroid/widget/LinearLayout;

.field reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

.field reasons:Landroid/widget/LinearLayout;

.field right:Landroid/widget/LinearLayout;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field saved:Landroid/widget/TextView;

.field selected:I

.field status:Landroid/widget/TextView;

.field table:Landroid/widget/LinearLayout;

.field final tileDelta:[Landroid/widget/TextView;

.field final tileValue:[Landroid/widget/TextView;

.field final tiles:[Landroid/widget/LinearLayout;

.field trackLayer:I

.field trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

.field trendTitle:Landroid/widget/TextView;

.field typeChip:Landroid/widget/TextView;

.field final u:Lcom/isaigu/gymapp/bean/TrainUser;

.field final userId:J

.field weight:Landroid/widget/TextView;

.field weightDelta:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;

.field workH:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 366
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "fat"

    aput-object v1, v0, v2

    const-string v1, "muscle"

    aput-object v1, v0, v3

    const-string v1, "water"

    aput-object v1, v0, v4

    const-string v1, "age"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->TILE_KEY:[Ljava/lang/String;

    .line 393
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438"

    aput-object v1, v0, v2

    const-string v1, "\u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e"

    aput-object v1, v0, v3

    const-string v1, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    .line 394
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "very low"

    aput-object v1, v0, v2

    const-string v1, "lean"

    aput-object v1, v0, v3

    const-string v1, "normal"

    aput-object v1, v0, v4

    const-string v1, "overweight"

    aput-object v1, v0, v5

    const-string v1, "obese"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_E:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 9

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 76
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 107
    new-array v0, v3, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    .line 108
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    .line 109
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    .line 120
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 121
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 122
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    .line 123
    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 124
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 126
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    .line 127
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 128
    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 131
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    .line 132
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 133
    iget-wide v4, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    .line 134
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v3

    .line 135
    if-eqz v3, :cond_65

    .line 136
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_49

    .line 137
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v4, :cond_9b

    move v0, v1

    :goto_47
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 139
    :cond_49
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_55

    .line 140
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 142
    :cond_55
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 143
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_65

    .line 144
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 147
    :cond_65
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-lez v0, :cond_9d

    :goto_69
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    .line 148
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_8e

    .line 149
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

    .line 151
    :cond_8e
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_9a

    .line 152
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-eqz v0, :cond_9f

    const/16 v0, 0xb2

    :goto_98
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 154
    :cond_9a
    return-void

    :cond_9b
    move v0, v2

    .line 137
    goto :goto_47

    :cond_9d
    move v1, v2

    .line 147
    goto :goto_69

    .line 152
    :cond_9f
    const/16 v0, 0xa5

    goto :goto_98
.end method

.method static one(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1121
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

.method static part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 802
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 803
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 804
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 806
    return-void
.end method

.method static signedPct(D)Ljava/lang/String;
    .registers 10

    .prologue
    .line 1125
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

.method static slice([DI)[D
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1090
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1091
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [D

    .line 1092
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    return-object v1
.end method

.method static sliceT([JI)[J
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1097
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1098
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [J

    .line 1099
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    return-object v1
.end method


# virtual methods
.method build()V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\u0414\u043d\u0435\u0441"

    const-string v6, "Today"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "\u041f\u0440\u043e\u0441\u043b\u0435\u0434\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Tracking"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Mode;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Mode;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_4e

    .line 269
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->buildDay()V

    .line 283
    :cond_4d
    return-void

    .line 271
    :cond_4e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->buildTrack()V

    .line 272
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "\u0421\u043f\u0440\u044f\u043c\u043e \u043c\u0438\u043d\u0430\u043b\u043e\u0442\u043e"

    const-string v2, "Since last time"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "3 \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043d\u0430\u0437\u0430\u0434"

    const-string v2, "3 back"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "\u041e\u0442 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e"

    const-string v2, "Since the first"

    .line 273
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move v0, v1

    .line 274
    :goto_73
    array-length v2, v4

    if-ge v0, v2, :cond_4d

    .line 275
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    aget-object v6, v4, v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    if-ne v0, v2, :cond_a9

    move v2, v3

    :goto_7f
    const v7, -0xc74208

    invoke-static {v5, v6, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 276
    new-instance v5, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;

    invoke-direct {v5, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    .line 278
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 280
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_a9
    move v2, v1

    .line 275
    goto :goto_7f
.end method

.method buildDay()V
    .registers 14

    .prologue
    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 288
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "ready"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    .line 290
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x435c0000    # 220.0f

    .line 291
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    .line 293
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 294
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarCard()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Body fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "\u0412\u043e\u0434\u0430"

    const-string v2, "Water"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v2, "Age"

    .line 300
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 301
    const/4 v0, 0x0

    move v2, v0

    :goto_a8
    const/4 v0, 0x2

    if-ge v2, v0, :cond_192

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 303
    const/4 v0, 0x0

    move v1, v0

    :goto_b3
    const/4 v0, 0x2

    if-ge v1, v0, :cond_17c

    .line 304
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v1

    .line 305
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 306
    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 307
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 308
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 309
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  \u24d8"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41500000    # 13.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v9, ""

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v0

    .line 312
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v8, "\u2014"

    const/high16 v9, 0x41f00000    # 30.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v6, v0

    .line 315
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 316
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    aput-object v5, v6, v0

    .line 318
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->TILE_KEY:[Ljava/lang/String;

    aget-object v0, v7, v0

    invoke-direct {v6, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 320
    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v1, :cond_179

    const/4 v0, 0x0

    :goto_16b
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b3

    .line 320
    :cond_179
    const/16 v0, 0xa

    goto :goto_16b

    .line 322
    :cond_17c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v2, :cond_18f

    const/4 v0, 0x0

    :goto_183
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a8

    .line 322
    :cond_18f
    const/16 v0, 0xa

    goto :goto_183

    .line 324
    :cond_192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0422\u0438\u043f \u0442\u044f\u043b\u043e \u00b7 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430"

    const-string v3, "Body type \u00b7 for the height"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    .line 327
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0422\u043e\u043a \u0434\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u00b7 \u043f\u043e \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v3, "Current to the muscle \u00b7 per channel"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "reach"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    .line 333
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    return-void
.end method

.method buildTrack()V
    .registers 11

    .prologue
    const/16 v9, 0xc

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 340
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 341
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    .line 342
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    const-string v2, "trend"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    .line 344
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 346
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarCard()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 352
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "table"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    .line 354
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u043e\u0442 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v3, "Change since the start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "change"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    .line 360
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    .line 362
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    return-void
.end method

.method cardInfo(Landroid/view/View;Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 409
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v8

    .line 410
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v6

    .line 411
    const-string v3, ""

    .line 412
    const-string v2, ""

    .line 413
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 414
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 415
    if-eqz v8, :cond_18b

    const-string v4, "fat"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 416
    :goto_3f
    const-string v7, "fat"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 417
    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Body fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string v2, "\u041a\u0430\u043a\u0432\u0430 \u0447\u0430\u0441\u0442 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0430. \u041d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430\u0432\u0438\u0441\u0438 \u043e\u0442 \u043f\u043e\u043b\u0430 \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430. \u041f\u043e\u0434 \u043d\u0435\u044f \u2014 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0442\u044f\u043b\u043e; \u043c\u043d\u043e\u0433\u043e \u043f\u043e\u0434 \u043d\u0435\u044f \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0441\u0430\u043c\u043e \u0436\u0438\u0437\u043d\u0435\u043d\u043e \u043d\u0443\u0436\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438. \u041d\u0430\u0434 \u043d\u0435\u044f \u2014 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435."

    const-string v6, "How much of the weight is fat. The norm depends on sex and age. Below it \u2014 lean; far below only the essential fat is left. Above \u2014 overweight, then obese."

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    sget-object v8, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    sget-object v11, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_E:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 561
    const/high16 v4, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    const/high16 v7, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 562
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v5, -0xbd5a0b

    const v7, 0x3df5c28f    # 0.12f

    invoke-static {v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const v7, -0xbd5a0b

    const/high16 v8, 0x3f800000    # 1.0f

    .line 563
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    .line 562
    invoke-static {v4, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v5, 0x41880000    # 17.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {v4, v3, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {v3, v2, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 566
    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    const-string v4, ""

    .line 569
    const/4 v2, 0x0

    move v5, v2

    :goto_ff
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_71b

    .line 570
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 571
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_131

    .line 572
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v8, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v12, 0x1

    invoke-static {v7, v3, v8, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    :cond_131
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v7, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    .line 575
    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 576
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v11, 0x42c00000    # 96.0f

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v8, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 578
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_713

    const/high16 v3, 0x40000000    # 2.0f

    :goto_153
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 579
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7dc

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_717

    const-string v3, " \u00b7 "

    :goto_177
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    :goto_185
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    goto/16 :goto_ff

    .line 415
    :cond_18b
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_3f

    .line 423
    :cond_18f
    const-string v7, "muscle"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fd

    .line 424
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v3, "Muscle"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u0432\u0441\u0438\u0447\u043a\u043e \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438, \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430. \u0412 \u0441\u0440\u0435\u0434\u0430\u0442\u0430 \u0435 \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u043d\u0438; \u0432\u0434\u044f\u0441\u043d\u043e \u2014 \u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e. \u0422\u0443\u043a \u043f\u043e\u0432\u0435\u0447\u0435 \u0435 \u043f\u043e-\u0434\u043e\u0431\u0440\u0435: \u0442\u0435\u0436\u043a\u043e \u043e\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0442\u044f\u043b\u043e \u043d\u0435 \u0435 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e."

    const-string v4, "Muscle and everything that is not fat, for the height. The middle is usual for adults; to the right athletic. More is better here: weight from muscle is not overweight."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "very low"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "low"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "normal"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "athletic"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "very high"

    aput-object v12, v8, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f4} :catch_1f6

    goto/16 :goto_72

    .line 599
    :catch_1f6
    move-exception v2

    .line 600
    const-string v3, "ScaleScreen.cardInfo"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    :goto_1fc
    return-void

    .line 432
    :cond_1fd
    :try_start_1fd
    const-string v7, "water"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26f

    .line 433
    const-string v2, "\u0412\u043e\u0434\u0430"

    const-string v3, "Water"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    const-string v2, "\u041a\u0430\u043a\u0432\u0430 \u0447\u0430\u0441\u0442 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u0432\u043e\u0434\u0430. \u041d\u0438\u0441\u043a\u043e \u2014 \u043e\u0431\u0435\u0437\u0432\u043e\u0434\u043d\u044f\u0432\u0430\u043d\u0435: \u043d\u0435\u043a\u0430 \u043f\u0438\u0435 \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 (\u0442\u043e\u043a\u044a\u0442 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430 \u043f\u043e-\u0441\u0438\u043b\u043d\u043e). \u0412\u0438\u0441\u043e\u043a\u043e \u2014 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438 \u0438\u043b\u0438 \u043e\u0442\u043e\u043a."

    const-string v4, "How much of the weight is water. Low \u2014 dehydrated: have them drink before training (the current feels stronger). High \u2014 fluid retention or swelling."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    if-eqz v8, :cond_26c

    const-string v4, "water"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    :goto_221
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043d\u0438\u0441\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "very low"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "low"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "normal"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "high"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "very high"

    aput-object v12, v8, v11

    .line 439
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 438
    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_26c
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_221

    .line 441
    :cond_26f
    const-string v7, "age"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d6

    .line 442
    const-string v2, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v3, "Physical age"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    const-string v2, "\u041d\u0430 \u043a\u0430\u043a\u0432\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u2014 \u043f\u043e \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u043e\u0442 DXA \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043d\u0430 3 327 \u0434\u0443\u0448\u0438. \u041f\u0430\u0441\u043f\u043e\u0440\u0442\u043d\u0430\u0442\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0435 \u0443\u0447\u0430\u0441\u0442\u0432\u0430. \u00b13 \u0433\u043e\u0434\u0438\u043d\u0438 = \u043a\u0430\u0442\u043e \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435."

    const-string v4, "The age whose usual arm + leg muscle and fat match \u2014 from DXA scans of 3,327 people. The passport age is not used. \u00b13 years = as old as the years."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u043c\u043b\u0430\u0434"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043f\u043e-\u043c\u043b\u0430\u0434"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043a\u0430\u0442\u043e \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u043f\u043e-\u0441\u0442\u0430\u0440"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0441\u0442\u0430\u0440"

    aput-object v11, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "much younger"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "younger"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "as the years"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "older"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "much older"

    aput-object v12, v8, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageNorm(DI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 450
    :cond_2d6
    const-string v7, "weight"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_344

    .line 451
    const-string v2, "\u0422\u0435\u0433\u043b\u043e \u0438 \u0418\u0422\u041c"

    const-string v3, "Weight and BMI"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    const-string v2, "\u0418\u0422\u041c \u0441\u0440\u0430\u0432\u043d\u044f\u0432\u0430 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0441 \u0440\u044a\u0441\u0442\u0430, \u043d\u043e \u043d\u0435 \u0437\u043d\u0430\u0435 \u043e\u0442 \u043a\u0430\u043a\u0432\u043e \u0435 \u0442\u0435\u0433\u043b\u043e\u0442\u043e: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0433\u043e \u0432\u0434\u0438\u0433\u0430\u0442 \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438. \u0417\u0430\u0442\u043e\u0432\u0430 \u0440\u0435\u0448\u0430\u0432\u0430 \u201e\u0422\u0438\u043f \u0442\u044f\u043b\u043e\u201c, \u043d\u0435 \u0418\u0422\u041c."

    const-string v4, "BMI compares the weight with the height but not what the weight is made of: muscle raises it without fat. So the body type decides, not BMI."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    if-eqz v8, :cond_341

    const-string v4, "bmi"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    :goto_2fa
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u044a\u043a"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "\u043d\u0438\u0441\u044a\u043a"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "\u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "very low"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "low"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "normal"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "above"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "obese"

    aput-object v11, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->bmiNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_341
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2fa

    .line 459
    :cond_344
    const-string v7, "ready"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c2

    .line 460
    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442 \u0437\u0430 \u0434\u043d\u0435\u0441"

    const-string v3, "Readiness today"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    const-string v2, "\u041a\u0430\u043a \u0441\u0430 \u0442\u044a\u043a\u0430\u043d\u0438\u0442\u0435 \u0434\u043d\u0435\u0441 \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 EMS (\u0434\u0435\u043d 2\u20134) \u0438\u043b\u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0432\u043e\u0434\u0430 \u044f \u0441\u0432\u0430\u043b\u044f\u0442 \u2014 \u0442\u043e\u0433\u0430\u0432\u0430 \u0434\u043d\u0435\u0441 \u043f\u043e-\u0441\u043b\u0430\u0431\u043e: \u221215 % \u0438\u043b\u0438 \u221230 %. \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0438 \u043f\u043b\u0430\u043d\u044a\u0442 \u0433\u043e \u043f\u0440\u0438\u043b\u0430\u0433\u0430\u0442 \u0441\u0430\u043c\u0438."

    const-string v4, "How the tissues are today against this client\'s usual. Swelling after a hard EMS session (day 2\u20134) or less water lowers it \u2014 then softer today: \u221215 % or \u221230 %. Auto and the plan apply it by themselves."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    if-eqz v8, :cond_3c0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 467
    :goto_36e
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 468
    iget v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    int-to-double v4, v4

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u221230 %"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "\u221215 %"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "\u0432\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "\u0434\u043e\u0431\u0440\u0435"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "\u043f\u044a\u043b\u043d\u0430 \u0441\u0438\u043b\u0430"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u221230 %"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u221215 %"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "careful"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "good"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "full"

    aput-object v11, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readyNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 466
    :cond_3c0
    const/4 v4, 0x0

    goto :goto_36e

    .line 472
    :cond_3c2
    const-string v7, "zones"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4bc

    .line 473
    const-string v2, "\u0417\u043e\u043d\u0438 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v3, "Zones against normal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 474
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0432\u044a\u0432 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430 \u0438 \u0442\u0435\u0433\u043b\u043e\u0442\u043e (100 %). \u041f\u0443\u043d\u043a\u0442\u0438\u0440\u044a\u0442 \u0435 \u0441\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0444\u0438\u0433\u0443\u0440\u0430\u0442\u0430 \u0438\u043b\u0438 \u0440\u0430\u0434\u0430\u0440\u0430, \u0437\u0430 \u0434\u0430 \u0432\u0438\u0434\u0438\u0448 \u043d\u0435\u044f."

    const-string v3, "The muscle of each zone against normal for the height and weight (100 %). Dashed = the comparison. Tap a zone on the figure or the radar to see it."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 479
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 480
    if-gez v4, :cond_40e

    .line 481
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 482
    const/4 v5, 0x0

    :goto_3f7
    const/4 v11, 0x5

    if-ge v5, v11, :cond_40e

    .line 483
    aget-wide v12, v8, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_40b

    aget-wide v12, v8, v5

    cmpg-double v11, v12, v2

    if-gez v11, :cond_40b

    .line 484
    aget-wide v2, v8, v5

    move v4, v5

    .line 482
    :cond_40b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f7

    .line 489
    :cond_40e
    if-ltz v4, :cond_4b5

    .line 490
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "\u0422\u043e\u0440\u0441"

    const-string v11, "Trunk"

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    const-string v11, "Left arm"

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    const-string v11, "Right arm"

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    const-string v11, "Left leg"

    .line 491
    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v11, "Right leg"

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    if-gez v2, :cond_4b9

    const-string v2, " \u00b7 \u043d\u0430\u0439-\u0441\u043b\u0430\u0431\u0430\u0442\u0430 \u0437\u043e\u043d\u0430"

    const-string v5, " \u00b7 the weakest zone"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_463
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    aget-wide v2, v8, v4

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string v8, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v8, v4, v5

    const/4 v5, 0x3

    const-string v8, "\u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-string v8, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v8, v4, v5

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "very low"

    aput-object v11, v5, v8

    const/4 v8, 0x1

    const-string v11, "low"

    aput-object v11, v5, v8

    const/4 v8, 0x2

    const-string v11, "normal"

    aput-object v11, v5, v8

    const/4 v8, 0x3

    const-string v11, "above"

    aput-object v11, v5, v8

    const/4 v8, 0x4

    const-string v11, "very high"

    aput-object v11, v5, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->zoneNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b5
    move-object v2, v6

    move-object v3, v7

    .line 497
    goto/16 :goto_72

    .line 492
    :cond_4b9
    const-string v2, ""

    goto :goto_463

    .line 497
    :cond_4bc
    const-string v7, "body"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5af

    .line 498
    const-string v2, "\u0422\u0438\u043f \u0442\u044f\u043b\u043e"

    const-string v3, "Body type"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043f\u043e\u043e\u0442\u0434\u0435\u043b\u043d\u043e, \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430 \u2014 \u0437\u0430\u0442\u043e\u0432\u0430 \u043f\u043b\u044a\u0442\u043d\u0430\u0442\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430 \u0435 \u201e\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e\u201c, \u0430 \u043d\u0435 \u201e\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e\u201c. \u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0430 \u043e\u043a\u043e\u043b\u043e \u043e\u0440\u0433\u0430\u043d\u0438\u0442\u0435."

    const-string v7, "Muscle and fat separately, for the height \u2014 so dense muscle is \"athletic\", not \"overweight\". Visceral fat sits around the organs."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    const-string v7, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v11, "Muscle"

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-wide v6, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "very low"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "low"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "normal"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, "athletic"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "very high"

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v7, v11, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v7, "Fat"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    sget-object v11, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    sget-object v12, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_E:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5, v6, v7, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    const-string v4, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v5, "Visceral fat"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    if-eqz v8, :cond_5ac

    const-string v4, "visc"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    :goto_565
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "\u043d\u0438\u0441\u043a\u0438"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "\u0432\u0438\u0441\u043e\u043a\u0438"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0438"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "very low"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "low"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "normal"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "high"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "very high"

    aput-object v11, v7, v8

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_5ac
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_565

    .line 513
    :cond_5af
    const-string v7, "reach"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5cb

    .line 514
    const-string v2, "\u0422\u043e\u043a \u0434\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    const-string v3, "Current to the muscle"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043d\u0430\u0434 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442 \u0442\u043e\u043a\u0430. \u0412\u0441\u044f\u043a\u0430 \u043a\u043e\u043b\u043e\u043d\u0430 \u0435 \u0435\u0434\u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430: \u043a\u043e\u043b\u043a\u043e \u0442\u043e\u043a \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043d\u0435\u044f \u0441\u043f\u0440\u044f\u043c\u043e \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u044f\u043b\u043e\u0442\u043e. \u221210 = \u0442\u0430\u043c \u0435 \u043d\u0443\u0436\u043d\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u0438\u043b\u0438 \u043f\u043e-\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441. \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0433\u043e \u0441\u043c\u044f\u0442\u0430 \u0441\u0430\u043c."

    const-string v4, "Fat over a muscle insulates the current. Each column is one suit muscle group: how much current reaches it against the body\'s mean. \u221210 = more strength or a wider pulse there. Auto accounts for it."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 520
    :cond_5cb
    const-string v7, "figure"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f8

    .line 521
    const-string v2, "\u0424\u0438\u0433\u0443\u0440\u0430\u0442\u0430"

    const-string v3, "The figure"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5ee

    .line 523
    const-string v2, "\u0412\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0435 \u043e\u0446\u0432\u0435\u0442\u0435\u043d\u0430 \u043f\u043e \u043f\u0440\u043e\u043c\u044f\u043d\u0430\u0442\u0430 \u043e\u0442 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430: \u0437\u0435\u043b\u0435\u043d\u043e \u2014 \u043a\u044a\u043c \u0434\u043e\u0431\u0440\u043e (\u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043f\u0440\u0438\u0431\u0430\u0432\u0435\u043d\u0438 / \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0432\u0430\u043b\u0435\u043d\u0438), \u0436\u044a\u043b\u0442\u043e \u2014 \u043e\u0431\u0440\u0430\u0442\u043d\u043e\u0442\u043e, \u0441\u0438\u0432\u043e \u2014 \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430."

    const-string v4, "Each zone is coloured by its change since the start of the period: green the good way (muscle gained / fat lost), amber the other, grey no change."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 527
    :cond_5ee
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 \u2014 \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 (\u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430). \u0422\u043e\u043a \u2014 \u0432\u0441\u044f\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u043f\u043e \u0442\u043e\u0432\u0430 \u043a\u043e\u043b\u043a\u043e \u0442\u043e\u043a \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043d\u0435\u044f. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u0437\u0430 \u0447\u0438\u0441\u043b\u0430\u0442\u0430 \u045d."

    const-string v4, "Muscle and Fat \u2014 each zone against normal. Swelling \u2014 against the client\'s usual (after a hard session). Current \u2014 each suit muscle group by how much current reaches it. Tap a zone for its numbers."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 533
    :cond_5f8
    const-string v7, "trend"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6db

    .line 534
    const-string v2, "\u0422\u0440\u0435\u043d\u0434"

    const-string v3, "Trend"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    const-string v2, "\u041a\u0430\u043a \u0441\u0435 \u043c\u0435\u043d\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u044f\u0442 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u043e\u0442 \u043c\u0435\u0440\u0435\u043d\u0435 \u0434\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u0432 \u043f\u0435\u0440\u0438\u043e\u0434\u0430. \u0418\u0437\u0431\u0435\u0440\u0438 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u043e\u0442\u0433\u043e\u0440\u0435; \u043f\u0435\u0440\u0438\u043e\u0434\u0430 \u2014 \u0433\u043e\u0440\u0435 \u0432\u0434\u044f\u0441\u043d\u043e."

    const-string v7, "How the chosen value moves from measurement to measurement. Pick the value above; the period top right."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    if-nez v7, :cond_633

    .line 539
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    sget-object v8, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    sget-object v11, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_E:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 540
    :cond_633
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_687

    .line 541
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v11, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "very low"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "low"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "normal"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "athletic"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "very high"

    aput-object v12, v8, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 544
    :cond_687
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_72

    .line 545
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u043c\u043b\u0430\u0434"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043f\u043e-\u043c\u043b\u0430\u0434"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043a\u0430\u0442\u043e \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u043f\u043e-\u0441\u0442\u0430\u0440"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0441\u0442\u0430\u0440"

    aput-object v11, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "much younger"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "younger"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "as the years"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "older"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "much older"

    aput-object v12, v8, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageNorm(DI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 549
    :cond_6db
    const-string v4, "table"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f7

    .line 550
    const-string v2, "\u0422\u043e\u0433\u0430\u0432\u0430 \u2192 \u0441\u0435\u0433\u0430"

    const-string v3, "Then \u2192 now"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    const-string v2, "\u0412\u0441\u0435\u043a\u0438 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430 \u0438 \u0441\u0435\u0433\u0430. \u0417\u0435\u043b\u0435\u043d\u043e \u2014 \u043a\u044a\u043c \u0434\u043e\u0431\u0440\u043e, \u0436\u044a\u043b\u0442\u043e \u2014 \u043e\u0431\u0440\u0430\u0442\u043d\u043e\u0442\u043e."

    const-string v4, "Each value at the start of the period and now. Green the good way, amber the other."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 553
    :cond_6f7
    const-string v4, "change"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 554
    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u043e\u0442 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v3, "Change since the start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    const-string v2, "\u041a\u043e\u043b\u043a\u043e \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0430 \u0434\u043e\u0448\u043b\u0438 \u0438\u043b\u0438 \u043e\u0442\u0438\u0448\u043b\u0438 \u043e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u0432 \u043f\u0435\u0440\u0438\u043e\u0434\u0430. \u0422\u0435\u0433\u043b\u043e\u0442\u043e \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u0442\u043e\u0438, \u0434\u043e\u043a\u0430\u0442\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043f\u0430\u0434\u0430\u0442 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0440\u0430\u0441\u0442\u0430\u0442 \u2014 \u0442\u043e\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v4, "How many kg of muscle and fat came or went since the first measurement of the period. The weight can stay while fat falls and muscle grows \u2014 that is the aim."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 578
    :cond_713
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_153

    .line 581
    :cond_717
    const-string v3, ""

    goto/16 :goto_177

    .line 584
    :cond_71b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_73a

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v3, 0x41300000    # 11.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v7, 0x0

    invoke-static {v2, v4, v3, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    :cond_73a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7d8

    const/high16 v2, 0x43f00000    # 480.0f

    :goto_742
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    .line 588
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v3, v6, v2, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 593
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 594
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 596
    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    sub-int/2addr v4, v2

    const/high16 v7, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v7, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const v5, 0x800033

    const/4 v7, 0x1

    aget v3, v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 598
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V
    :try_end_7d6
    .catch Ljava/lang/Throwable; {:try_start_1fd .. :try_end_7d6} :catch_1f6

    goto/16 :goto_1fc

    .line 587
    :cond_7d8
    const/high16 v2, 0x43d20000    # 420.0f

    goto/16 :goto_742

    :cond_7dc
    move-object v2, v4

    goto/16 :goto_185
.end method

.method changeHead([D[D)V
    .registers 15

    .prologue
    .line 787
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :goto_b
    return-void

    .line 791
    :cond_c
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    sub-double v2, v0, v2

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p2, v0

    const/4 v4, 0x0

    aget-wide v4, p2, v4

    sub-double v4, v0, v4

    .line 792
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x0

    cmpl-double v0, v2, v8

    if-ltz v0, :cond_af

    const-string v0, "+"

    :goto_32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v7, " kg muscle"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 794
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v8, v10

    if-gez v0, :cond_b2

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 793
    :goto_61
    invoke-static {v1, v6, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 795
    const-string v0, "   "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_be

    const-string v0, "+"

    :goto_76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043a\u0433 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, " kg fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v6, v8

    if-gez v0, :cond_c1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 796
    :goto_a5
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 798
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 793
    :cond_af
    const-string v0, "\u2212"

    goto :goto_32

    .line 794
    :cond_b2
    const-wide/16 v8, 0x0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_61

    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_61

    .line 796
    :cond_be
    const-string v0, "\u2212"

    goto :goto_76

    .line 797
    :cond_c1
    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_ca

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_a5

    :cond_ca
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_a5
.end method

.method cur()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 667
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

.method deltaTable(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 15

    .prologue
    .line 821
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 822
    if-nez p2, :cond_8

    .line 834
    :goto_7
    return-void

    .line 825
    :cond_8
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v9

    .line 826
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v10

    .line 827
    const-string v0, "\u0422\u0435\u0433\u043b\u043e"

    const-string v1, "Weight"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "w"

    const-string v0, " \u043a\u0433"

    const-string v2, " kg"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 828
    const-string v0, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "fatKg"

    const-string v0, " \u043a\u0433"

    const-string v2, " kg"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 829
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v1, "Muscle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "muscle"

    const-string v0, " \u043a\u0433"

    const-string v2, " kg"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 830
    const-string v0, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 %"

    const-string v1, "Fat %"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "fat"

    const-string v5, " %"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 831
    const-string v0, "\u0412\u043e\u0434\u0430"

    const-string v1, "Water"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "water"

    const-string v5, " %"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 832
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v1, "Age"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    iget-wide v4, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rowValues(Ljava/lang/String;DDLjava/lang/String;ZZZ)V

    .line 833
    const-string v0, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438"

    const-string v1, "Visceral"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "visc"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7
.end method

.method detailText(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 947
    if-eqz p1, :cond_f

    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 948
    :cond_f
    const-string v0, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0444\u0438\u0433\u0443\u0440\u0430\u0442\u0430"

    const-string v1, "Tap a zone on the figure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    :goto_17
    return-object v0

    .line 950
    :cond_18
    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 951
    const-string v1, "segFat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 952
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    if-gez v2, :cond_bf

    .line 953
    invoke-static {v0, v10, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v2

    .line 954
    invoke-static {v0, v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v4

    .line 955
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 956
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v0, ""

    .line 960
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0411\u0430\u043b\u0430\u043d\u0441 \u041b/\u0414 \u00b7 \u0440\u044a\u0446\u0435 "

    const-string v7, "Balance L/R \u00b7 arms "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  \u043a\u0440\u0430\u043a\u0430 "

    const-string v3, "  \u00b7  legs "

    .line 961
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  \u0432\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 "

    const-string v3, "  \u00b7  visceral "

    .line 962
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "visc"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 957
    :cond_8e
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_a2

    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u0432 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438 \u0431\u0435\u0434\u0440\u0430\u0442\u0430"

    const-string v1, "  \u00b7  fat: legs and hips"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 958
    :cond_a2
    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    const-wide v6, 0x3fd47ae147ae147bL    # 0.32

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_b6

    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u043e\u043a\u043e\u043b\u043e \u043a\u043e\u0440\u0435\u043c\u0430"

    const-string v1, "  \u00b7  fat: round the belly"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 959
    :cond_b6
    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e"

    const-string v1, "  \u00b7  fat: even"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 964
    :cond_bf
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    .line 965
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v3

    .line 966
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "\u0422\u043e\u0440\u0441"

    const-string v6, "Trunk"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    const-string v6, "Left arm"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    const-string v6, "Right arm"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    const-string v6, "Left leg"

    .line 967
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v6, "Right leg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 968
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 969
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

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u043a\u0433 ("

    const-string v7, " kg ("

    .line 970
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v8

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " %)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    const-string v4, "  \u00b7  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    const-string v7, "fat "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u043a\u0433 ("

    const-string v6, " kg ("

    .line 972
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, v10

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v2, v4

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatMid(Z)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u043e\u0442 \u0437\u043e\u043d\u0430\u0442\u0430)"

    const-string v4, " % of the zone)"

    .line 973
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v1, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1c8

    .line 975
    const-string v1, "  \u00b7  "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 "

    const-string v4, "swelling "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    :cond_1c8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v1

    .line 978
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-ne v2, v10, :cond_22a

    if-eqz v1, :cond_22a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v2, v3, :cond_22a

    const-string v2, "segMus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_22a

    .line 979
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    const-string v0, "segMus"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    sub-double/2addr v2, v0

    .line 980
    const-string v0, "  \u00b7  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043f\u0440\u043e\u043c\u044f\u043d\u0430 "

    const-string v4, "change "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_230

    const-string v0, "+"

    :goto_20f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, " kg muscle"

    .line 981
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    :cond_22a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 980
    :cond_230
    const-string v0, "\u2212"

    goto :goto_20f
.end method

.method dot(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "i"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 382
    const-string v1, "\u041a\u0430\u043a\u0432\u043e \u0437\u043d\u0430\u0447\u0438"

    const-string v2, "What it means"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-object v0
.end method

.method dotLp()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    .line 388
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 389
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 390
    return-object v0
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method figure()V
    .registers 15

    .prologue
    const/16 v10, 0xa

    const/4 v0, 0x0

    const/4 v13, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 893
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 894
    new-array v12, v13, [I

    .line 895
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_5f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5f

    .line 896
    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v0

    .line 897
    :cond_1b
    new-array v4, v10, [I

    .line 898
    if-eqz v0, :cond_45

    .line 899
    const-wide/16 v2, 0x0

    .line 900
    array-length v5, v0

    move v1, v9

    :goto_23
    if-ge v1, v5, :cond_2f

    aget-wide v6, v0, v1

    .line 901
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->factor(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 903
    :cond_2f
    array-length v1, v0

    int-to-double v6, v1

    div-double/2addr v2, v6

    move v1, v9

    .line 904
    :goto_33
    if-ge v1, v10, :cond_45

    .line 905
    aget-wide v6, v0, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->factor(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->reachCol(D)I

    move-result v5

    aput v5, v4, v1

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 908
    :cond_45
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v0, :cond_5d

    move v0, v8

    :goto_4c
    invoke-virtual {v1, v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setChannels(Z[I)V

    .line 909
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u0434\u043e\u0431\u0440\u0435   \u25cf \u043f\u043e-\u043c\u0430\u043b\u043a\u043e   \u25cf \u043d\u0430\u0439-\u043c\u0430\u043b\u043a\u043e \u2014 \u0442\u0430\u043c \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430"

    const-string v2, "\u25cf the current reaches well   \u25cf less   \u25cf least \u2014 more strength there"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    :goto_5c
    return-void

    :cond_5d
    move v0, v9

    .line 908
    goto :goto_4c

    .line 913
    :cond_5f
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_b9

    .line 914
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    invoke-virtual {p0, v2, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    move v1, v9

    .line 915
    :goto_6a
    if-ge v1, v13, :cond_86

    .line 916
    if-eqz v2, :cond_76

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_76
    move v0, v9

    :goto_77
    aput v0, v12, v1

    .line 915
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    .line 916
    :cond_7d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    aget-wide v4, v2, v1

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->layerCol(ID)I

    move-result v0

    goto :goto_77

    .line 918
    :cond_86
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-nez v0, :cond_a3

    .line 919
    const-string v0, "\u25cf \u043f\u043e\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430   \u25cf \u043d\u043e\u0440\u043c\u0430   \u25cf \u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v2, "\u25cf below normal   \u25cf normal   \u25cf above"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    :goto_94
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :goto_97
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v1, :cond_140

    :goto_9d
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v0, v8, v12, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    goto :goto_5c

    .line 920
    :cond_a3
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-ne v0, v8, :cond_b0

    .line 921
    const-string v0, "\u25cf \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e   \u25cf \u043d\u0430\u0434 \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e   \u25cf \u0432\u0438\u0441\u043e\u043a\u043e"

    const-string v2, "\u25cf healthy   \u25cf above the middle   \u25cf high"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 922
    :cond_b0
    const-string v0, "\u25cf \u043a\u0430\u0442\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e   \u25cf \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435   \u25cf \u0441\u0438\u043b\u043d\u043e \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435"

    const-string v2, "\u25cf as usual   \u25cf swelling   \u25cf strong swelling"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 925
    :cond_b9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v4

    .line 926
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v1, :cond_ec

    move v3, v8

    .line 927
    :goto_c2
    if-eqz v4, :cond_f1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v1

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v5, :cond_f1

    if-eqz v3, :cond_ee

    const-string v1, "segMus"

    :goto_d0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v11, v1

    .line 928
    :goto_d5
    if-eqz v2, :cond_df

    if-eqz v3, :cond_f3

    const-string v0, "segMus"

    :goto_db
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_df
    move v10, v9

    .line 929
    :goto_e0
    if-ge v10, v13, :cond_126

    .line 930
    if-eqz v11, :cond_e6

    if-nez v0, :cond_f6

    .line 931
    :cond_e6
    aput v9, v12, v10

    .line 929
    :goto_e8
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_e0

    :cond_ec
    move v3, v9

    .line 926
    goto :goto_c2

    .line 927
    :cond_ee
    const-string v1, "segFat"

    goto :goto_d0

    :cond_f1
    move-object v11, v0

    goto :goto_d5

    .line 928
    :cond_f3
    const-string v0, "segFat"

    goto :goto_db

    .line 934
    :cond_f6
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    sub-double v1, v4, v6

    .line 935
    if-eqz v10, :cond_118

    move v6, v8

    .line 936
    :goto_103
    if-eqz v6, :cond_11a

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    :goto_10a
    if-eqz v6, :cond_120

    const-wide v6, 0x3fd999999999999aL    # 0.4

    :goto_111
    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->deltaCol(DZDD)I

    move-result v1

    aput v1, v12, v10

    goto :goto_e8

    :cond_118
    move v6, v9

    .line 935
    goto :goto_103

    .line 936
    :cond_11a
    const-wide v4, 0x3fb999999999999aL    # 0.1

    goto :goto_10a

    :cond_120
    const-wide v6, 0x3ff3333333333333L    # 1.2

    goto :goto_111

    .line 938
    :cond_126
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    if-eqz v3, :cond_137

    const-string v0, "\u25cf \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043f\u0440\u0438\u0431\u0430\u0432\u0435\u043d\u0438   \u25cf \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430   \u25cf \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0437\u0430\u0433\u0443\u0431\u0435\u043d\u0438"

    const-string v2, "\u25cf muscle gained   \u25cf no change   \u25cf muscle lost"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_97

    .line 940
    :cond_137
    const-string v0, "\u25cf \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0432\u0430\u043b\u0435\u043d\u0438   \u25cf \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430   \u25cf \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043a\u0430\u0447\u0435\u043d\u0438"

    const-string v2, "\u25cf fat lost   \u25cf no change   \u25cf fat gained"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_140
    move v8, v9

    .line 943
    goto/16 :goto_9d
.end method

.method flex(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 617
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 618
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 619
    return-object v0
.end method

.method from()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v0

    .line 684
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method fromIndex()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 676
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v2, :cond_9

    .line 677
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 679
    :cond_8
    :goto_8
    return v0

    :cond_9
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    if-nez v1, :cond_12

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_12
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_8
.end method

.method header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 371
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 372
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 373
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    :cond_1a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dot(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dotLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    return-object v1
.end method

.method heightStepper()Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/16 v6, 0x30

    const/4 v8, 0x1

    const/high16 v7, 0x42400000    # 48.0f

    .line 635
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 636
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 637
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

    .line 639
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    .line 641
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 642
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 643
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 647
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v2, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 648
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 649
    return-object v0
.end method

.method indexOf(Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    .line 883
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 884
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-ne v1, p1, :cond_12

    .line 888
    :goto_11
    return v0

    .line 883
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    goto :goto_11
.end method

.method layerControl()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 623
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 624
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_6d

    .line 625
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435"

    const-string v2, "Swelling"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "\u0422\u043e\u043a"

    const-string v3, "Current"

    .line 626
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 628
    :goto_38
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 629
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_84

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    :goto_49
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v3, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    const-string v1, "figure"

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dot(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dotLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    return-void

    .line 627
    :cond_6d
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u00b7 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Change \u00b7 muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u00b7 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Change \u00b7 fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_38

    .line 629
    :cond_84
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    goto :goto_49
.end method

.method layerValues(Lorg/json/JSONObject;IZ)[D
    .registers 15

    .prologue
    const/4 v10, 0x5

    const/4 v0, 0x0

    .line 868
    if-nez p1, :cond_6

    .line 869
    const/4 v0, 0x0

    .line 879
    :goto_5
    return-object v0

    .line 871
    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_31

    .line 872
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 873
    new-array v2, v10, [D

    move v3, v0

    .line 874
    :goto_16
    if-ge v3, v10, :cond_2f

    .line 875
    if-eqz p3, :cond_2a

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v6, v5, v3

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    :goto_24
    aput-wide v0, v2, v3

    .line 874
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 875
    :cond_2a
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v0, v0, v3

    goto :goto_24

    :cond_2f
    move-object v0, v2

    .line 877
    goto :goto_5

    .line 879
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

.method leftColumn()Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v10, -0x2

    const/16 v1, 0x8

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 218
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 219
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2014"

    const/high16 v6, 0x42580000    # 54.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    .line 220
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 221
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, " \u043a\u0433"

    const-string v6, " kg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41900000    # 18.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 223
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    .line 226
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v2, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 227
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    const-string v5, "weight"

    invoke-direct {v4, p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 231
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 232
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    .line 233
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2713 \u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e"

    const-string v6, "\u2713 Saved"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    .line 235
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightStepper()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    .line 246
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    if-eqz v0, :cond_171

    move v0, v1

    :goto_111
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-object v3

    :cond_171
    move v0, v2

    .line 246
    goto :goto_111
.end method

.method names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 397
    const-string v0, "\u0431"

    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0431"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    return-object p1

    :cond_11
    move-object p1, p2

    goto :goto_10
.end method

.method public onLive(DZ)V
    .registers 7

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_13

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1220
    return-void

    .line 1219
    :cond_13
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_f
.end method

.method public onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1226
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v0

    .line 1227
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v1, v2, v3, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_31

    .line 1229
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1230
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1232
    :cond_31
    if-nez v0, :cond_40

    .line 1233
    const-string v0, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e \u2014 \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435"

    const-string v1, "Weight only \u2014 hold the handle with both hands"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    .line 1236
    :cond_40
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 1237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 1239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 1240
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-eqz v0, :cond_66

    .line 1241
    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 1242
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1244
    :cond_66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1245
    return-void
.end method

.method public onSegment(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1132
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 1133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->figure()V

    .line 1134
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 1135
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_1f

    .line 1136
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_17

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarLayer()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 1141
    :goto_1e
    return-void

    .line 1138
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v3, :cond_2b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v0

    .line 1139
    :cond_2b
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v1, :cond_34

    const/4 v1, 0x0

    .line 1138
    :goto_30
    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    goto :goto_1e

    .line 1139
    :cond_34
    const/4 v1, 0x1

    goto :goto_30
.end method

.method public onState(I)V
    .registers 4

    .prologue
    .line 1189
    packed-switch p1, :pswitch_data_4a

    .line 1209
    :goto_3
    return-void

    .line 1191
    :pswitch_4
    const-string v0, "\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v1, "Step on the scale barefoot"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 1194
    :pswitch_12
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 1198
    :pswitch_20
    const-string v0, "\u0425\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0434\u0440\u044a\u0436"

    const-string v1, "Hold the handle and stay still"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 1201
    :pswitch_2e
    const-string v0, "\u2713 \u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043b\u0435\u0437\u0435"

    const-string v1, "\u2713 Done \u2014 step off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 1204
    :pswitch_3c
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 1189
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
    .line 671
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

.method radarCard()Landroid/widget/LinearLayout;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0417\u043e\u043d\u0438 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v3, "Zones against normal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "zones"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    .line 608
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 609
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    .line 611
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 612
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    return-object v0
.end method

.method radarLayer()I
    .registers 3

    .prologue
    .line 809
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    goto :goto_6
.end method

.method radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 813
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatMid(Z)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    .line 814
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {p0, p1, p3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_24

    const/4 v0, 0x0

    :goto_15
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v1, p3, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->set(I[D[DI)V

    .line 816
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detailText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    return-void

    .line 814
    :cond_24
    invoke-virtual {p0, p2, p3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v0

    goto :goto_15
.end method

.method readiness(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1032
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1033
    if-eqz p1, :cond_13

    const-string v0, "z20"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_23

    .line 1034
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    const-string v1, "\u0421\u0442\u044a\u043f\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v2, "Step on the scale"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v7, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_22
    :goto_22
    return-void

    .line 1037
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v1

    .line 1038
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1039
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    const-string v1, "\u0411\u0430\u0437\u0430\u0442\u0430 \u0441\u0435 \u0442\u0440\u0443\u043f\u0430"

    const-string v2, "Building the baseline"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u0434\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v3, "readiness comes with the second measurement"

    .line 1040
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {v0, v7, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 1043
    :cond_49
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_157

    const-string v0, "\u041f\u044a\u043b\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v2, "Full strength"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
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

    .line 1046
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    invoke-virtual {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v0, :cond_10c

    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v2, v0, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_10c

    .line 1049
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

    .line 1050
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u0414. \u043a\u0440\u0430\u043a"

    const-string v4, "R leg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1051
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

    .line 1052
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v4

    .line 1051
    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1054
    :cond_10c
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_22

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_22

    .line 1055
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

    .line 1057
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1059
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1060
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_22

    .line 1044
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
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 689
    if-eqz v2, :cond_86

    const-string v0, "fat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    move v0, v7

    .line 690
    :goto_16
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_88

    move v1, v3

    :goto_1b
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 691
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8a

    :goto_22
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 692
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerControl()V

    .line 693
    if-eqz v2, :cond_54

    if-nez p1, :cond_54

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 694
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    const-string v1, "w"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 697
    :cond_54
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_8c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    :goto_5e
    const-string v4, "w"

    const-string v0, " \u043a\u0433"

    const-string v5, " kg"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 698
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip(Lorg/json/JSONObject;)V

    .line 699
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->figure()V

    .line 700
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_91

    .line 701
    invoke-virtual {p0, v2, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->renderDay(Lorg/json/JSONObject;Z)V

    .line 705
    :goto_79
    if-eqz p1, :cond_85

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->animateIn()V

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->animateIn()V

    .line 709
    :cond_85
    return-void

    :cond_86
    move v0, v6

    .line 689
    goto :goto_16

    :cond_88
    move v1, v4

    .line 690
    goto :goto_1b

    :cond_8a
    move v3, v4

    .line 691
    goto :goto_22

    .line 697
    :cond_8c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_5e

    .line 703
    :cond_91
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->renderTrack(Lorg/json/JSONObject;)V

    goto :goto_79
.end method

.method renderDay(Lorg/json/JSONObject;Z)V
    .registers 14

    .prologue
    .line 712
    if-nez p1, :cond_a3

    .line 713
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v2, "No measurement yet"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :goto_f
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readiness(Lorg/json/JSONObject;)V

    .line 722
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_10b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v0

    :goto_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarLayer()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 723
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    .line 724
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, " %"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, " \u043a\u0433"

    const-string v2, " kg"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, " %"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, ""

    aput-object v1, v9, v0

    .line 725
    const/4 v0, 0x4

    new-array v10, v0, [Z

    fill-array-data v10, :array_1d0

    .line 726
    const/4 v0, 0x0

    move v8, v0

    :goto_4f
    const/4 v0, 0x4

    if-ge v8, v0, :cond_180

    .line 727
    const/4 v0, 0x3

    if-ne v8, v0, :cond_136

    .line 728
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 729
    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 730
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string v0, "\u2014"

    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043f\u0430\u0441\u043f\u043e\u0440\u0442 "

    const-string v6, "passport "

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_118

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_9c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 726
    :goto_9f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4f

    .line 715
    :cond_a3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_c7

    const/4 v0, 0x1

    .line 716
    :goto_b6
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    if-eqz p2, :cond_c9

    const-string v0, "\u0421\u0435\u0433\u0430"

    const-string v1, "Now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 715
    :cond_c7
    const/4 v0, 0x0

    goto :goto_b6

    .line 718
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    if-eqz v0, :cond_ff

    const-string v1, "\u0414\u043d\u0435\u0441 \u00b7 "

    const-string v4, "Today \u00b7 "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 718
    if-eqz v0, :cond_108

    const-string v0, "HH:mm"

    :goto_e2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    const-string v4, "t"

    .line 719
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c2

    .line 717
    :cond_ff
    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e \u00b7 "

    const-string v4, "Last \u00b7 "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d8

    .line 718
    :cond_108
    const-string v0, "d.MM.yyyy"

    goto :goto_e2

    .line 722
    :cond_10b
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 730
    :cond_10e
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6b

    .line 732
    :cond_118
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v0, v0, -0x2

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_125

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_9c

    .line 733
    :cond_125
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v0, v0, 0x2

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_132

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_9c

    :cond_132
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_9c

    .line 735
    :cond_136
    if-eqz p1, :cond_165

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 736
    :goto_142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v2, v2, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_168

    const-string v0, "\u2014"

    :goto_14e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v4, v0, v8

    const-string v5, ""

    aget-boolean v6, v10, v8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_9f

    .line 735
    :cond_165
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_142

    .line 736
    :cond_168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    .line 740
    :cond_180
    const-string v0, "ffmi"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v6

    const-string v0, "fmi"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v8

    .line 741
    array-length v9, v6

    .line 742
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-lez v9, :cond_1c2

    add-int/lit8 v2, v9, -0x1

    aget-wide v2, v6, v2

    :goto_197
    if-lez v9, :cond_1c5

    add-int/lit8 v4, v9, -0x1

    aget-wide v4, v8, v4

    .line 743
    :goto_19d
    const/4 v7, 0x1

    if-le v9, v7, :cond_1c8

    add-int/lit8 v7, v9, -0x2

    aget-wide v6, v6, v7

    :goto_1a4
    const/4 v10, 0x1

    if-le v9, v10, :cond_1cb

    add-int/lit8 v9, v9, -0x2

    aget-wide v8, v8, v9

    .line 742
    :goto_1ab
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->set(ZDDDD)V

    .line 744
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    if-eqz p1, :cond_1ce

    const-string v0, "fat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v0

    :goto_1be
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->set([D)V

    .line 745
    return-void

    .line 742
    :cond_1c2
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_197

    :cond_1c5
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_19d

    .line 743
    :cond_1c8
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1a4

    :cond_1cb
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1ab

    .line 744
    :cond_1ce
    const/4 v0, 0x0

    goto :goto_1be

    .line 725
    :array_1d0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method renderTrack(Lorg/json/JSONObject;)V
    .registers 14

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v1

    .line 749
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v3

    .line 750
    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ne v3, v0, :cond_bb

    .line 751
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "\u0421\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e \u0438\u0434\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v4, "The comparison starts with the second one"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :goto_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 760
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v5, "Fat"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v5, "Muscle"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    const-string v2, "\u0412\u043e\u0434\u0430"

    const-string v5, "Water"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    const-string v2, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v5, "Age"

    .line 761
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x4

    const-string v2, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 762
    const/4 v0, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_21a

    .line 763
    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_65
    if-ge v2, v6, :cond_16f

    aget v7, v5, v2

    .line 764
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    aget-object v9, v4, v7

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    if-ne v0, v7, :cond_16c

    const/4 v0, 0x1

    :goto_72
    sget-object v10, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_COL:[I

    aget v10, v10, v7

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 765
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 766
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 767
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 768
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;

    invoke-direct {v8, p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 770
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 771
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_65

    .line 753
    :cond_bb
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d.MM"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 754
    const-string v2, "t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v2, "t"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 755
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    const-string v8, "t"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  \u2192  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    const-string v8, "t"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  \u00b7  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u0434\u043d\u0438 \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u043c\u0435\u0440\u0435\u043d\u0438\u044f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  \u00b7  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " days \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " measurements"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 764
    :cond_16c
    const/4 v0, 0x0

    goto/16 :goto_72

    .line 773
    :cond_16f
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u00b7 %"

    const-string v5, "Body fat \u00b7 %"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v4, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u00b7 \u043a\u0433"

    const-string v5, "Muscle \u00b7 kg"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, "\u0412\u043e\u0434\u0430 \u00b7 %"

    const-string v5, "Water \u00b7 %"

    .line 774
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v5, "Physical age"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "\u0422\u0435\u0433\u043b\u043e \u00b7 \u043a\u0433"

    const-string v5, "Weight \u00b7 kg"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 775
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 777
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v2

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->slice([DI)[D

    move-result-object v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->times()[J

    move-result-object v5

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sliceT([JI)[J

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_COL:[I

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget v6, v6, v7

    const-string v7, ""

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->set([D[JILjava/lang/String;)V

    .line 778
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v3, v0, :cond_214

    move-object v0, v1

    :goto_1df
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v2, :cond_216

    const/4 v2, 0x0

    :goto_1e4
    invoke-virtual {p0, p1, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 779
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v3, v0, :cond_218

    const/4 v0, 0x1

    :goto_1ec
    invoke-virtual {p0, v1, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->deltaTable(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 780
    const-string v0, "muscle"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->slice([DI)[D

    move-result-object v0

    const-string v1, "fatKg"

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->slice([DI)[D

    move-result-object v1

    .line 781
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->times()[J

    move-result-object v3

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sliceT([JI)[J

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->set([D[D[J)V

    .line 782
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead([D[D)V

    .line 783
    return-void

    .line 778
    :cond_214
    const/4 v0, 0x0

    goto :goto_1df

    :cond_216
    const/4 v2, 0x1

    goto :goto_1e4

    .line 779
    :cond_218
    const/4 v0, 0x0

    goto :goto_1ec

    .line 762
    :array_21a
    .array-data 4
        0x4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 19

    .prologue
    .line 838
    if-eqz p2, :cond_1b

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p2, p4, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    :goto_8
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rowValues(Ljava/lang/String;DDLjava/lang/String;ZZZ)V

    .line 840
    return-void

    .line 838
    :cond_1b
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_8
.end method

.method rowValues(Ljava/lang/String;DDLjava/lang/String;ZZZ)V
    .registers 22

    .prologue
    .line 844
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 845
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 846
    const/4 v2, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 847
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {v2, p1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const v7, 0x3f8ccccd    # 1.1f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_e4

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v2

    :goto_3c
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {v4, v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 850
    const v4, 0x800005

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 851
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_e8

    const-string v2, "  \u2192  "

    :goto_5e
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {v4, v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 853
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 854
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p4 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v2, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 855
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    sub-double v4, p4, p2

    .line 857
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_a4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_ec

    :cond_a4
    const-string v2, ""

    .line 858
    :goto_a6
    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x1

    .line 857
    invoke-static {v6, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 859
    const v2, 0x800005

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 860
    if-eqz p8, :cond_d1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_d1

    .line 861
    if-eqz p9, :cond_121

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_ce
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    :cond_d1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 865
    return-void

    .line 849
    :cond_e4
    const-string v2, ""

    goto/16 :goto_3c

    .line 852
    :cond_e8
    const-string v2, ""

    goto/16 :goto_5e

    .line 857
    :cond_ec
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v8, v10

    if-gez v2, :cond_fc

    const-string v2, "="

    goto :goto_a6

    .line 858
    :cond_fc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-lez v2, :cond_11e

    const-string v2, "\u25b2 "

    :goto_109
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a6

    :cond_11e
    const-string v2, "\u25bc "

    goto :goto_109

    .line 861
    :cond_121
    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-lez v2, :cond_12f

    const/4 v2, 0x1

    :goto_128
    move/from16 v0, p7

    if-ne v2, v0, :cond_131

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_ce

    :cond_12f
    const/4 v2, 0x0

    goto :goto_128

    :cond_131
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_ce
.end method

.method say(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1214
    return-void
.end method

.method series(Ljava/lang/String;)[D
    .registers 10

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1065
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1066
    new-array v6, v5, [D

    move v4, v0

    .line 1067
    :goto_e
    if-ge v4, v5, :cond_61

    .line 1068
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1069
    if-eqz v0, :cond_56

    const-string v1, "page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "ffmi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "fmi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1070
    :cond_30
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1071
    const-string v1, "page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    :goto_42
    aput-wide v0, v6, v4

    .line 1067
    :goto_44
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    .line 1071
    :cond_48
    const-string v1, "ffmi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    goto :goto_42

    :cond_53
    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    goto :goto_42

    .line 1073
    :cond_56
    if-eqz v0, :cond_5f

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :goto_5c
    aput-wide v0, v6, v4

    goto :goto_44

    :cond_5f
    move-wide v0, v2

    goto :goto_5c

    .line 1076
    :cond_61
    return-object v6
.end method

.method setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    .prologue
    .line 1105
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-eq p2, p3, :cond_12

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1106
    :cond_12
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :goto_17
    return-void

    .line 1109
    :cond_18
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 1110
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3a

    .line 1111
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1115
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_74

    const-string v0, "\u25b2 "

    :goto_47
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

    .line 1116
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_77

    const/4 v0, 0x1

    :goto_69
    if-ne v0, p6, :cond_79

    const/4 v0, 0x1

    .line 1117
    :goto_6c
    if-eqz p7, :cond_7b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1115
    :cond_74
    const-string v0, "\u25bc "

    goto :goto_47

    .line 1116
    :cond_77
    const/4 v0, 0x0

    goto :goto_69

    :cond_79
    const/4 v0, 0x0

    goto :goto_6c

    .line 1117
    :cond_7b
    if-eqz v0, :cond_80

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_70

    :cond_80
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_70
.end method

.method setLayer(I)V
    .registers 3

    .prologue
    .line 1156
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_b

    .line 1157
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 1161
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1162
    return-void

    .line 1159
    :cond_b
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    goto :goto_6
.end method

.method setMetric(I)V
    .registers 3

    .prologue
    .line 1171
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1173
    return-void
.end method

.method setMode(I)V
    .registers 3

    .prologue
    .line 1144
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-ne p1, v0, :cond_5

    .line 1153
    :goto_4
    return-void

    .line 1147
    :cond_5
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 1148
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 1149
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1151
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1152
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto :goto_4
.end method

.method setRange(I)V
    .registers 3

    .prologue
    .line 1165
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    .line 1166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1168
    return-void
.end method

.method show()V
    .registers 9

    .prologue
    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ca

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_26
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1de

    :goto_2e
    const-string v2, "\u041a\u0430\u043d\u0442\u0430\u0440 \u00b7 \u0431\u043e\u0441, \u043f\u043e \u0442\u044a\u043d\u043a\u0438 \u0434\u0440\u0435\u0445\u0438, \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v3, "Scale \u00b7 barefoot, light clothes, before the training"

    .line 167
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    .line 166
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 173
    const/high16 v1, 0x43dc0000    # 440.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x436a0000    # 234.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 176
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43be0000    # 380.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    .line 181
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 185
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    const v4, 0x3f733333    # 0.95f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    .line 188
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 189
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 190
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    .line 192
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    const v3, 0x3f8f5c29    # 1.12f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 193
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 194
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041c\u0435\u0440\u0438 \u043f\u0430\u043a"

    const-string v2, "Measure again"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
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

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
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

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 208
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 209
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 213
    return-void

    .line 165
    :cond_1ca
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_1da

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_26

    :cond_1da
    const-string v0, ""

    goto/16 :goto_26

    .line 166
    :cond_1de
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v2, "Scale"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e
.end method

.method showInfo(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 1302
    :goto_14
    return-void

    .line 1254
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1255
    const-string v1, "\u041c\u0435\u0440\u0435\u043d\u0435\n\u2022 \u0431\u043e\u0441\u0438 \u0441\u0442\u044a\u043f\u0430\u043b\u0430, \u0433\u043e\u043b\u0438 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u2014 \u0442\u044a\u043d\u043a\u0438\u0442\u0435 \u0434\u0440\u0435\u0445\u0438 \u043d\u0435 \u043f\u0440\u0435\u0447\u0430\u0442\n\u2022 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043e \u0435\u0434\u043d\u043e \u0438 \u0441\u044a\u0449\u043e \u0432\u0440\u0435\u043c\u0435, 2 \u0447 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\n\n\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\n\u0421\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 20 \u0438 100 kHz \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 EMS (\u0434\u0435\u043d 2\u20134) \u0433\u043e \u0432\u0434\u0438\u0433\u0430 \u2192 \u0434\u043d\u0435\u0441 \u043f\u043e-\u0441\u043b\u0430\u0431\u043e: \u221215 % \u0438\u043b\u0438 \u221230 %. \u0421\u044a\u0449\u043e\u0442\u043e \u043f\u0440\u0438\u043b\u0430\u0433\u0430\u0442 Auto \u0438 \u043f\u043b\u0430\u043d\u0430 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043a\u043b\u0438\u0435\u043d\u0442; \u043f\u043e-\u0441\u0438\u043b\u043d\u043e\u0442\u043e \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 (\u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 / \u043a\u0430\u043d\u0442\u0430\u0440) \u043f\u0435\u0447\u0435\u043b\u0438.\n\n\u0422\u0438\u043f \u0442\u044f\u043b\u043e \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\n\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043d\u0430 \u043c\u00b2 \u0440\u044a\u0441\u0442 \u2014 \u043f\u043b\u044a\u0442\u043d\u0430\u0442\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430 \u043d\u0435 \u0435 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e. \u0412\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430 \u0435 \u0442\u0430\u0437\u0438, \u043d\u0430 \u043a\u043e\u044f\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f\u0442 \u043d\u0430 \u043c\u0435\u0434\u0438\u0430\u043d\u0430\u0442\u0430 \u043e\u0442 DXA \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043d\u0430 3 327 \u0434\u0443\u0448\u0438; \u0432\u044a\u0432\u0435\u0434\u0435\u043d\u0430\u0442\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0435 \u0443\u0447\u0430\u0441\u0442\u0432\u0430.\n\n\u0417\u043e\u043d\u0438\n\u041c\u0443\u0441\u043a\u0443\u043b\u0438: 100 % = \u043d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430 \u0438 \u0442\u0435\u0433\u043b\u043e\u0442\u043e. \u041c\u0430\u0437\u043d\u0438\u043d\u0438: \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u044a\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0430\u0442\u0430 \u0441\u0440\u0435\u0434\u0430 (\u043c\u044a\u0436\u0435 15 %, \u0436\u0435\u043d\u0438 25 %). \u041f\u0443\u043d\u043a\u0442\u0438\u0440 = \u0441\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e.\n\n\u0422\u043e\u043a\n\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043d\u0430\u0434 \u0432\u0441\u044f\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442: \u043e\u0440\u0430\u043d\u0436\u0435\u0432\u043e = \u0442\u0430\u043c \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u043d\u0430\u0439-\u043c\u0430\u043b\u043a\u043e \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u0438\u043b\u0438 \u043f\u043e-\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v2, "Measuring\n\u2022 bare feet, bare hands on the handle \u2014 light clothes do not matter\n\u2022 before the training, same time of day, 2 h after a meal\n\nReadiness\nThe 20 and 100 kHz impedance against this client\'s usual. Swelling after a hard EMS session (day 2\u20134) raises it \u2192 softer today: \u221215 % or \u221230 %. Auto and the next-client plan apply the same; the stronger of rest days and scale wins.\n\nBody type and age\nMuscle and fat per m\u00b2 of height \u2014 dense muscle is not overweight. The age is the one whose median arm + leg muscle and fat (DXA, 3,327 adults) match; the entered age is not used.\n\nZones\nMuscle: 100 % = normal for height and weight. Fat: the zone\'s fat % against the healthy middle (men 15 %, women 25 %). Dashed = the comparison.\n\nCurrent\nFat over each muscle group insulates: orange = the current reaches least there \u2014 more strength or a wider pulse."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1289
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1290
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

    .line 1291
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, -0xbd5a0b

    const v4, 0x3e23d70a    # 0.16f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    .line 1292
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const v4, -0xbd5a0b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 1291
    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1293
    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x440c0000    # 560.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 1295
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1296
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1297
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1298
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x44060000    # 536.0f

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

    .line 1299
    :catch_b4
    move-exception v0

    .line 1300
    const-string v1, "ScaleScreen.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method

.method startLink()V
    .registers 11

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_9

    .line 1177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 1179
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1181
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

    .line 1182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->start()V

    .line 1183
    return-void
.end method

.method stepHeight(I)V
    .registers 6

    .prologue
    .line 653
    const/16 v0, 0x64

    const/16 v1, 0xdc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 654
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

    .line 655
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 656
    return-void
.end method

.method times()[J
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1080
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1081
    new-array v4, v3, [J

    move v2, v0

    .line 1082
    :goto_c
    if-ge v2, v3, :cond_25

    .line 1083
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_22

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1c
    aput-wide v0, v4, v2

    .line 1082
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 1084
    :cond_22
    const-wide/16 v0, 0x0

    goto :goto_1c

    .line 1086
    :cond_25
    return-object v4
.end method

.method typeChip(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v5, 0x3

    const v1, -0x10bbbc

    const v0, -0xdd3aa2

    const v2, -0xa61f5

    .line 988
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v3

    .line 989
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->known()Z

    move-result v4

    if-nez v4, :cond_20

    .line 990
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    :goto_1f
    return-void

    .line 995
    :cond_20
    iget v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    packed-switch v4, :pswitch_data_b8

    .line 1021
    const-string v0, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Very low fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    const v2, -0xc74208

    move-object v3, v0

    .line 1025
    :goto_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1027
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/16 v1, 0x22

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8c

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f

    .line 997
    :pswitch_64
    const-string v1, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u0435\u043d \u00b7 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Athletic \u00b7 the weight is muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 999
    goto :goto_31

    .line 1001
    :pswitch_6f
    const-string v1, "\u0411\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u0430\u043d"

    const-string v2, "Balanced"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 1003
    goto :goto_31

    .line 1005
    :pswitch_7a
    const-string v0, "\u0421\u0438\u043b\u0435\u043d \u00b7 \u0441 \u0438\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Strong \u00b7 with excess fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1007
    goto :goto_31

    .line 1009
    :pswitch_84
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-lt v0, v5, :cond_97

    const-string v0, "\u0417\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v4, "Obese"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    :goto_90
    iget v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-lt v3, v5, :cond_a0

    :goto_94
    move v2, v1

    move-object v3, v0

    .line 1011
    goto :goto_31

    .line 1009
    :cond_97
    const-string v0, "\u0418\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v4, "Excess fat"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_a0
    move v1, v2

    .line 1010
    goto :goto_94

    .line 1013
    :pswitch_a2
    const-string v0, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u043f\u0440\u0438 \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Fat with little muscle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    .line 1015
    goto :goto_31

    .line 1017
    :pswitch_ad
    const-string v0, "\u0421\u043b\u0430\u0431 \u00b7 \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v1, "Slim \u00b7 little muscle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1019
    goto/16 :goto_31

    .line 995
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_64
        :pswitch_6f
        :pswitch_7a
        :pswitch_84
        :pswitch_a2
        :pswitch_ad
    .end packed-switch
.end method

.method updateHeight()V
    .registers 5

    .prologue
    .line 659
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 660
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

    .line 662
    :cond_24
    return-void
.end method
