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

.field barRange:Landroid/widget/LinearLayout;

.field barTop:Landroid/widget/LinearLayout;

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

.field history:Landroid/widget/LinearLayout;

.field infoPop:Landroid/widget/PopupWindow;

.field lastKg:D

.field layer:I

.field layerHolder:Landroid/widget/LinearLayout;

.field legend:Landroid/widget/TextView;

.field link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final main:Landroid/os/Handler;

.field male:Z

.field meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

.field metric:I

.field metricHolder:Landroid/widget/LinearLayout;

.field middle:Landroid/widget/LinearLayout;

.field mode:I

.field modeHolder:Landroid/widget/LinearLayout;

.field orientationBefore:I

.field portrait:Z

.field radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

.field range:I

.field rangeHolder:Landroid/widget/LinearLayout;

.field reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

.field reasons:Landroid/widget/LinearLayout;

.field right:Landroid/widget/LinearLayout;

.field row:Landroid/widget/LinearLayout;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field saved:Landroid/widget/TextView;

.field selected:I

.field session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

.field stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

.field staging:Z

.field status:Landroid/widget/TextView;

.field steps:I

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

    .line 495
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

    .line 522
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

    .line 523
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
    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 76
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 104
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->orientationBefore:I

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    .line 118
    new-array v0, v4, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    .line 119
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    .line 120
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    .line 131
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 132
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 133
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    .line 134
    iput v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 135
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 137
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    .line 138
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 139
    iput v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 1583
    iput v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->steps:I

    .line 142
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    .line 143
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 144
    iget-wide v4, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    .line 145
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_76

    .line 147
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_5a

    .line 148
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v4, :cond_ac

    move v0, v1

    :goto_58
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 150
    :cond_5a
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_66

    .line 151
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 153
    :cond_66
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 154
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_76

    .line 155
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 158
    :cond_76
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-lez v0, :cond_ae

    :goto_7a
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    .line 159
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_9f

    .line 160
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

    .line 162
    :cond_9f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_ab

    .line 163
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-eqz v0, :cond_b0

    const/16 v0, 0xb2

    :goto_a9
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 165
    :cond_ab
    return-void

    :cond_ac
    move v0, v2

    .line 148
    goto :goto_58

    :cond_ae
    move v1, v2

    .line 158
    goto :goto_7a

    .line 163
    :cond_b0
    const/16 v0, 0xa5

    goto :goto_a9
.end method

.method static one(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1414
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
    .line 1095
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1096
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1097
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1099
    return-void
.end method

.method static signedPct(D)Ljava/lang/String;
    .registers 10

    .prologue
    .line 1418
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

    .line 1383
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1384
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [D

    .line 1385
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1386
    return-object v1
.end method

.method static sliceT([JI)[J
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1390
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1391
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [J

    .line 1392
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1393
    return-object v1
.end method


# virtual methods
.method arrange()V
    .registers 8

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x2

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->landH(Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    new-array v3, v4, [F

    fill-array-data v3, :array_7e

    new-array v4, v4, [I

    fill-array-data v4, :array_88

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->apply(Landroid/app/Activity;Landroid/widget/LinearLayout;Z[F[II)V

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    if-eqz v0, :cond_44

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    new-array v3, v6, [F

    fill-array-data v3, :array_92

    new-array v4, v6, [I

    fill-array-data v4, :array_9a

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->apply(Landroid/app/Activity;Landroid/widget/LinearLayout;Z[F[II)V

    .line 304
    :cond_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_59
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    if-eqz v0, :cond_73

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    :goto_64
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_7b

    const/4 v0, 0x0

    :goto_6f
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    return-void

    .line 310
    :cond_73
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_64

    .line 312
    :cond_7b
    const/16 v0, 0x8

    goto :goto_6f

    .line 300
    :array_7e
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f8f5c29    # 1.12f
    .end array-data

    :array_88
    .array-data 4
        0x280
        0x2bc
        0x2a8
    .end array-data

    .line 302
    :array_92
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_9a
    .array-data 4
        0x230
        0x258
    .end array-data
.end method

.method askDelete(J)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 456
    .line 457
    const/4 v0, 0x0

    move v1, v0

    move-object v2, v6

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 458
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_92

    const-string v3, "t"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_92

    .line 457
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_4

    .line 463
    :cond_22
    if-nez v2, :cond_25

    .line 471
    :goto_24
    return-void

    .line 466
    :cond_25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d.MM.yyyy \u00b7 HH:mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v1, "\u0414\u0430 \u0438\u0437\u0442\u0440\u0438\u044f \u043b\u0438 \u0442\u043e\u0432\u0430 \u043c\u0435\u0440\u0435\u043d\u0435?"

    const-string v3, "Delete this measurement?"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "w"

    .line 468
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 \u043e\u0441\u0442\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u0441\u0435 \u043f\u0440\u0435\u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430\u0442 \u0431\u0435\u0437 \u043d\u0435\u0433\u043e"

    const-string v3, " \u2014 the rest are recomputed without it"

    .line 469
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    .line 470
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;

    invoke-direct {v4, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;J)V

    const-string v0, "\u041e\u0441\u0442\u0430\u0432\u0438"

    const-string v5, "Keep"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 467
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_24

    :cond_92
    move-object v0, v2

    goto :goto_1e
.end method

.method build()V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 320
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

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 324
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_4e

    .line 325
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->buildDay()V

    .line 339
    :cond_4d
    return-void

    .line 327
    :cond_4e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->buildTrack()V

    .line 328
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

    .line 329
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move v0, v1

    .line 330
    :goto_73
    array-length v2, v4

    if-ge v0, v2, :cond_4d

    .line 331
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    aget-object v6, v4, v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    if-ne v0, v2, :cond_a9

    move v2, v3

    :goto_7f
    const v7, -0xc74208

    invoke-static {v5, v6, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 332
    new-instance v5, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;

    invoke-direct {v5, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    .line 334
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 336
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_a9
    move v2, v1

    .line 331
    goto :goto_7f
.end method

.method buildDay()V
    .registers 14

    .prologue
    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 344
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "ready"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    .line 346
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x435c0000    # 220.0f

    .line 347
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

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    .line 349
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 350
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarCard()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
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

    .line 356
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 357
    const/4 v0, 0x0

    move v2, v0

    :goto_a8
    const/4 v0, 0x2

    if-ge v2, v0, :cond_192

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 359
    const/4 v0, 0x0

    move v1, v0

    :goto_b3
    const/4 v0, 0x2

    if-ge v1, v0, :cond_17c

    .line 360
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v1

    .line 361
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 362
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

    .line 363
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 364
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 365
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

    .line 367
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v9, ""

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v0

    .line 368
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v8, "\u2014"

    const/high16 v9, 0x41f00000    # 30.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v6, v0

    .line 371
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 372
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    aput-object v5, v6, v0

    .line 374
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->TILE_KEY:[Ljava/lang/String;

    aget-object v0, v7, v0

    invoke-direct {v6, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 376
    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v1, :cond_179

    const/4 v0, 0x0

    :goto_16b
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b3

    .line 376
    :cond_179
    const/16 v0, 0xa

    goto :goto_16b

    .line 378
    :cond_17c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v2, :cond_18f

    const/4 v0, 0x0

    :goto_183
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a8

    .line 378
    :cond_18f
    const/16 v0, 0xa

    goto :goto_183

    .line 380
    :cond_192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 381
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

    .line 382
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    .line 383
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 386
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

    .line 388
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    .line 389
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-void
.end method

.method buildTrack()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v8, 0xc

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 396
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 397
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    .line 398
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    const-string v2, "trend"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    .line 400
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 402
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarCard()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 408
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "table"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    .line 410
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 414
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

    .line 415
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    .line 416
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    .line 418
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->flex(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041c\u0435\u0440\u0435\u043d\u0438\u044f"

    const-string v3, "Measurements"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "history"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    .line 423
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    return-void
.end method

.method cardInfo(Landroid/view/View;Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 535
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 538
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v8

    .line 539
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v6

    .line 540
    const-string v3, ""

    .line 541
    const-string v2, ""

    .line 542
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 543
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 544
    if-eqz v8, :cond_18b

    const-string v4, "fat"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 545
    :goto_3f
    const-string v7, "fat"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 546
    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Body fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    const-string v2, "\u041a\u0430\u043a\u0432\u0430 \u0447\u0430\u0441\u0442 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0430. \u041d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430\u0432\u0438\u0441\u0438 \u043e\u0442 \u043f\u043e\u043b\u0430 \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430. \u041f\u043e\u0434 \u043d\u0435\u044f \u2014 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0442\u044f\u043b\u043e; \u043c\u043d\u043e\u0433\u043e \u043f\u043e\u0434 \u043d\u0435\u044f \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0441\u0430\u043c\u043e \u0436\u0438\u0437\u043d\u0435\u043d\u043e \u043d\u0443\u0436\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438. \u041d\u0430\u0434 \u043d\u0435\u044f \u2014 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435."

    const-string v6, "How much of the weight is fat. The norm depends on sex and age. Below it \u2014 lean; far below only the essential fat is left. Above \u2014 overweight, then obese."

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
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

    .line 695
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 696
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

    .line 697
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

    .line 698
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    .line 697
    invoke-static {v4, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v5, 0x41880000    # 17.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {v4, v3, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {v3, v2, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 701
    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    const-string v4, ""

    .line 704
    const/4 v2, 0x0

    move v5, v2

    :goto_ff
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_737

    .line 705
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 706
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_131

    .line 707
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

    .line 709
    :cond_131
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v7, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    .line 710
    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 711
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v11, 0x42c00000    # 96.0f

    .line 712
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v8, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 713
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_72f

    const/high16 v3, 0x40000000    # 2.0f

    :goto_153
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 714
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7f8

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_733

    const-string v3, " \u00b7 "

    :goto_177
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 704
    :goto_185
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    goto/16 :goto_ff

    .line 544
    :cond_18b
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_3f

    .line 552
    :cond_18f
    const-string v7, "muscle"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fd

    .line 553
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v3, "Muscle"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 554
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u0432\u0441\u0438\u0447\u043a\u043e \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438, \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430. \u0412 \u0441\u0440\u0435\u0434\u0430\u0442\u0430 \u0435 \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u043d\u0438; \u0432\u0434\u044f\u0441\u043d\u043e \u2014 \u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e. \u0422\u0443\u043a \u043f\u043e\u0432\u0435\u0447\u0435 \u0435 \u043f\u043e-\u0434\u043e\u0431\u0440\u0435: \u0442\u0435\u0436\u043a\u043e \u043e\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0442\u044f\u043b\u043e \u043d\u0435 \u0435 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e."

    const-string v4, "Muscle and everything that is not fat, for the height. The middle is usual for adults; to the right athletic. More is better here: weight from muscle is not overweight."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
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

    .line 734
    :catch_1f6
    move-exception v2

    .line 735
    const-string v3, "ScaleScreen.cardInfo"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    :goto_1fc
    return-void

    .line 561
    :cond_1fd
    :try_start_1fd
    const-string v7, "water"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26f

    .line 562
    const-string v2, "\u0412\u043e\u0434\u0430"

    const-string v3, "Water"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    const-string v2, "\u041a\u0430\u043a\u0432\u0430 \u0447\u0430\u0441\u0442 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u0432\u043e\u0434\u0430. \u041d\u0438\u0441\u043a\u043e \u2014 \u043e\u0431\u0435\u0437\u0432\u043e\u0434\u043d\u044f\u0432\u0430\u043d\u0435: \u043d\u0435\u043a\u0430 \u043f\u0438\u0435 \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 (\u0442\u043e\u043a\u044a\u0442 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430 \u043f\u043e-\u0441\u0438\u043b\u043d\u043e). \u0412\u0438\u0441\u043e\u043a\u043e \u2014 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438 \u0438\u043b\u0438 \u043e\u0442\u043e\u043a."

    const-string v4, "How much of the weight is water. Low \u2014 dehydrated: have them drink before training (the current feels stronger). High \u2014 fluid retention or swelling."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
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

    .line 568
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 567
    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_26c
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_221

    .line 570
    :cond_26f
    const-string v7, "age"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d6

    .line 571
    const-string v2, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v3, "Physical age"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    const-string v2, "\u041d\u0430 \u043a\u0430\u043a\u0432\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u2014 \u043f\u043e \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u043e\u0442 DXA \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043d\u0430 3 327 \u0434\u0443\u0448\u0438. \u041f\u0430\u0441\u043f\u043e\u0440\u0442\u043d\u0430\u0442\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0435 \u0443\u0447\u0430\u0441\u0442\u0432\u0430. \u00b13 \u0433\u043e\u0434\u0438\u043d\u0438 = \u043a\u0430\u0442\u043e \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435."

    const-string v4, "The age whose usual arm + leg muscle and fat match \u2014 from DXA scans of 3,327 people. The passport age is not used. \u00b13 years = as old as the years."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
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

    .line 579
    :cond_2d6
    const-string v7, "weight"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_344

    .line 580
    const-string v2, "\u0422\u0435\u0433\u043b\u043e \u0438 \u0418\u0422\u041c"

    const-string v3, "Weight and BMI"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    const-string v2, "\u0418\u0422\u041c \u0441\u0440\u0430\u0432\u043d\u044f\u0432\u0430 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0441 \u0440\u044a\u0441\u0442\u0430, \u043d\u043e \u043d\u0435 \u0437\u043d\u0430\u0435 \u043e\u0442 \u043a\u0430\u043a\u0432\u043e \u0435 \u0442\u0435\u0433\u043b\u043e\u0442\u043e: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0433\u043e \u0432\u0434\u0438\u0433\u0430\u0442 \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438. \u0417\u0430\u0442\u043e\u0432\u0430 \u0440\u0435\u0448\u0430\u0432\u0430 \u201e\u0422\u0438\u043f \u0442\u044f\u043b\u043e\u201c, \u043d\u0435 \u0418\u0422\u041c."

    const-string v4, "BMI compares the weight with the height but not what the weight is made of: muscle raises it without fat. So the body type decides, not BMI."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
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

    .line 588
    :cond_344
    const-string v7, "ready"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c2

    .line 589
    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442 \u0437\u0430 \u0434\u043d\u0435\u0441"

    const-string v3, "Readiness today"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    const-string v2, "\u041a\u0430\u043a \u0441\u0430 \u0442\u044a\u043a\u0430\u043d\u0438\u0442\u0435 \u0434\u043d\u0435\u0441 \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 EMS (\u0434\u0435\u043d 2\u20134) \u0438\u043b\u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0432\u043e\u0434\u0430 \u044f \u0441\u0432\u0430\u043b\u044f\u0442 \u2014 \u0442\u043e\u0433\u0430\u0432\u0430 \u0434\u043d\u0435\u0441 \u043f\u043e-\u0441\u043b\u0430\u0431\u043e: \u221215 % \u0438\u043b\u0438 \u221230 %. \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0438 \u043f\u043b\u0430\u043d\u044a\u0442 \u0433\u043e \u043f\u0440\u0438\u043b\u0430\u0433\u0430\u0442 \u0441\u0430\u043c\u0438."

    const-string v4, "How the tissues are today against this client\'s usual. Swelling after a hard EMS session (day 2\u20134) or less water lowers it \u2014 then softer today: \u221215 % or \u221230 %. Auto and the plan apply it by themselves."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    if-eqz v8, :cond_3c0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 596
    :goto_36e
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 597
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

    .line 595
    :cond_3c0
    const/4 v4, 0x0

    goto :goto_36e

    .line 601
    :cond_3c2
    const-string v7, "zones"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4bc

    .line 602
    const-string v2, "\u0417\u043e\u043d\u0438 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v3, "Zones against normal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0432\u044a\u0432 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430 \u0438 \u0442\u0435\u0433\u043b\u043e\u0442\u043e (100 %). \u041f\u0443\u043d\u043a\u0442\u0438\u0440\u044a\u0442 \u0435 \u0441\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0444\u0438\u0433\u0443\u0440\u0430\u0442\u0430 \u0438\u043b\u0438 \u0440\u0430\u0434\u0430\u0440\u0430, \u0437\u0430 \u0434\u0430 \u0432\u0438\u0434\u0438\u0448 \u043d\u0435\u044f."

    const-string v3, "The muscle of each zone against normal for the height and weight (100 %). Dashed = the comparison. Tap a zone on the figure or the radar to see it."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 607
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 608
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 609
    if-gez v4, :cond_40e

    .line 610
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 611
    const/4 v5, 0x0

    :goto_3f7
    const/4 v11, 0x5

    if-ge v5, v11, :cond_40e

    .line 612
    aget-wide v12, v8, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_40b

    aget-wide v12, v8, v5

    cmpg-double v11, v12, v2

    if-gez v11, :cond_40b

    .line 613
    aget-wide v2, v8, v5

    move v4, v5

    .line 611
    :cond_40b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f7

    .line 618
    :cond_40e
    if-ltz v4, :cond_4b5

    .line 619
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

    .line 620
    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v11, "Right leg"

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 621
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

    .line 622
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

    .line 626
    goto/16 :goto_72

    .line 621
    :cond_4b9
    const-string v2, ""

    goto :goto_463

    .line 626
    :cond_4bc
    const-string v7, "body"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5af

    .line 627
    const-string v2, "\u0422\u0438\u043f \u0442\u044f\u043b\u043e"

    const-string v3, "Body type"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043f\u043e\u043e\u0442\u0434\u0435\u043b\u043d\u043e, \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430 \u2014 \u0437\u0430\u0442\u043e\u0432\u0430 \u043f\u043b\u044a\u0442\u043d\u0430\u0442\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430 \u0435 \u201e\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e\u201c, \u0430 \u043d\u0435 \u201e\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e\u201c. \u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0430 \u043e\u043a\u043e\u043b\u043e \u043e\u0440\u0433\u0430\u043d\u0438\u0442\u0435."

    const-string v7, "Muscle and fat separately, for the height \u2014 so dense muscle is \"athletic\", not \"overweight\". Visceral fat sits around the organs."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    const-string v7, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v11, "Muscle"

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
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

    .line 636
    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v7, "Fat"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
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

    .line 638
    const-string v4, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v5, "Visceral fat"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
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

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 639
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_5ac
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_565

    .line 642
    :cond_5af
    const-string v7, "reach"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5cb

    .line 643
    const-string v2, "\u0422\u043e\u043a \u0434\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    const-string v3, "Current to the muscle"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043d\u0430\u0434 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442 \u0442\u043e\u043a\u0430. \u0412\u0441\u044f\u043a\u0430 \u043a\u043e\u043b\u043e\u043d\u0430 \u0435 \u0435\u0434\u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430: \u043a\u043e\u043b\u043a\u043e \u0442\u043e\u043a \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043d\u0435\u044f \u0441\u043f\u0440\u044f\u043c\u043e \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u044f\u043b\u043e\u0442\u043e. \u221210 = \u0442\u0430\u043c \u0435 \u043d\u0443\u0436\u043d\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u0438\u043b\u0438 \u043f\u043e-\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441. \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0433\u043e \u0441\u043c\u044f\u0442\u0430 \u0441\u0430\u043c."

    const-string v4, "Fat over a muscle insulates the current. Each column is one suit muscle group: how much current reaches it against the body\'s mean. \u221210 = more strength or a wider pulse there. Auto accounts for it."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 649
    :cond_5cb
    const-string v7, "figure"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f8

    .line 650
    const-string v2, "\u0424\u0438\u0433\u0443\u0440\u0430\u0442\u0430"

    const-string v3, "The figure"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5ee

    .line 652
    const-string v2, "\u0412\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0435 \u043e\u0446\u0432\u0435\u0442\u0435\u043d\u0430 \u043f\u043e \u043f\u0440\u043e\u043c\u044f\u043d\u0430\u0442\u0430 \u043e\u0442 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430: \u0437\u0435\u043b\u0435\u043d\u043e \u2014 \u043a\u044a\u043c \u0434\u043e\u0431\u0440\u043e (\u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043f\u0440\u0438\u0431\u0430\u0432\u0435\u043d\u0438 / \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0432\u0430\u043b\u0435\u043d\u0438), \u0436\u044a\u043b\u0442\u043e \u2014 \u043e\u0431\u0440\u0430\u0442\u043d\u043e\u0442\u043e, \u0441\u0438\u0432\u043e \u2014 \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430."

    const-string v4, "Each zone is coloured by its change since the start of the period: green the good way (muscle gained / fat lost), amber the other, grey no change."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 656
    :cond_5ee
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 \u2014 \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 (\u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430). \u0422\u043e\u043a \u2014 \u0432\u0441\u044f\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u043f\u043e \u0442\u043e\u0432\u0430 \u043a\u043e\u043b\u043a\u043e \u0442\u043e\u043a \u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043d\u0435\u044f. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u0437\u0430 \u0447\u0438\u0441\u043b\u0430\u0442\u0430 \u045d."

    const-string v4, "Muscle and Fat \u2014 each zone against normal. Swelling \u2014 against the client\'s usual (after a hard session). Current \u2014 each suit muscle group by how much current reaches it. Tap a zone for its numbers."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 662
    :cond_5f8
    const-string v7, "trend"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6db

    .line 663
    const-string v2, "\u0422\u0440\u0435\u043d\u0434"

    const-string v3, "Trend"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 664
    const-string v2, "\u041a\u0430\u043a \u0441\u0435 \u043c\u0435\u043d\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u044f\u0442 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u043e\u0442 \u043c\u0435\u0440\u0435\u043d\u0435 \u0434\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u0432 \u043f\u0435\u0440\u0438\u043e\u0434\u0430. \u0418\u0437\u0431\u0435\u0440\u0438 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u043e\u0442\u0433\u043e\u0440\u0435; \u043f\u0435\u0440\u0438\u043e\u0434\u0430 \u2014 \u0433\u043e\u0440\u0435 \u0432\u0434\u044f\u0441\u043d\u043e."

    const-string v7, "How the chosen value moves from measurement to measurement. Pick the value above; the period top right."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    if-nez v7, :cond_633

    .line 668
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

    .line 669
    :cond_633
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_687

    .line 670
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

    .line 673
    :cond_687
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_72

    .line 674
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

    .line 678
    :cond_6db
    const-string v4, "history"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f7

    .line 679
    const-string v2, "\u041c\u0435\u0440\u0435\u043d\u0438\u044f"

    const-string v3, "Measurements"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 680
    const-string v2, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430. \u2715 \u0438\u0437\u0442\u0440\u0438\u0432\u0430 \u0435\u0434\u043d\u043e \u2014 \u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440 \u0430\u043a\u043e \u043d\u044f\u043a\u043e\u0439 \u0434\u0440\u0443\u0433 \u0435 \u0441\u0442\u044a\u043f\u0438\u043b \u043d\u0430 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043c\u0443; \u043e\u0441\u0442\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u0441\u0435 \u043f\u0440\u0435\u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430\u0442 \u0431\u0435\u0437 \u043d\u0435\u0433\u043e, \u0438 \u0432 \u043a\u0430\u0440\u0442\u043e\u043d\u0430."

    const-string v4, "The client\'s latest measurements. \u2715 removes one \u2014 say someone else stepped on under this profile; the rest are recomputed without it, on the card too."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 684
    :cond_6f7
    const-string v4, "table"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_713

    .line 685
    const-string v2, "\u0422\u043e\u0433\u0430\u0432\u0430 \u2192 \u0441\u0435\u0433\u0430"

    const-string v3, "Then \u2192 now"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    const-string v2, "\u0412\u0441\u0435\u043a\u0438 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430 \u0438 \u0441\u0435\u0433\u0430. \u0417\u0435\u043b\u0435\u043d\u043e \u2014 \u043a\u044a\u043c \u0434\u043e\u0431\u0440\u043e, \u0436\u044a\u043b\u0442\u043e \u2014 \u043e\u0431\u0440\u0430\u0442\u043d\u043e\u0442\u043e."

    const-string v4, "Each value at the start of the period and now. Green the good way, amber the other."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 688
    :cond_713
    const-string v4, "change"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 689
    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u043e\u0442 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v3, "Change since the start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    const-string v2, "\u041a\u043e\u043b\u043a\u043e \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0430 \u0434\u043e\u0448\u043b\u0438 \u0438\u043b\u0438 \u043e\u0442\u0438\u0448\u043b\u0438 \u043e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u0432 \u043f\u0435\u0440\u0438\u043e\u0434\u0430. \u0422\u0435\u0433\u043b\u043e\u0442\u043e \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u0442\u043e\u0438, \u0434\u043e\u043a\u0430\u0442\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043f\u0430\u0434\u0430\u0442 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0440\u0430\u0441\u0442\u0430\u0442 \u2014 \u0442\u043e\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v4, "How many kg of muscle and fat came or went since the first measurement of the period. The weight can stay while fat falls and muscle grows \u2014 that is the aim."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 713
    :cond_72f
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_153

    .line 716
    :cond_733
    const-string v3, ""

    goto/16 :goto_177

    .line 719
    :cond_737
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_756

    .line 720
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

    .line 722
    :cond_756
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7f4

    const/high16 v2, 0x43f00000    # 480.0f

    :goto_75e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    .line 723
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v3, v6, v2, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 728
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 729
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 731
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

    .line 732
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

    .line 733
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V
    :try_end_7f2
    .catch Ljava/lang/Throwable; {:try_start_1fd .. :try_end_7f2} :catch_1f6

    goto/16 :goto_1fc

    .line 722
    :cond_7f4
    const/high16 v2, 0x43d20000    # 420.0f

    goto/16 :goto_75e

    :cond_7f8
    move-object v2, v4

    goto/16 :goto_185
.end method

.method changeHead([D[D)V
    .registers 15

    .prologue
    .line 1080
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 1081
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    :goto_b
    return-void

    .line 1084
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

    .line 1085
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1086
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

    .line 1087
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v8, v10

    if-gez v0, :cond_b2

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1086
    :goto_61
    invoke-static {v1, v6, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 1088
    const-string v0, "   "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1089
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

    .line 1090
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v6, v8

    if-gez v0, :cond_c1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1089
    :goto_a5
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 1091
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1086
    :cond_af
    const-string v0, "\u2212"

    goto :goto_32

    .line 1087
    :cond_b2
    const-wide/16 v8, 0x0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_61

    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_61

    .line 1089
    :cond_be
    const-string v0, "\u2212"

    goto :goto_76

    .line 1090
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

.method confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15

    .prologue
    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0x280

    invoke-static {v1, p1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 483
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, p5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 484
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;

    invoke-direct {v3, v1, p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 487
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;

    invoke-direct {v3, v1, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v0, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 489
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 490
    iget-object v4, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    if-nez p6, :cond_53

    const/4 v0, 0x1

    :cond_53
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 492
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 493
    return-void
.end method

.method cur()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 959
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

.method deleteNow(J)V
    .registers 12

    .prologue
    .line 474
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    move-wide v4, p1

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->delete(Landroid/content/Context;JJZII)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 476
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->schedule(Landroid/content/Context;JZII)V

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 478
    return-void
.end method

.method deltaTable(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 15

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1115
    if-nez p2, :cond_8

    .line 1127
    :goto_7
    return-void

    .line 1118
    :cond_8
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v9

    .line 1119
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v10

    .line 1120
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

    .line 1121
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

    .line 1122
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

    .line 1123
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

    .line 1124
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

    .line 1125
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

    .line 1126
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

    .line 1240
    if-eqz p1, :cond_f

    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1241
    :cond_f
    const-string v0, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0444\u0438\u0433\u0443\u0440\u0430\u0442\u0430"

    const-string v1, "Tap a zone on the figure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    :goto_17
    return-object v0

    .line 1243
    :cond_18
    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1244
    const-string v1, "segFat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1245
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    if-gez v2, :cond_bf

    .line 1246
    invoke-static {v0, v10, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v2

    .line 1247
    invoke-static {v0, v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v4

    .line 1248
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1249
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v0, ""

    .line 1253
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

    .line 1254
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

    .line 1255
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

    .line 1250
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

    .line 1251
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

    .line 1252
    :cond_b6
    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e"

    const-string v1, "  \u00b7  fat: even"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 1257
    :cond_bf
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    .line 1258
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v3

    .line 1259
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

    .line 1260
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v6, "Right leg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1261
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1262
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

    .line 1263
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

    .line 1264
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

    .line 1265
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

    .line 1266
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    iget-object v1, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1c8

    .line 1268
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

    .line 1270
    :cond_1c8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v1

    .line 1271
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

    .line 1272
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

    .line 1273
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

    .line 1274
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :cond_22a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 1273
    :cond_230
    const-string v0, "\u2212"

    goto :goto_20f
.end method

.method dot(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "i"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 511
    const-string v1, "\u041a\u0430\u043a\u0432\u043e \u0437\u043d\u0430\u0447\u0438"

    const-string v2, "What it means"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    return-object v0
.end method

.method dotLp()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    .line 517
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 518
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 519
    return-object v0
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method dropped()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1602
    const-string v0, "\u041c\u0435\u0440\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u043e"

    const-string v1, "Not saved"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    .line 1603
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1604
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1605
    return-void
.end method

.method figure()V
    .registers 15

    .prologue
    const/16 v10, 0xa

    const/4 v0, 0x0

    const/4 v13, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1186
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 1187
    new-array v12, v13, [I

    .line 1188
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_5f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5f

    .line 1189
    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v0

    .line 1190
    :cond_1b
    new-array v4, v10, [I

    .line 1191
    if-eqz v0, :cond_45

    .line 1192
    const-wide/16 v2, 0x0

    .line 1193
    array-length v5, v0

    move v1, v9

    :goto_23
    if-ge v1, v5, :cond_2f

    aget-wide v6, v0, v1

    .line 1194
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->factor(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1196
    :cond_2f
    array-length v1, v0

    int-to-double v6, v1

    div-double/2addr v2, v6

    move v1, v9

    .line 1197
    :goto_33
    if-ge v1, v10, :cond_45

    .line 1198
    aget-wide v6, v0, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->factor(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->reachCol(D)I

    move-result v5

    aput v5, v4, v1

    .line 1197
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1201
    :cond_45
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v0, :cond_5d

    move v0, v8

    :goto_4c
    invoke-virtual {v1, v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setChannels(Z[I)V

    .line 1202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u0434\u043e\u0431\u0440\u0435   \u25cf \u043f\u043e-\u043c\u0430\u043b\u043a\u043e   \u25cf \u043d\u0430\u0439-\u043c\u0430\u043b\u043a\u043e \u2014 \u0442\u0430\u043c \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430"

    const-string v2, "\u25cf the current reaches well   \u25cf less   \u25cf least \u2014 more strength there"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    :goto_5c
    return-void

    :cond_5d
    move v0, v9

    .line 1201
    goto :goto_4c

    .line 1206
    :cond_5f
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_b9

    .line 1207
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    invoke-virtual {p0, v2, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    move v1, v9

    .line 1208
    :goto_6a
    if-ge v1, v13, :cond_86

    .line 1209
    if-eqz v2, :cond_76

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_76
    move v0, v9

    :goto_77
    aput v0, v12, v1

    .line 1208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    .line 1209
    :cond_7d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    aget-wide v4, v2, v1

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->layerCol(ID)I

    move-result v0

    goto :goto_77

    .line 1211
    :cond_86
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-nez v0, :cond_a3

    .line 1212
    const-string v0, "\u25cf \u043f\u043e\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430   \u25cf \u043d\u043e\u0440\u043c\u0430   \u25cf \u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v2, "\u25cf below normal   \u25cf normal   \u25cf above"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    :goto_94
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    :goto_97
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v1, :cond_140

    :goto_9d
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v0, v8, v12, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    goto :goto_5c

    .line 1213
    :cond_a3
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-ne v0, v8, :cond_b0

    .line 1214
    const-string v0, "\u25cf \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e   \u25cf \u043d\u0430\u0434 \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e   \u25cf \u0432\u0438\u0441\u043e\u043a\u043e"

    const-string v2, "\u25cf healthy   \u25cf above the middle   \u25cf high"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 1215
    :cond_b0
    const-string v0, "\u25cf \u043a\u0430\u0442\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e   \u25cf \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435   \u25cf \u0441\u0438\u043b\u043d\u043e \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435"

    const-string v2, "\u25cf as usual   \u25cf swelling   \u25cf strong swelling"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 1218
    :cond_b9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v4

    .line 1219
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v1, :cond_ec

    move v3, v8

    .line 1220
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

    .line 1221
    :goto_d5
    if-eqz v2, :cond_df

    if-eqz v3, :cond_f3

    const-string v0, "segMus"

    :goto_db
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_df
    move v10, v9

    .line 1222
    :goto_e0
    if-ge v10, v13, :cond_126

    .line 1223
    if-eqz v11, :cond_e6

    if-nez v0, :cond_f6

    .line 1224
    :cond_e6
    aput v9, v12, v10

    .line 1222
    :goto_e8
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_e0

    :cond_ec
    move v3, v9

    .line 1219
    goto :goto_c2

    .line 1220
    :cond_ee
    const-string v1, "segFat"

    goto :goto_d0

    :cond_f1
    move-object v11, v0

    goto :goto_d5

    .line 1221
    :cond_f3
    const-string v0, "segFat"

    goto :goto_db

    .line 1227
    :cond_f6
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    sub-double v1, v4, v6

    .line 1228
    if-eqz v10, :cond_118

    move v6, v8

    .line 1229
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

    .line 1228
    goto :goto_103

    .line 1229
    :cond_11a
    const-wide v4, 0x3fb999999999999aL    # 0.1

    goto :goto_10a

    :cond_120
    const-wide v6, 0x3ff3333333333333L    # 1.2

    goto :goto_111

    .line 1231
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

    .line 1233
    :cond_137
    const-string v0, "\u25cf \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u0432\u0430\u043b\u0435\u043d\u0438   \u25cf \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430   \u25cf \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043a\u0430\u0447\u0435\u043d\u0438"

    const-string v2, "\u25cf fat lost   \u25cf no change   \u25cf fat gained"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_140
    move v8, v9

    .line 1236
    goto/16 :goto_9d
.end method

.method flex(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 907
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 908
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 909
    return-object v0
.end method

.method from()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v0

    .line 976
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

    .line 968
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v2, :cond_9

    .line 969
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 971
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

.method guard(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 9

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->unlike(Lorg/json/JSONArray;DJ)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1588
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ba

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1589
    :goto_2a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_c4

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object v2, v1

    .line 1590
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0422\u043e\u0432\u0430 \u043b\u0438 \u0435 "

    const-string v4, "Is this "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 1591
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043a\u0433 \u2014 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u043e "

    const-string v4, " kg \u2014 last time "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1592
    if-eqz v2, :cond_c8

    const-string v0, "w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v0

    :goto_87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043a\u0433. \u041d\u0435 \u0437\u0430\u043f\u0438\u0441\u0432\u0430\u043c \u0447\u0443\u0436\u0434\u043e \u043c\u0435\u0440\u0435\u043d\u0435."

    const-string v3, " kg. A measurement of someone else is not saved."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u0414\u0430, \u0437\u0430\u043f\u0438\u0448\u0438"

    const-string v3, "Yes, save it"

    .line 1594
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Keep;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    const-string v0, "\u041d\u0435, \u043e\u0442\u0445\u0432\u044a\u0440\u043b\u0438"

    const-string v5, "No, discard"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Drop;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Drop;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    move-object v0, p0

    .line 1590
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1599
    :goto_b9
    return-void

    .line 1588
    :cond_ba
    const-string v0, "\u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v1, "the client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 1589
    :cond_c4
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_41

    .line 1592
    :cond_c8
    const-string v0, "\u2014"

    goto :goto_87

    .line 1598
    :cond_cb
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->keep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_b9
.end method

.method hasFull()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1486
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 1487
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1488
    if-eqz v2, :cond_1c

    const-string v3, "fat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1489
    const/4 v1, 0x1

    .line 1492
    :cond_1b
    return v1

    .line 1486
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 500
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 501
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 502
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 504
    :cond_1a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dot(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dotLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    return-object v1
.end method

.method heightStepper()Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/16 v6, 0x30

    const/4 v8, 0x1

    const/high16 v7, 0x42400000    # 48.0f

    .line 925
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 926
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 927
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

    .line 929
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 930
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    .line 931
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 932
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 933
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 937
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v2, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 938
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 939
    return-object v0
.end method

.method historyList()V
    .registers 15

    .prologue
    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    .line 453
    :cond_9
    return-void

    .line 432
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 433
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "d.MM \u00b7 HH:mm"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 435
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v2, v3

    :goto_22
    if-ltz v1, :cond_9

    const/4 v0, 0x4

    if-ge v2, v0, :cond_9

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 437
    if-nez v5, :cond_35

    .line 435
    :goto_2f
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_22

    .line 440
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 441
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v7, Ljava/util/Date;

    const-string v8, "t"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v7, v12, v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "w"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u043a\u0433"

    const-string v9, " kg"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v0, "fat"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u00b7  "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "fat"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " %"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ae
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x1

    .line 444
    invoke-static {v7, v0, v12, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, "\u2715"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x28

    invoke-static {v0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 447
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;

    const-string v8, "t"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;J)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 450
    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2f

    .line 445
    :cond_102
    const-string v0, ""

    goto :goto_ae
.end method

.method indexOf(Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    .line 1176
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1177
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-ne v1, p1, :cond_12

    .line 1181
    :goto_11
    return v0

    .line 1176
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1181
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    goto :goto_11
.end method

.method keep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 1608
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v0

    .line 1609
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->steps:I

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIII)Lorg/json/JSONObject;

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_28

    .line 1611
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1612
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1614
    :cond_28
    if-nez v0, :cond_37

    .line 1615
    const-string v0, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e \u2014 \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435"

    const-string v1, "Weight only \u2014 hold the handle with both hands"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    .line 1618
    :cond_37
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 1619
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 1621
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->schedule(Landroid/content/Context;JZII)V

    .line 1622
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 1623
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-eqz v0, :cond_6a

    .line 1624
    iput v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 1625
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1627
    :cond_6a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v0

    .line 1628
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    if-eqz v0, :cond_d9

    const-string v2, "fat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 "

    const-string v4, "Fat "

    .line 1628
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fat"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %  \u00b7  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 "

    const-string v4, "Muscle "

    .line 1629
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "muscle"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    :goto_c9
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->finished(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1632
    return-void

    .line 1630
    :cond_d9
    const-string v0, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e \u2014 \u0431\u0435\u0437 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u043d\u044f\u043c\u0430 \u0441\u044a\u0441\u0442\u0430\u0432"

    const-string v2, "Weight only \u2014 no composition without the handle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c9
.end method

.method layerControl()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 913
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 914
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_6d

    .line 915
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

    .line 916
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 918
    :goto_38
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 919
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

    .line 921
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    const-string v1, "figure"

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dot(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dotLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    return-void

    .line 917
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

    .line 919
    :cond_84
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    goto :goto_49
.end method

.method layerValues(Lorg/json/JSONObject;IZ)[D
    .registers 15

    .prologue
    const/4 v10, 0x5

    const/4 v0, 0x0

    .line 1161
    if-nez p1, :cond_6

    .line 1162
    const/4 v0, 0x0

    .line 1172
    :goto_5
    return-object v0

    .line 1164
    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_31

    .line 1165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 1166
    new-array v2, v10, [D

    move v3, v0

    .line 1167
    :goto_16
    if-ge v3, v10, :cond_2f

    .line 1168
    if-eqz p3, :cond_2a

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v6, v5, v3

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    :goto_24
    aput-wide v0, v2, v3

    .line 1167
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 1168
    :cond_2a
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v0, v0, v3

    goto :goto_24

    :cond_2f
    move-object v0, v2

    .line 1170
    goto :goto_5

    .line 1172
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

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 252
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 253
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2014"

    const/high16 v6, 0x42580000    # 54.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    .line 254
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 255
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, " \u043a\u0433"

    const-string v6, " kg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41900000    # 18.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 257
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    .line 260
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v2, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 261
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    const-string v5, "weight"

    invoke-direct {v4, p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 265
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    .line 267
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2713 \u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e"

    const-string v6, "\u2713 Saved"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    .line 269
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 273
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

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 278
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightStepper()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    .line 280
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    if-eqz v0, :cond_171

    move v0, v1

    :goto_111
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    return-object v3

    :cond_171
    move v0, v2

    .line 280
    goto :goto_111
.end method

.method measureAgain()V
    .registers 2

    .prologue
    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    .line 1498
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->reset()V

    .line 1499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1500
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->startLink()V

    .line 1501
    return-void
.end method

.method names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 526
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
    .line 1547
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_2b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1549
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_25

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_25

    .line 1551
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->reset()V

    .line 1552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1554
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->liveWeight(DZ)V

    .line 1555
    return-void

    .line 1548
    :cond_2b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_f
.end method

.method public onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 7

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1561
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-nez v0, :cond_25

    .line 1562
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;-><init>(Lorg/json/JSONArray;ZII)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    .line 1564
    :cond_25
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_2d

    .line 1565
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1567
    :cond_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->add(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)I

    move-result v0

    .line 1568
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v1, p1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stepResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V

    .line 1569
    if-eqz v0, :cond_49

    .line 1571
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const-wide/16 v2, 0xa28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1581
    :cond_48
    :goto_48
    return-void

    .line 1574
    :cond_49
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->steps:I

    .line 1575
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->merged()Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 1576
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    .line 1577
    if-eqz v0, :cond_48

    .line 1580
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->guard(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_48
.end method

.method public onSegment(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1425
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 1426
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->figure()V

    .line 1427
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 1428
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_1f

    .line 1429
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_17

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarLayer()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 1434
    :goto_1e
    return-void

    .line 1431
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v3, :cond_2b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v0

    .line 1432
    :cond_2b
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v1, :cond_34

    const/4 v1, 0x0

    .line 1431
    :goto_30
    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    goto :goto_1e

    .line 1432
    :cond_34
    const/4 v1, 0x1

    goto :goto_30
.end method

.method public onState(I)V
    .registers 4

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->linkState(I)V

    .line 1518
    packed-switch p1, :pswitch_data_50

    .line 1538
    :goto_8
    return-void

    .line 1520
    :pswitch_9
    const-string v0, "\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v1, "Step on the scale barefoot"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_8

    .line 1523
    :pswitch_17
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_8

    .line 1527
    :pswitch_25
    const-string v0, "\u0425\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0434\u0440\u044a\u0436"

    const-string v1, "Hold the handle and stay still"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_8

    .line 1530
    :pswitch_33
    const-string v0, "\u2713 \u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043b\u0435\u0437\u0435"

    const-string v1, "\u2713 Done \u2014 step off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_8

    .line 1533
    :pswitch_41
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_8

    .line 1518
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_9
        :pswitch_17
        :pswitch_25
        :pswitch_25
        :pswitch_33
        :pswitch_41
    .end packed-switch
.end method

.method prev()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 963
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

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 896
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

    .line 897
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    .line 898
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 899
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    .line 901
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 902
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    return-object v0
.end method

.method radarLayer()I
    .registers 3

    .prologue
    .line 1102
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

    .line 1106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatMid(Z)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    .line 1107
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {p0, p1, p3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_24

    const/4 v0, 0x0

    :goto_15
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v1, p3, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->set(I[D[DI)V

    .line 1109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detailText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    return-void

    .line 1107
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

    .line 1325
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1326
    if-eqz p1, :cond_13

    const-string v0, "z20"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_23

    .line 1327
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    const-string v1, "\u0421\u0442\u044a\u043f\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v2, "Step on the scale"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v7, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_22
    :goto_22
    return-void

    .line 1330
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v1

    .line 1331
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1332
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    const-string v1, "\u0411\u0430\u0437\u0430\u0442\u0430 \u0441\u0435 \u0442\u0440\u0443\u043f\u0430"

    const-string v2, "Building the baseline"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u0434\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v3, "readiness comes with the second measurement"

    .line 1333
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1332
    invoke-virtual {v0, v7, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 1336
    :cond_49
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_157

    const-string v0, "\u041f\u044a\u043b\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v2, "Full strength"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
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

    .line 1339
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1340
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    invoke-virtual {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v0, :cond_10c

    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v2, v0, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_10c

    .line 1342
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

    .line 1343
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u0414. \u043a\u0440\u0430\u043a"

    const-string v4, "R leg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1344
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

    .line 1345
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v4

    .line 1344
    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1347
    :cond_10c
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_22

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_22

    .line 1348
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

    .line 1350
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1352
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1353
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_22

    .line 1337
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

    .line 980
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 981
    if-eqz v2, :cond_86

    const-string v0, "fat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    move v0, v7

    .line 982
    :goto_16
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_88

    move v1, v3

    :goto_1b
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 983
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8a

    :goto_22
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 984
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerControl()V

    .line 985
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

    .line 986
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    const-string v1, "w"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
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

    .line 990
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip(Lorg/json/JSONObject;)V

    .line 991
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->figure()V

    .line 992
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_91

    .line 993
    invoke-virtual {p0, v2, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->renderDay(Lorg/json/JSONObject;Z)V

    .line 997
    :goto_79
    if-eqz p1, :cond_85

    .line 998
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->animateIn()V

    .line 999
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->animateIn()V

    .line 1001
    :cond_85
    return-void

    :cond_86
    move v0, v6

    .line 981
    goto :goto_16

    :cond_88
    move v1, v4

    .line 982
    goto :goto_1b

    :cond_8a
    move v3, v4

    .line 983
    goto :goto_22

    .line 989
    :cond_8c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_5e

    .line 995
    :cond_91
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->renderTrack(Lorg/json/JSONObject;)V

    goto :goto_79
.end method

.method renderDay(Lorg/json/JSONObject;Z)V
    .registers 14

    .prologue
    .line 1004
    if-nez p1, :cond_a3

    .line 1005
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v2, "No measurement yet"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    :goto_f
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readiness(Lorg/json/JSONObject;)V

    .line 1014
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

    .line 1015
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    .line 1016
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

    .line 1017
    const/4 v0, 0x4

    new-array v10, v0, [Z

    fill-array-data v10, :array_1d0

    .line 1018
    const/4 v0, 0x0

    move v8, v0

    :goto_4f
    const/4 v0, 0x4

    if-ge v8, v0, :cond_180

    .line 1019
    const/4 v0, 0x3

    if-ne v8, v0, :cond_136

    .line 1020
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1021
    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 1022
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string v0, "\u2014"

    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
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

    .line 1024
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_118

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_9c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1018
    :goto_9f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4f

    .line 1007
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

    .line 1008
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

    .line 1007
    :cond_c7
    const/4 v0, 0x0

    goto :goto_b6

    .line 1010
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    if-eqz v0, :cond_ff

    const-string v1, "\u0414\u043d\u0435\u0441 \u00b7 "

    const-string v4, "Today \u00b7 "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1010
    if-eqz v0, :cond_108

    const-string v0, "HH:mm"

    :goto_e2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    const-string v4, "t"

    .line 1011
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

    .line 1009
    :cond_ff
    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e \u00b7 "

    const-string v4, "Last \u00b7 "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d8

    .line 1010
    :cond_108
    const-string v0, "d.MM.yyyy"

    goto :goto_e2

    .line 1014
    :cond_10b
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 1022
    :cond_10e
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6b

    .line 1024
    :cond_118
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v0, v0, -0x2

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_125

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_9c

    .line 1025
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

    .line 1027
    :cond_136
    if-eqz p1, :cond_165

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1028
    :goto_142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v2, v2, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_168

    const-string v0, "\u2014"

    :goto_14e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
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

    .line 1027
    :cond_165
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_142

    .line 1028
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

    .line 1032
    :cond_180
    const-string v0, "ffmi"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v6

    const-string v0, "fmi"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v8

    .line 1033
    array-length v9, v6

    .line 1034
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-lez v9, :cond_1c2

    add-int/lit8 v2, v9, -0x1

    aget-wide v2, v6, v2

    :goto_197
    if-lez v9, :cond_1c5

    add-int/lit8 v4, v9, -0x1

    aget-wide v4, v8, v4

    .line 1035
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

    .line 1034
    :goto_1ab
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->set(ZDDDD)V

    .line 1036
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

    .line 1037
    return-void

    .line 1034
    :cond_1c2
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_197

    :cond_1c5
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_19d

    .line 1035
    :cond_1c8
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1a4

    :cond_1cb
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1ab

    .line 1036
    :cond_1ce
    const/4 v0, 0x0

    goto :goto_1be

    .line 1017
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
    .line 1040
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v1

    .line 1041
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v3

    .line 1042
    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ne v3, v0, :cond_bb

    .line 1043
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "\u0421\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e \u0438\u0434\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v4, "The comparison starts with the second one"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    :goto_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1052
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

    .line 1053
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x4

    const-string v2, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1054
    const/4 v0, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_21e

    .line 1055
    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_65
    if-ge v2, v6, :cond_16f

    aget v7, v5, v2

    .line 1056
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

    .line 1057
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1058
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1059
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1060
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;

    invoke-direct {v8, p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1062
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1063
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_65

    .line 1045
    :cond_bb
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d.MM"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1046
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

    .line 1047
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

    .line 1048
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1056
    :cond_16c
    const/4 v0, 0x0

    goto/16 :goto_72

    .line 1065
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

    .line 1066
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

    .line 1067
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1069
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

    .line 1070
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v3, v0, :cond_217

    move-object v0, v1

    :goto_1df
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v2, :cond_219

    const/4 v2, 0x0

    :goto_1e4
    invoke-virtual {p0, p1, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 1071
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v3, v0, :cond_21b

    const/4 v0, 0x1

    :goto_1ec
    invoke-virtual {p0, v1, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->deltaTable(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 1072
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->historyList()V

    .line 1073
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

    .line 1074
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->times()[J

    move-result-object v3

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sliceT([JI)[J

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->set([D[D[J)V

    .line 1075
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead([D[D)V

    .line 1076
    return-void

    .line 1070
    :cond_217
    const/4 v0, 0x0

    goto :goto_1df

    :cond_219
    const/4 v2, 0x1

    goto :goto_1e4

    .line 1071
    :cond_21b
    const/4 v0, 0x0

    goto :goto_1ec

    .line 1054
    nop

    :array_21e
    .array-data 4
        0x4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method reveal()V
    .registers 2

    .prologue
    .line 1636
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_5

    .line 1641
    :goto_4
    return-void

    .line 1639
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1640
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    goto :goto_4
.end method

.method row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 19

    .prologue
    .line 1131
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

    .line 1133
    return-void

    .line 1131
    :cond_1b
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_8
.end method

.method rowValues(Ljava/lang/String;DDLjava/lang/String;ZZZ)V
    .registers 22

    .prologue
    .line 1137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1138
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1139
    const/4 v2, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1140
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

    .line 1142
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

    .line 1143
    const v4, 0x800005

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1144
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_e8

    const-string v2, "  \u2192  "

    :goto_5e
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {v4, v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1146
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
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

    .line 1148
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    sub-double v4, p4, p2

    .line 1150
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_a4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_ec

    :cond_a4
    const-string v2, ""

    .line 1151
    :goto_a6
    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x1

    .line 1150
    invoke-static {v6, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 1152
    const v2, 0x800005

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1153
    if-eqz p8, :cond_d1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_d1

    .line 1154
    if-eqz p9, :cond_121

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_ce
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1156
    :cond_d1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1158
    return-void

    .line 1142
    :cond_e4
    const-string v2, ""

    goto/16 :goto_3c

    .line 1145
    :cond_e8
    const-string v2, ""

    goto/16 :goto_5e

    .line 1150
    :cond_ec
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v8, v10

    if-gez v2, :cond_fc

    const-string v2, "="

    goto :goto_a6

    .line 1151
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

    .line 1154
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
    .line 1541
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1543
    return-void
.end method

.method series(Ljava/lang/String;)[D
    .registers 10

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1358
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1359
    new-array v6, v5, [D

    move v4, v0

    .line 1360
    :goto_e
    if-ge v4, v5, :cond_61

    .line 1361
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1362
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

    .line 1363
    :cond_30
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1364
    const-string v1, "page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    :goto_42
    aput-wide v0, v6, v4

    .line 1360
    :goto_44
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    .line 1364
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

    .line 1366
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

    .line 1369
    :cond_61
    return-object v6
.end method

.method setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    .prologue
    .line 1398
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-eq p2, p3, :cond_12

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1399
    :cond_12
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :goto_17
    return-void

    .line 1402
    :cond_18
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 1403
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3a

    .line 1404
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1408
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

    .line 1409
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_77

    const/4 v0, 0x1

    :goto_69
    if-ne v0, p6, :cond_79

    const/4 v0, 0x1

    .line 1410
    :goto_6c
    if-eqz p7, :cond_7b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1408
    :cond_74
    const-string v0, "\u25bc "

    goto :goto_47

    .line 1409
    :cond_77
    const/4 v0, 0x0

    goto :goto_69

    :cond_79
    const/4 v0, 0x0

    goto :goto_6c

    .line 1410
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
    .line 1449
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_b

    .line 1450
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 1454
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1455
    return-void

    .line 1452
    :cond_b
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    goto :goto_6
.end method

.method setMetric(I)V
    .registers 3

    .prologue
    .line 1464
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1466
    return-void
.end method

.method setMode(I)V
    .registers 3

    .prologue
    .line 1437
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-ne p1, v0, :cond_5

    .line 1446
    :goto_4
    return-void

    .line 1440
    :cond_5
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 1441
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 1442
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1444
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto :goto_4
.end method

.method setRange(I)V
    .registers 3

    .prologue
    .line 1458
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    .line 1459
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1461
    return-void
.end method

.method show()V
    .registers 10

    .prologue
    const/high16 v8, 0x42600000    # 56.0f

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v5, 0x2

    const/4 v4, -0x2

    const/4 v7, 0x0

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_293

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_293

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_28
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a7

    :goto_30
    const-string v2, "\u041a\u0430\u043d\u0442\u0430\u0440 \u00b7 \u0431\u043e\u0441, \u043f\u043e \u0442\u044a\u043d\u043a\u0438 \u0434\u0440\u0435\u0445\u0438, \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v3, "Scale \u00b7 barefoot, light clothes, before the training"

    .line 178
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    .line 177
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->landH(Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->workH:I

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0410\u043d\u0430\u043b\u0438\u0437"

    const-string v2, "Analysis"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 196
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    const-string v2, "Summary"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 201
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->middle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v0, :cond_2b1

    const/4 v0, 0x1

    :goto_16c
    invoke-direct {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->view()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->arrange()V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041c\u0435\u0440\u0438 \u043f\u0430\u043a"

    const-string v2, "Measure again"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->schedule(Landroid/content/Context;JZII)V

    .line 232
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 233
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 239
    :try_start_25b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->orientationBefore:I

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_26a
    .catch Ljava/lang/Throwable; {:try_start_25b .. :try_end_26a} :catch_2b4

    .line 243
    :goto_26a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_288

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 246
    :cond_288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 247
    return-void

    .line 176
    :cond_293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_2a3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    :cond_2a3
    const-string v0, ""

    goto/16 :goto_28

    .line 177
    :cond_2a7
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v2, "Scale"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    :cond_2b1
    move v0, v7

    .line 214
    goto/16 :goto_16c

    .line 241
    :catch_2b4
    move-exception v0

    goto :goto_26a
.end method

.method showDetail()V
    .registers 8

    .prologue
    .line 889
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 891
    :goto_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->open(Landroid/app/Activity;Lorg/json/JSONArray;IZIILjava/lang/String;)V

    .line 892
    return-void

    .line 890
    :cond_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_3b
    const-string v6, ""

    goto :goto_1c
.end method

.method showInfo(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1646
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 1698
    :goto_14
    return-void

    .line 1650
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1651
    const-string v1, "\u041c\u0435\u0440\u0435\u043d\u0435\n\u2022 \u0431\u043e\u0441\u0438 \u0441\u0442\u044a\u043f\u0430\u043b\u0430, \u0433\u043e\u043b\u0438 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u2014 \u0442\u044a\u043d\u043a\u0438\u0442\u0435 \u0434\u0440\u0435\u0445\u0438 \u043d\u0435 \u043f\u0440\u0435\u0447\u0430\u0442\n\u2022 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043e \u0435\u0434\u043d\u043e \u0438 \u0441\u044a\u0449\u043e \u0432\u0440\u0435\u043c\u0435, 2 \u0447 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\n\n\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\n\u0421\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 20 \u0438 100 kHz \u0441\u043f\u0440\u044f\u043c\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 EMS (\u0434\u0435\u043d 2\u20134) \u0433\u043e \u0432\u0434\u0438\u0433\u0430 \u2192 \u0434\u043d\u0435\u0441 \u043f\u043e-\u0441\u043b\u0430\u0431\u043e: \u221215 % \u0438\u043b\u0438 \u221230 %. \u0421\u044a\u0449\u043e\u0442\u043e \u043f\u0440\u0438\u043b\u0430\u0433\u0430\u0442 Auto \u0438 \u043f\u043b\u0430\u043d\u0430 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043a\u043b\u0438\u0435\u043d\u0442; \u043f\u043e-\u0441\u0438\u043b\u043d\u043e\u0442\u043e \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 (\u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 / \u043a\u0430\u043d\u0442\u0430\u0440) \u043f\u0435\u0447\u0435\u043b\u0438.\n\n\u0422\u0438\u043f \u0442\u044f\u043b\u043e \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\n\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043d\u0430 \u043c\u00b2 \u0440\u044a\u0441\u0442 \u2014 \u043f\u043b\u044a\u0442\u043d\u0430\u0442\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430 \u043d\u0435 \u0435 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e. \u0412\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430 \u0435 \u0442\u0430\u0437\u0438, \u043d\u0430 \u043a\u043e\u044f\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f\u0442 \u043d\u0430 \u043c\u0435\u0434\u0438\u0430\u043d\u0430\u0442\u0430 \u043e\u0442 DXA \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043d\u0430 3 327 \u0434\u0443\u0448\u0438; \u0432\u044a\u0432\u0435\u0434\u0435\u043d\u0430\u0442\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0435 \u0443\u0447\u0430\u0441\u0442\u0432\u0430.\n\n\u0417\u043e\u043d\u0438\n\u041c\u0443\u0441\u043a\u0443\u043b\u0438: 100 % = \u043d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430 \u0438 \u0442\u0435\u0433\u043b\u043e\u0442\u043e. \u041c\u0430\u0437\u043d\u0438\u043d\u0438: \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u044a\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0430\u0442\u0430 \u0441\u0440\u0435\u0434\u0430 (\u043c\u044a\u0436\u0435 15 %, \u0436\u0435\u043d\u0438 25 %). \u041f\u0443\u043d\u043a\u0442\u0438\u0440 = \u0441\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e.\n\n\u0422\u043e\u043a\n\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043d\u0430\u0434 \u0432\u0441\u044f\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442: \u043e\u0440\u0430\u043d\u0436\u0435\u0432\u043e = \u0442\u0430\u043c \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u043d\u0430\u0439-\u043c\u0430\u043b\u043a\u043e \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u0438\u043b\u0438 \u043f\u043e-\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v2, "Measuring\n\u2022 bare feet, bare hands on the handle \u2014 light clothes do not matter\n\u2022 before the training, same time of day, 2 h after a meal\n\nReadiness\nThe 20 and 100 kHz impedance against this client\'s usual. Swelling after a hard EMS session (day 2\u20134) raises it \u2192 softer today: \u221215 % or \u221230 %. Auto and the next-client plan apply the same; the stronger of rest days and scale wins.\n\nBody type and age\nMuscle and fat per m\u00b2 of height \u2014 dense muscle is not overweight. The age is the one whose median arm + leg muscle and fat (DXA, 3,327 adults) match; the entered age is not used.\n\nZones\nMuscle: 100 % = normal for height and weight. Fat: the zone\'s fat % against the healthy middle (men 15 %, women 25 %). Dashed = the comparison.\n\nCurrent\nFat over each muscle group insulates: orange = the current reaches least there \u2014 more strength or a wider pulse."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1685
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1686
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

    .line 1687
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, -0xbd5a0b

    const v4, 0x3e23d70a    # 0.16f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    .line 1688
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const v4, -0xbd5a0b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 1687
    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1689
    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x440c0000    # 560.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 1691
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1692
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1693
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1694
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

    .line 1695
    :catch_b4
    move-exception v0

    .line 1696
    const-string v1, "ScaleScreen.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method

.method showStage(Z)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1470
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    .line 1471
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->view()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_4d

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4f

    move v0, v2

    :goto_16
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1473
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_51

    move v0, v2

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1474
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    if-nez p1, :cond_29

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    if-nez v0, :cond_53

    :cond_29
    move v0, v2

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hasFull()Z

    move-result v3

    if-eqz v3, :cond_38

    move v2, v1

    :cond_38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    if-eqz p1, :cond_55

    .line 1477
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->view()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1483
    :goto_4c
    return-void

    :cond_4d
    move v0, v2

    .line 1471
    goto :goto_e

    :cond_4f
    move v0, v1

    .line 1472
    goto :goto_16

    :cond_51
    move v0, v1

    .line 1473
    goto :goto_1e

    :cond_53
    move v0, v1

    .line 1474
    goto :goto_2a

    .line 1480
    :cond_55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->row:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto :goto_4c
.end method

.method showSummary()V
    .registers 26

    .prologue
    .line 748
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v11

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v4, :cond_27f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_27f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 751
    :goto_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    const-string v7, "Summary"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_299

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 752
    if-eqz v11, :cond_29d

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "d.MM.yyyy \u00b7 HH:mm"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    const-string v8, "t"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 753
    :goto_77
    const/16 v7, 0x500

    .line 751
    invoke-static {v5, v6, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v5

    .line 754
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 755
    const/high16 v4, 0x43dc0000    # 440.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v7, 0x432a0000    # 170.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 757
    const/16 v4, 0x30

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 758
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v11, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v13

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, "\u041f\u0440\u043e\u0444\u0438\u043b"

    const-string v9, "Profile"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, ""

    const/high16 v9, 0x41900000    # 18.0f

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v15, 0x1

    invoke-static {v4, v7, v9, v14, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 764
    const/high16 v7, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v9, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v14, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v14

    const/high16 v15, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v15

    invoke-virtual {v4, v7, v9, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 765
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 766
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 767
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip(Lorg/json/JSONObject;)V

    .line 768
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 769
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v14, -0x2

    invoke-direct {v7, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 771
    const/high16 v9, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 772
    invoke-virtual {v8, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-eqz v4, :cond_2a1

    const-string v4, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_141
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u00b7 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u0433."

    const-string v9, " y"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u00b7 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u0441\u043c"

    const-string v9, " cm"

    .line 774
    invoke-static {v7, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v11, :cond_2ab

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "w"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " \u043a\u0433"

    const-string v14, " kg"

    invoke-static {v9, v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1a4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v9, 0x41700000    # 15.0f

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v15, 0x0

    invoke-static {v7, v4, v9, v14, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 777
    const/16 v4, 0x50

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2af

    const-string v4, "\u2014"

    move-object v7, v4

    :goto_1e4
    const/high16 v15, 0x42300000    # 44.0f

    .line 779
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2be

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 780
    :goto_1f2
    const/16 v16, 0x1

    .line 778
    move/from16 v0, v16

    invoke-static {v14, v7, v15, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 781
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 782
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  \u0444\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u00b7 \u043f\u0430\u0441\u043f\u043e\u0440\u0442 "

    const-string v15, "  physical age \u00b7 passport "

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v14, 0x41600000    # 14.0f

    sget v15, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v7, v14, v15, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 785
    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v7, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 786
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    new-instance v14, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v14, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    .line 789
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v11, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v4

    const/4 v7, 0x0

    aget-object v9, v4, v7

    .line 790
    const/4 v4, 0x5

    new-array v15, v4, [I

    .line 791
    const/4 v4, 0x0

    move v7, v4

    :goto_26d
    const/4 v4, 0x5

    if-ge v7, v4, :cond_2f3

    .line 792
    aget-wide v16, v9, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2ec

    const/4 v4, 0x0

    :goto_279
    aput v4, v15, v7

    .line 791
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_26d

    .line 750
    :cond_27f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v4, :cond_294

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto/16 :goto_27

    :cond_294
    const-string v4, ""

    move-object v10, v4

    goto/16 :goto_27

    .line 751
    :cond_299
    const-string v4, ""

    goto/16 :goto_55

    .line 753
    :cond_29d
    const-string v4, ""

    goto/16 :goto_77

    .line 773
    :cond_2a1
    const-string v4, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_141

    .line 774
    :cond_2ab
    const-string v4, ""

    goto/16 :goto_1a4

    .line 778
    :cond_2af
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto/16 :goto_1e4

    .line 779
    :cond_2be
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v4, v4, -0x3

    int-to-double v0, v4

    move-wide/from16 v18, v0

    cmpg-double v4, v16, v18

    if-gtz v4, :cond_2d3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_1f2

    .line 780
    :cond_2d3
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v4, v4, 0x3

    int-to-double v0, v4

    move-wide/from16 v18, v0

    cmpl-double v4, v16, v18

    if-ltz v4, :cond_2e8

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_1f2

    :cond_2e8
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_1f2

    .line 792
    :cond_2ec
    aget-wide v16, v9, v7

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->muscleCol(D)I

    move-result v4

    goto :goto_279

    .line 794
    :cond_2f3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v4, :cond_55f

    const/4 v4, 0x1

    :goto_2fa
    const/4 v7, -0x1

    invoke-virtual {v14, v4, v15, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    .line 795
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const v9, 0x3f666666    # 0.9f

    invoke-direct {v4, v7, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v15

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, "\u041d\u0430\u043a\u0440\u0430\u0442\u043a\u043e \u00b7 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v8, "In short \u00b7 against the norm"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_E:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 802
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "\u043d\u0438\u0441\u043a\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "\u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v16, "very low"

    aput-object v16, v8, v9

    const/4 v9, 0x1

    const-string v16, "low"

    aput-object v16, v8, v9

    const/4 v9, 0x2

    const-string v16, "normal"

    aput-object v16, v8, v9

    const/4 v9, 0x3

    const-string v16, "high"

    aput-object v16, v8, v9

    const/4 v9, 0x4

    const-string v16, "very high"

    aput-object v16, v8, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 804
    const/4 v8, 0x5

    new-array v0, v8, [[Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v8, 0x0

    const-string v9, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v19, "Body fat"

    .line 805
    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v18, v8

    const/16 v19, 0x1

    if-eqz v11, :cond_562

    const-string v8, "fat"

    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v20

    invoke-virtual {v11, v8, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 806
    :goto_3a0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    move/from16 v21, v0

    .line 805
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v8, v9, v0, v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    aput-object v4, v18, v19

    aput-object v18, v16, v17

    const/4 v4, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v17, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v18, "Muscle"

    .line 807
    invoke-static/range {v17 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v9

    const/4 v9, 0x1

    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string v21, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v21, v17, v20

    const/16 v20, 0x1

    const-string v21, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v21, v17, v20

    const/16 v20, 0x2

    const-string v21, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v21, v17, v20

    const/16 v20, 0x3

    const-string v21, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e"

    aput-object v21, v17, v20

    const/16 v20, 0x4

    const-string v21, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v21, v17, v20

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "very low"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "low"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "normal"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "athletic"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "very high"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v13, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v13

    aput-object v13, v8, v9

    aput-object v8, v16, v4

    const/4 v4, 0x2

    const/4 v8, 0x2

    new-array v13, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "\u0412\u043e\u0434\u0430"

    const-string v17, "Water"

    .line 810
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v8

    const/16 v17, 0x1

    if-eqz v11, :cond_566

    const-string v8, "water"

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v18

    invoke-virtual {v11, v8, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 811
    :goto_451
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move/from16 v18, v0

    .line 810
    move/from16 v0, v18

    invoke-static {v8, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v8

    aput-object v8, v13, v17

    aput-object v13, v16, v4

    const/4 v4, 0x3

    const/4 v8, 0x2

    new-array v13, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v17, "Visceral fat"

    .line 812
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v8

    const/16 v17, 0x1

    if-eqz v11, :cond_56a

    .line 813
    const-string v8, "visc"

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v18

    invoke-virtual {v11, v8, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 812
    :goto_480
    invoke-static {v8, v9, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v7

    aput-object v7, v13, v17

    aput-object v13, v16, v4

    const/4 v4, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "\u0418\u0422\u041c (\u0441\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e\u0442\u043e)"

    const-string v13, "BMI (weight only)"

    .line 814
    invoke-static {v9, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v13, 0x1

    if-eqz v11, :cond_56e

    .line 815
    const-string v8, "bmi"

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v18

    invoke-virtual {v11, v8, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    :goto_4a4
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u044a\u043a"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "\u043d\u0438\u0441\u044a\u043a"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "\u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "very low"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "low"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "normal"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "above"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, "obese"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 814
    move-object/from16 v0, v17

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->bmiNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v8

    aput-object v8, v7, v13

    aput-object v7, v16, v4

    .line 818
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v4, 0x0

    move v7, v4

    :goto_509
    if-ge v7, v8, :cond_572

    aget-object v9, v16, v7

    .line 819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    aget-object v4, v9, v4

    check-cast v4, Ljava/lang/String;

    const/high16 v17, 0x41500000    # 13.0f

    sget v18, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v4, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v15, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    new-instance v13, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v13, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    .line 821
    const/4 v4, 0x1

    aget-object v4, v9, v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v13, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 822
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v17, 0x42b00000    # 88.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_509

    .line 794
    :cond_55f
    const/4 v4, 0x0

    goto/16 :goto_2fa

    .line 806
    :cond_562
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_3a0

    .line 811
    :cond_566
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_451

    .line 813
    :cond_56a
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_480

    .line 815
    :cond_56e
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_4a4

    .line 824
    :cond_572
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const v8, 0x3f866666    # 1.05f

    invoke-direct {v4, v7, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 825
    const/high16 v7, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 826
    invoke-virtual {v6, v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438"

    const-string v8, "Recommendations"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 831
    new-instance v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v13, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 832
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v15

    .line 834
    invoke-virtual {v13, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 835
    const-string v4, "\u0431"

    const-string v7, "e"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\u0431"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 836
    if-eqz v16, :cond_7c2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u0414\u041d\u0415\u0421"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "EMS"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "\u0422\u042f\u041b\u041e"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "\u041d\u0410\u0412\u0418\u041a"

    aput-object v8, v4, v7

    move-object v8, v4

    .line 838
    :goto_5e3
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_8ee

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v7, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->advice(Lorg/json/JSONArray;IZII)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_613
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    .line 840
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v19

    .line 841
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v20, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    move/from16 v21, v0

    aget v21, v17, v21

    const/16 v22, 0x78

    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    .line 842
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v22

    .line 841
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v7, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    new-instance v7, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 844
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    move/from16 v20, v0

    aget v20, v17, v20

    const/high16 v21, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v21

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 847
    const/high16 v21, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v21

    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v22

    const/high16 v23, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v23

    const/high16 v24, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v24

    invoke-virtual/range {v20 .. v24}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 848
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v20

    .line 850
    const/high16 v7, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v21, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v21

    const/high16 v22, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v22

    const/high16 v23, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 851
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->kind:I

    move/from16 v21, v0

    aget-object v21, v8, v21

    const/high16 v22, 0x41300000    # 11.0f

    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    move/from16 v23, v0

    aget v23, v17, v23

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v7, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 852
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v21, v0

    if-eqz v16, :cond_7dc

    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleBg:Ljava/lang/String;

    :goto_737
    const/high16 v22, 0x41800000    # 16.0f

    sget v23, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v7, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz v16, :cond_7e0

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textBg:Ljava/lang/String;

    :goto_764
    const/high16 v21, 0x41600000    # 14.0f

    sget v22, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v7, v4, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 855
    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    invoke-virtual {v4, v7, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 856
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/16 v21, -0x2

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7b9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7b9} :catch_7bb

    goto/16 :goto_613

    .line 882
    :catch_7bb
    move-exception v4

    .line 883
    const-string v5, "ScaleScreen.summary"

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    :goto_7c1
    return-void

    .line 837
    :cond_7c2
    const/4 v4, 0x4

    :try_start_7c3
    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "TODAY"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "EMS"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "BODY"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "HABIT"

    aput-object v8, v4, v7

    move-object v8, v4

    goto/16 :goto_5e3

    .line 853
    :cond_7dc
    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleEn:Ljava/lang/String;

    goto/16 :goto_737

    .line 854
    :cond_7e0
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textEn:Ljava/lang/String;

    goto :goto_764

    .line 860
    :cond_7e3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const v8, 0x3f933333    # 1.15f

    invoke-direct {v4, v7, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 862
    const/high16 v7, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 863
    invoke-virtual {v6, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    iget-object v4, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x3

    new-array v7, v7, [F

    fill-array-data v7, :array_8fa

    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_904

    const/16 v9, 0xaa

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->follow(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/LinearLayout;[F[II)V

    .line 867
    if-eqz v11, :cond_8a6

    const-string v4, "fat"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a6

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u00b7 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    const-string v7, "Share \u00b7 image"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 869
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    iget-object v6, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x43700000    # 240.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u00b7 HTML"

    const-string v7, "Share \u00b7 HTML"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 872
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x435c0000    # 220.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v8, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 874
    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 875
    iget-object v7, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    :cond_8a6
    iget-object v4, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v7, "Close"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 879
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;

    invoke-direct {v6, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    iget-object v6, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x43820000    # 260.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    iget-object v4, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_8eb
    .catch Ljava/lang/Throwable; {:try_start_7c3 .. :try_end_8eb} :catch_7bb

    goto/16 :goto_7c1

    .line 838
    nop

    :array_8ee
    .array-data 4
        -0xdd3aa2
        -0xc74208
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 865
    :array_8fa
    .array-data 4
        0x3f666666    # 0.9f
        0x3f866666    # 1.05f
        0x3f933333    # 1.15f
    .end array-data

    :array_904
    .array-data 4
        0x258
        0x230
        0x280
    .end array-data
.end method

.method startLink()V
    .registers 11

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_9

    .line 1505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 1507
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->saved:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1508
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1509
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

    .line 1510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->start()V

    .line 1511
    return-void
.end method

.method stepHeight(I)V
    .registers 9

    .prologue
    .line 943
    const/16 v0, 0x64

    const/16 v1, 0xdc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 944
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

    .line 945
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 946
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 948
    return-void
.end method

.method times()[J
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1373
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1374
    new-array v4, v3, [J

    move v2, v0

    .line 1375
    :goto_c
    if-ge v2, v3, :cond_25

    .line 1376
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_22

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1c
    aput-wide v0, v4, v2

    .line 1375
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 1377
    :cond_22
    const-wide/16 v0, 0x0

    goto :goto_1c

    .line 1379
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

    .line 1281
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v3

    .line 1282
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->known()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1322
    :goto_1f
    return-void

    .line 1288
    :cond_20
    iget v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    packed-switch v4, :pswitch_data_b8

    .line 1314
    const-string v0, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Very low fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    const v2, -0xc74208

    move-object v3, v0

    .line 1318
    :goto_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1320
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

    .line 1321
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f

    .line 1290
    :pswitch_64
    const-string v1, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u0435\u043d \u00b7 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Athletic \u00b7 the weight is muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 1292
    goto :goto_31

    .line 1294
    :pswitch_6f
    const-string v1, "\u0411\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u0430\u043d"

    const-string v2, "Balanced"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 1296
    goto :goto_31

    .line 1298
    :pswitch_7a
    const-string v0, "\u0421\u0438\u043b\u0435\u043d \u00b7 \u0441 \u0438\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Strong \u00b7 with excess fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1300
    goto :goto_31

    .line 1302
    :pswitch_84
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-lt v0, v5, :cond_97

    const-string v0, "\u0417\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v4, "Obese"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    :goto_90
    iget v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-lt v3, v5, :cond_a0

    :goto_94
    move v2, v1

    move-object v3, v0

    .line 1304
    goto :goto_31

    .line 1302
    :cond_97
    const-string v0, "\u0418\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v4, "Excess fat"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_a0
    move v1, v2

    .line 1303
    goto :goto_94

    .line 1306
    :pswitch_a2
    const-string v0, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u043f\u0440\u0438 \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Fat with little muscle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    .line 1308
    goto :goto_31

    .line 1310
    :pswitch_ad
    const-string v0, "\u0421\u043b\u0430\u0431 \u00b7 \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v1, "Slim \u00b7 little muscle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1312
    goto/16 :goto_31

    .line 1288
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
    .line 951
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 952
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

    .line 954
    :cond_24
    return-void
.end method
