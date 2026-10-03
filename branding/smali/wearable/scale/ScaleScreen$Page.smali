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

.field barChips:Landroid/widget/LinearLayout;

.field barRange:Landroid/widget/LinearLayout;

.field barTools:Landroid/widget/LinearLayout;

.field barTop:Landroid/widget/LinearLayout;

.field body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

.field final cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

.field changeHead:Landroid/widget/TextView;

.field detail:Landroid/widget/TextView;

.field gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

.field grid:Landroid/widget/LinearLayout;

.field heightCm:I

.field heightFromProfile:Z

.field heightRow:Landroid/widget/LinearLayout;

.field heightValue:Landroid/widget/TextView;

.field hist:Lorg/json/JSONArray;

.field history:Landroid/widget/LinearLayout;

.field infoPop:Landroid/widget/PopupWindow;

.field lastKg:D

.field lastSweep:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

.field layer:I

.field layerHolder:Landroid/widget/LinearLayout;

.field leftCard:Landroid/widget/LinearLayout;

.field legend:Landroid/widget/TextView;

.field link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final main:Landroid/os/Handler;

.field male:Z

.field meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

.field metric:I

.field metricHolder:Landroid/widget/LinearLayout;

.field mode:I

.field modeHolder:Landroid/widget/LinearLayout;

.field narrow:Z

.field off:Z

.field orientationBefore:I

.field portrait:Z

.field radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

.field range:I

.field rangeHolder:Landroid/widget/LinearLayout;

.field reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

.field readyNote:Landroid/widget/TextView;

.field reasons:Landroid/widget/LinearLayout;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field selected:I

.field session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

.field sessionT:J

.field stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

.field staging:Z

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


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
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

    .line 587
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438"

    aput-object v1, v0, v2

    const-string v1, "\u043d\u0438\u0441\u043a\u0438"

    aput-object v1, v0, v3

    const-string v1, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u043f\u043e\u0432\u0438\u0448\u0435\u043d\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u0432\u0438\u0441\u043e\u043a\u0438"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    .line 588
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "very low"

    aput-object v1, v0, v2

    const-string v1, "low"

    aput-object v1, v0, v3

    const-string v1, "normal"

    aput-object v1, v0, v4

    const-string v1, "elevated"

    aput-object v1, v0, v5

    const-string v1, "high"

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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 76
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    .line 112
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->orientationBefore:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    .line 125
    new-array v0, v4, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    .line 126
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    .line 127
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    .line 138
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 139
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 140
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    .line 141
    iput v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 142
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 144
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    .line 145
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 146
    iput v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 1647
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 149
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    .line 150
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 151
    iget-wide v4, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    .line 152
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_7d

    .line 154
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_61

    .line 155
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v4, :cond_b3

    move v0, v1

    :goto_5f
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    .line 157
    :cond_61
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_6d

    .line 158
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    .line 160
    :cond_6d
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 161
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_7d

    .line 162
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 165
    :cond_7d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-lez v0, :cond_b5

    :goto_81
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    .line 166
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_a6

    .line 167
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

    .line 169
    :cond_a6
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    if-gtz v0, :cond_b2

    .line 170
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-eqz v0, :cond_b7

    const/16 v0, 0xb2

    :goto_b0
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 172
    :cond_b2
    return-void

    :cond_b3
    move v0, v2

    .line 155
    goto :goto_5f

    :cond_b5
    move v1, v2

    .line 165
    goto :goto_81

    .line 170
    :cond_b7
    const/16 v0, 0xa5

    goto :goto_b0
.end method

.method static detach(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 342
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    :cond_11
    return-void
.end method

.method static one(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1538
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
    .line 1211
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1212
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1213
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1215
    return-void
.end method

.method static signedPct(D)Ljava/lang/String;
    .registers 10

    .prologue
    .line 1542
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

    .line 1507
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1508
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [D

    .line 1509
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1510
    return-object v1
.end method

.method static sliceT([JI)[J
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1514
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1515
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [J

    .line 1516
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1517
    return-object v1
.end method


# virtual methods
.method arrange()V
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->narrow(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->landH(Landroid/app/Activity;I)I

    move-result v5

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    new-array v3, v4, [F

    fill-array-data v3, :array_110

    new-array v4, v4, [I

    fill-array-data v4, :array_118

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->apply(Landroid/app/Activity;Landroid/widget/LinearLayout;Z[F[II)V

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 301
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    if-eqz v1, :cond_46

    const/high16 v1, 0x43aa0000    # 340.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    :cond_46
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 302
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detach(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detach(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detach(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barChips:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v6

    .line 309
    :goto_6e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 310
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    if-eqz v1, :cond_9c

    .line 311
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v1, v6, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v2, v1

    .line 313
    :goto_86
    if-lez v0, :cond_a9

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    :goto_8e
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 314
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 312
    :cond_9c
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v1

    goto :goto_86

    :cond_a9
    move v1, v6

    .line 313
    goto :goto_8e

    .line 316
    :cond_ab
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    if-eqz v0, :cond_d6

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barChips:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    :goto_cf
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lay()V

    .line 331
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->bars()V

    .line 332
    return-void

    .line 322
    :cond_d6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43be0000    # 380.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 328
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_cf

    .line 298
    nop

    :array_110
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_118
    .array-data 4
        0x154
        0x230
    .end array-data
.end method

.method askDelete(J)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 521
    .line 522
    const/4 v0, 0x0

    move v1, v0

    move-object v2, v6

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 523
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_86

    const-string v3, "t"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_86

    .line 522
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_4

    .line 528
    :cond_22
    if-nez v2, :cond_25

    .line 536
    :goto_24
    return-void

    .line 531
    :cond_25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d.MM.yyyy \u00b7 HH:mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 532
    const-string v1, "\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u0442\u043e"

    const-string v3, "Delete the measurement"

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

    .line 533
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043a\u0433. \u041e\u0441\u0442\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0449\u0435 \u0431\u044a\u0434\u0430\u0442 \u043f\u0440\u0435\u0438\u0437\u0447\u0438\u0441\u043b\u0435\u043d\u0438."

    const-string v3, " kg. The other values will be recalculated."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    .line 535
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;

    invoke-direct {v4, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;J)V

    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v5, "Cancel"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 532
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_24

    :cond_86
    move-object v0, v2

    goto :goto_1e
.end method

.method bars()V
    .registers 6

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 336
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_30

    move v0, v2

    :goto_18
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barChips:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v3, :cond_32

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    :goto_2a
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    return-void

    :cond_2e
    move v0, v2

    .line 336
    goto :goto_a

    :cond_30
    move v0, v1

    .line 337
    goto :goto_18

    :cond_32
    move v2, v1

    .line 338
    goto :goto_2a
.end method

.method build()V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\u0414\u043d\u0435\u0441"

    const-string v6, "Today"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "\u0420\u0430\u0437\u0432\u0438\u0442\u0438\u0435"

    const-string v6, "Progress"

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

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 385
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_57

    .line 386
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->buildDay()V

    .line 400
    :cond_48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_56

    .line 401
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lay()V

    .line 402
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->bars()V

    .line 404
    :cond_56
    return-void

    .line 388
    :cond_57
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->buildTrack()V

    .line 389
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "\u0421\u043f\u0440\u044f\u043c\u043e \u043f\u0440\u0435\u0434\u0438\u0448\u043d\u043e\u0442\u043e"

    const-string v2, "Since last time"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "3 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f \u043d\u0430\u0437\u0430\u0434"

    const-string v2, "3 back"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "\u041e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e"

    const-string v2, "Since the first"

    .line 390
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move v0, v1

    .line 391
    :goto_7c
    array-length v2, v4

    if-ge v0, v2, :cond_48

    .line 392
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    aget-object v6, v4, v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    if-ne v0, v2, :cond_b4

    move v2, v3

    :goto_88
    const v7, -0xc74208

    invoke-static {v5, v6, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v5

    .line 393
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    .line 395
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v6, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    if-lez v0, :cond_b6

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    :goto_aa
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 397
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_b4
    move v2, v1

    .line 392
    goto :goto_88

    :cond_b6
    move v2, v1

    .line 396
    goto :goto_aa
.end method

.method buildDay()V
    .registers 15

    .prologue
    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 412
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Body fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v2, "Muscle mass"

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

    const-string v1, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v2, "Body age"

    .line 413
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 414
    const/4 v0, 0x0

    move v2, v0

    :goto_37
    const/4 v0, 0x2

    if-ge v2, v0, :cond_11f

    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 416
    const/4 v0, 0x0

    move v1, v0

    :goto_42
    const/4 v0, 0x2

    if-ge v1, v0, :cond_10b

    .line 417
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v1

    .line 418
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 419
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 420
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 421
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 422
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  \u24d8"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41600000    # 14.0f

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

    .line 424
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v10, ""

    const/high16 v11, 0x41600000    # 14.0f

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    aput-object v9, v8, v0

    .line 425
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v9, "\u2014"

    const/high16 v10, 0x42000000    # 32.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v0

    .line 428
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 429
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v9, 0x6

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tiles:[Landroid/widget/LinearLayout;

    aput-object v6, v7, v0

    .line 431
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    sget-object v8, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->TILE_KEY:[Ljava/lang/String;

    aget-object v0, v8, v0

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 433
    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v1, :cond_108

    const/4 v0, 0x0

    :goto_fa
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_42

    .line 433
    :cond_108
    const/16 v0, 0xa

    goto :goto_fa

    .line 435
    :cond_10b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v2, :cond_11c

    const/4 v0, 0x0

    :goto_110
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_37

    .line 435
    :cond_11c
    const/16 v0, 0xa

    goto :goto_110

    .line 437
    :cond_11f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 438
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v1, "ready"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readyNote:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readyNote:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0422\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v2, "Build"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0x12

    .line 447
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 446
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    .line 449
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v4, 0x432a0000    # 170.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarCard()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u043c\u043e\u0441\u0442 \u043f\u043e \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v3, "Conductivity per channel"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "reach"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    .line 456
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reach:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x432a0000    # 170.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method buildTrack()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    .line 464
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    const-string v2, "trend"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    .line 466
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 468
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarCard()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    .line 474
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "table"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    .line 476
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430"

    const-string v3, "Change over the period"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "change"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    .line 481
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    .line 483
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f"

    const-string v3, "Measurements"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "history"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    .line 488
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method cardInfo(Landroid/view/View;Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 600
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 603
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v8

    .line 604
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v6

    .line 605
    const-string v3, ""

    .line 606
    const-string v2, ""

    .line 607
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 608
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 609
    if-eqz v8, :cond_18b

    const-string v4, "fat"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 610
    :goto_3f
    const-string v7, "fat"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 611
    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Body fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    const-string v2, "\u0414\u0435\u043b\u044a\u0442 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u0432 \u043e\u0431\u0449\u043e\u0442\u043e \u0442\u0435\u0433\u043b\u043e. \u041d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430\u0432\u0438\u0441\u0438 \u043e\u0442 \u043f\u043e\u043b\u0430 \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430."

    const-string v6, "The share of fat in the total weight. The normal range depends on sex and age."

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
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

    .line 748
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 749
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

    .line 750
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

    .line 751
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    .line 750
    invoke-static {v4, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v5, 0x41880000    # 17.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {v4, v3, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {v3, v2, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 754
    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    const-string v4, ""

    .line 757
    const/4 v2, 0x0

    move v5, v2

    :goto_ff
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_737

    .line 758
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 759
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_131

    .line 760
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

    .line 762
    :cond_131
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v7, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    .line 763
    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 764
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v11, 0x42c00000    # 96.0f

    .line 765
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v8, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 766
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_72f

    const/high16 v3, 0x40000000    # 2.0f

    :goto_153
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 767
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_77a

    .line 769
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

    .line 757
    :goto_185
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    goto/16 :goto_ff

    .line 609
    :cond_18b
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_3f

    .line 615
    :cond_18f
    const-string v7, "muscle"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fd

    .line 616
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v3, "Muscle mass"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    const-string v2, "\u041c\u0435\u043a\u043e\u0442\u044a\u043a\u0430\u043d\u043d\u0430 \u043c\u0430\u0441\u0430 \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0432\u043e\u0434\u0430\u0442\u0430 \u0432 \u0442\u044f\u0445. \u041e\u0446\u0435\u043d\u044f\u0432\u0430 \u0441\u0435 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430. \u0421\u043a\u0435\u043b\u0435\u0442\u043d\u0430\u0442\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430 \u0435 \u0432 \u201e\u0410\u043d\u0430\u043b\u0438\u0437\u201c."

    const-string v4, "Soft lean mass \u2014 muscle together with its water, rated for the height. Skeletal muscle is in \"Analysis\"."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430"

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

    .line 777
    :catch_1f6
    move-exception v2

    .line 778
    const-string v3, "ScaleScreen.cardInfo"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    :goto_1fc
    return-void

    .line 624
    :cond_1fd
    :try_start_1fd
    const-string v7, "water"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26f

    .line 625
    const-string v2, "\u0412\u043e\u0434\u0430"

    const-string v3, "Water"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    const-string v2, "\u0414\u0435\u043b\u044a\u0442 \u043d\u0430 \u0432\u043e\u0434\u0430\u0442\u0430 \u0432 \u0442\u0435\u0433\u043b\u043e\u0442\u043e. \u041d\u0438\u0441\u043a\u0430\u0442\u0430 \u0445\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f \u0432\u043b\u043e\u0448\u0430\u0432\u0430 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430\u043d\u0435\u0442\u043e \u043d\u0430 \u0442\u043e\u043a\u0430 \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0441\u0435 \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v4, "The share of water in the weight. Low hydration impairs current conduction \u2014 water before the session is advised."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
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

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 630
    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_26c
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_221

    .line 633
    :cond_26f
    const-string v7, "age"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d6

    .line 634
    const-string v2, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v3, "Body age"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    const-string v2, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430, \u043d\u0430 \u043a\u043e\u044f\u0442\u043e \u0441\u044a\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0430\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430\u0442\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435, \u0441\u043f\u043e\u0440\u0435\u0434 \u0440\u0435\u0444\u0435\u0440\u0435\u043d\u0442\u043d\u0438 DXA \u0434\u0430\u043d\u043d\u0438. \u0420\u0430\u0437\u043b\u0438\u043a\u0430 \u0434\u043e \u00b13 \u0433\u043e\u0434\u0438\u043d\u0438 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u0435\u0430\u043b\u043d\u0430\u0442\u0430 \u0435 \u0432 \u043d\u043e\u0440\u043c\u0430\u0442\u0430."

    const-string v4, "The age the muscle and fat correspond to, from DXA reference data. Within \u00b13 years of the actual age is normal."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 639
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043f\u043e-\u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430"

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

    const-string v12, "matches"

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

    .line 642
    :cond_2d6
    const-string v7, "weight"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_344

    .line 643
    const-string v2, "\u0422\u0435\u0433\u043b\u043e \u0438 \u0418\u0422\u041c"

    const-string v3, "Weight and BMI"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
    const-string v2, "\u0418\u0422\u041c \u043e\u0442\u0447\u0438\u0442\u0430 \u0441\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430 \u0438 \u043d\u0435 \u0440\u0430\u0437\u043b\u0438\u0447\u0430\u0432\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043e\u0442 \u043c\u0430\u0437\u043d\u0438\u043d\u0438. \u041e\u0446\u0435\u043d\u043a\u0430\u0442\u0430 \u043d\u0430 \u0442\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u0435 \u0431\u0430\u0437\u0438\u0440\u0430 \u043d\u0430 \u0441\u044a\u0441\u0442\u0430\u0432\u0430 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v4, "BMI only relates weight to height and does not tell muscle from fat. The build is rated from body composition."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
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

    const-string v8, "\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e"

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

    .line 651
    :cond_344
    const-string v7, "ready"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c2

    .line 652
    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Training readiness"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    const-string v2, "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0442\u044a\u043a\u0430\u043d\u0438\u0442\u0435 \u0441\u043f\u0440\u044f\u043c\u043e \u043b\u0438\u0447\u043d\u0430\u0442\u0430 \u0431\u0430\u0437\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430. \u041f\u0440\u0438 \u043d\u0435\u043f\u044a\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u044a\u0442 \u0441\u0435 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u0441 15 % \u0438\u043b\u0438 30 %."

    const-string v4, "The state of the tissues against the client\'s own baseline. When recovery is incomplete the intensity is reduced automatically by 15 % or 30 %."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 657
    if-eqz v8, :cond_3c0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 658
    :goto_36e
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 659
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

    const-string v8, "\u0434\u043e\u0431\u0440\u0430"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "\u043f\u044a\u043b\u043d\u0430"

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

    .line 657
    :cond_3c0
    const/4 v4, 0x0

    goto :goto_36e

    .line 663
    :cond_3c2
    const-string v7, "zones"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4bc

    .line 664
    const-string v2, "\u0421\u0435\u0433\u043c\u0435\u043d\u0442\u0435\u043d \u0430\u043d\u0430\u043b\u0438\u0437"

    const-string v3, "Segmental analysis"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 665
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430\u0442\u0430 \u0432\u044a\u0432 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430 (100 %). \u041f\u0443\u043d\u043a\u0442\u0438\u0440\u044a\u0442 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u043f\u0440\u0435\u0434\u0438\u0448\u043d\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435."

    const-string v3, "The muscle of each zone against the norm (100 %). The dashed line is the previous measurement."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 669
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 670
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 671
    if-gez v4, :cond_40e

    .line 672
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 673
    const/4 v5, 0x0

    :goto_3f7
    const/4 v11, 0x5

    if-ge v5, v11, :cond_40e

    .line 674
    aget-wide v12, v8, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_40b

    aget-wide v12, v8, v5

    cmpg-double v11, v12, v2

    if-gez v11, :cond_40b

    .line 675
    aget-wide v2, v8, v5

    move v4, v5

    .line 673
    :cond_40b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f7

    .line 680
    :cond_40e
    if-ltz v4, :cond_4b5

    .line 681
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

    .line 682
    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v11, "Right leg"

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    if-gez v2, :cond_4b9

    const-string v2, " \u00b7 \u043d\u0430\u0439-\u0441\u043b\u0430\u0431\u0430 \u0437\u043e\u043d\u0430"

    const-string v5, " \u00b7 weakest zone"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_463
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    aget-wide v2, v8, v4

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0430"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "\u043d\u0438\u0441\u043a\u0430"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string v8, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v8, v4, v5

    const/4 v5, 0x3

    const-string v8, "\u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-string v8, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430"

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

    .line 688
    goto/16 :goto_72

    .line 683
    :cond_4b9
    const-string v2, ""

    goto :goto_463

    .line 688
    :cond_4bc
    const-string v7, "body"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5af

    .line 689
    const-string v2, "\u0422\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v3, "Build"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438, \u043e\u0446\u0435\u043d\u0435\u043d\u0438 \u043f\u043e\u043e\u0442\u0434\u0435\u043b\u043d\u043e \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430."

    const-string v7, "Muscle mass and fat, each rated for the height."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    const-string v7, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v11, "Muscle mass"

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget-wide v6, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0430"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "\u043d\u0438\u0441\u043a\u0430"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u0430"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430"

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

    .line 696
    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v7, "Fat"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
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

    .line 698
    const-string v4, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v5, "Visceral fat"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
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

    .line 700
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    :cond_5ac
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_565

    .line 702
    :cond_5af
    const-string v7, "reach"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5cb

    .line 703
    const-string v2, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u043c\u043e\u0441\u0442 \u043f\u043e \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v3, "Conductivity per channel"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 704
    const-string v2, "\u041f\u043e\u0434\u043a\u043e\u0436\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u0442 \u0442\u043e\u043a\u0430, \u043a\u043e\u0439\u0442\u043e \u0434\u043e\u0441\u0442\u0438\u0433\u0430 \u0434\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430. \u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u044f\u043b\u043e\u0442\u043e; \u043f\u0440\u0438 \u043e\u0442\u0440\u0438\u0446\u0430\u0442\u0435\u043b\u043d\u0438 \u0435 \u043d\u0443\u0436\u043d\u0430 \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430 \u0441\u0438\u043b\u0430 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430. \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0433\u043e \u043e\u0442\u0447\u0438\u0442\u0430."

    const-string v4, "Subcutaneous fat reduces the current reaching the muscle. Values are relative to the body average; negative ones need a higher channel strength. Auto mode accounts for it."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 709
    :cond_5cb
    const-string v7, "figure"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f8

    .line 710
    const-string v2, "\u041a\u0430\u0440\u0442\u0430 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v3, "Body map"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 711
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5ee

    .line 712
    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430\u0442\u0430 \u0432\u044a\u0432 \u0432\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430: \u0437\u0435\u043b\u0435\u043d\u043e \u2014 \u043f\u043e\u0434\u043e\u0431\u0440\u0435\u043d\u0438\u0435, \u0436\u044a\u043b\u0442\u043e \u2014 \u0432\u043b\u043e\u0448\u0430\u0432\u0430\u043d\u0435, \u0441\u0438\u0432\u043e \u2014 \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430."

    const-string v4, "The change in each zone over the period: green \u2014 better, amber \u2014 worse, grey \u2014 no change."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 716
    :cond_5ee
    const-string v2, "\u0412\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430. \u0414\u043e\u043a\u043e\u0441\u043d\u0435\u0442\u0435 \u0437\u043e\u043d\u0430 \u0437\u0430 \u043f\u043e\u0434\u0440\u043e\u0431\u043d\u043e\u0441\u0442\u0438."

    const-string v4, "Each zone against the norm. Tap a zone for details."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 718
    :cond_5f8
    const-string v7, "trend"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6db

    .line 719
    const-string v2, "\u0414\u0438\u043d\u0430\u043c\u0438\u043a\u0430"

    const-string v3, "Trend"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    const-string v2, "\u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u044f \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430."

    const-string v7, "How the chosen value changed over the period."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    if-nez v7, :cond_633

    .line 723
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

    .line 724
    :cond_633
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_687

    .line 725
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430"

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

    .line 728
    :cond_687
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_72

    .line 729
    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const-string v11, "\u043f\u043e-\u043d\u0438\u0441\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const-string v11, "\u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "\u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430"

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

    const-string v12, "matches"

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

    .line 733
    :cond_6db
    const-string v4, "history"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f7

    .line 734
    const-string v2, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f"

    const-string v3, "Measurements"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    const-string v2, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f. \u0421 \u2715 \u0441\u0435 \u0438\u0437\u0442\u0440\u0438\u0432\u0430 \u0433\u0440\u0435\u0448\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435."

    const-string v4, "The latest measurements. \u2715 deletes a wrong one."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 737
    :cond_6f7
    const-string v4, "table"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_713

    .line 738
    const-string v2, "\u0421\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435"

    const-string v3, "Comparison"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    const-string v2, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b\u0438\u0442\u0435 \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u0438 \u0432 \u043a\u0440\u0430\u044f \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430. \u0417\u0435\u043b\u0435\u043d\u043e \u2014 \u043f\u043e\u0434\u043e\u0431\u0440\u0435\u043d\u0438\u0435, \u0436\u044a\u043b\u0442\u043e \u2014 \u0432\u043b\u043e\u0448\u0430\u0432\u0430\u043d\u0435."

    const-string v4, "The values at the start and at the end of the period. Green \u2014 better, amber \u2014 worse."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 741
    :cond_713
    const-string v4, "change"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 742
    const-string v2, "\u041f\u0440\u043e\u043c\u044f\u043d\u0430 \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434\u0430"

    const-string v3, "Change over the period"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 743
    const-string v2, "\u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u0432 \u043a\u0438\u043b\u043e\u0433\u0440\u0430\u043c\u0438. \u0422\u0435\u0433\u043b\u043e\u0442\u043e \u043c\u043e\u0436\u0435 \u0434\u0430 \u043e\u0441\u0442\u0430\u043d\u0435 \u0441\u044a\u0449\u043e\u0442\u043e, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u044a\u0441\u0442\u0430\u0432\u044a\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e \u0441\u0435 \u043f\u043e\u0434\u043e\u0431\u0440\u044f\u0432\u0430."

    const-string v4, "The change in muscle mass and fat in kilograms. The weight may stay the same while the body composition improves."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 766
    :cond_72f
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_153

    .line 769
    :cond_733
    const-string v3, ""

    goto/16 :goto_177

    .line 772
    :cond_737
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_756

    .line 773
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

    .line 775
    :cond_756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_777

    const/high16 v2, 0x43f00000    # 480.0f

    :goto_762
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v3, v0, v6, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->pop(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 776
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V
    :try_end_775
    .catch Ljava/lang/Throwable; {:try_start_1fd .. :try_end_775} :catch_1f6

    goto/16 :goto_1fc

    .line 775
    :cond_777
    const/high16 v2, 0x43d20000    # 420.0f

    goto :goto_762

    :cond_77a
    move-object v2, v4

    goto/16 :goto_185
.end method

.method changeHead([D[D)V
    .registers 15

    .prologue
    .line 1196
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 1197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    :goto_b
    return-void

    .line 1200
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

    .line 1201
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1202
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

    const-string v6, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v7, " kg muscle mass"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1203
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v8, v10

    if-gez v0, :cond_b2

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1202
    :goto_61
    invoke-static {v1, v6, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 1204
    const-string v0, "   "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1205
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

    .line 1206
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v6, v8

    if-gez v0, :cond_c1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1205
    :goto_a5
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 1207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1202
    :cond_af
    const-string v0, "\u2212"

    goto :goto_32

    .line 1203
    :cond_b2
    const-wide/16 v8, 0x0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_61

    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_61

    .line 1205
    :cond_be
    const-string v0, "\u2212"

    goto :goto_76

    .line 1206
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

    .line 547
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0x280

    invoke-static {v1, p1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, p5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 549
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;

    invoke-direct {v3, v1, p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 552
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;

    invoke-direct {v3, v1, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v0, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 554
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 555
    iget-object v4, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    if-nez p6, :cond_53

    const/4 v0, 0x1

    :cond_53
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 557
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 558
    return-void
.end method

.method cur()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 1074
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
    .line 539
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    move-wide v4, p1

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->delete(Landroid/content/Context;JJZII)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 540
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 541
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->schedule(Landroid/content/Context;JZII)V

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 543
    return-void
.end method

.method deltaTable(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 15

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1231
    if-nez p2, :cond_8

    .line 1243
    :goto_7
    return-void

    .line 1234
    :cond_8
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v9

    .line 1235
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v10

    .line 1236
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

    .line 1237
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

    .line 1238
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v1, "Muscle mass"

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

    .line 1239
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

    .line 1240
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

    .line 1241
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v1, "Body age"

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

    .line 1242
    const-string v0, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Visceral fat"

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

    .line 1356
    if-eqz p1, :cond_f

    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1357
    :cond_f
    const-string v0, "\u0414\u043e\u043a\u043e\u0441\u043d\u0435\u0442\u0435 \u0437\u043e\u043d\u0430 \u0437\u0430 \u043f\u043e\u0434\u0440\u043e\u0431\u043d\u043e\u0441\u0442\u0438"

    const-string v1, "Tap a zone for details"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    :goto_17
    return-object v0

    .line 1359
    :cond_18
    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1360
    const-string v1, "segFat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1361
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    if-gez v2, :cond_bf

    .line 1362
    invoke-static {v0, v10, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v2

    .line 1363
    invoke-static {v0, v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v4

    .line 1364
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1365
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v0, ""

    .line 1369
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0438\u043c\u0435\u0442\u0440\u0438\u044f \u041b/\u0414 \u00b7 \u0440\u044a\u0446\u0435 "

    const-string v7, "L/R symmetry \u00b7 arms "

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

    .line 1370
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

    .line 1371
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

    .line 1366
    :cond_8e
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_a2

    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u043f\u0440\u0435\u0434\u0438\u043c\u043d\u043e \u0434\u043e\u043b\u043d\u0430 \u0447\u0430\u0441\u0442"

    const-string v1, "  \u00b7  fat: mostly lower body"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 1367
    :cond_a2
    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    const-wide v6, 0x3fd47ae147ae147bL    # 0.32

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_b6

    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u043f\u0440\u0435\u0434\u0438\u043c\u043d\u043e \u043a\u043e\u0440\u0435\u043c"

    const-string v1, "  \u00b7  fat: mostly abdomen"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 1368
    :cond_b6
    const-string v0, "  \u00b7  \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e"

    const-string v1, "  \u00b7  fat: even"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 1373
    :cond_bf
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v2

    .line 1374
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v3

    .line 1375
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

    .line 1376
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v6, "Right leg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1377
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1378
    const-string v4, "  \u00b7  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 "

    const-string v7, "muscle mass "

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

    .line 1379
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

    .line 1380
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

    .line 1381
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

    const-string v2, " %)"

    .line 1382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    iget-object v1, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1c2

    .line 1384
    const-string v1, "  \u00b7  "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 "

    const-string v4, "recovery "

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

    .line 1386
    :cond_1c2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v1

    .line 1387
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-ne v2, v10, :cond_224

    if-eqz v1, :cond_224

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v2, v3, :cond_224

    const-string v2, "segMus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_224

    .line 1388
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

    .line 1389
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

    if-ltz v0, :cond_22a

    const-string v0, "+"

    :goto_209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v2, " kg muscle mass"

    .line 1390
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 1389
    :cond_22a
    const-string v0, "\u2212"

    goto :goto_209
.end method

.method dot(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "i"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 576
    const-string v1, "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f"

    const-string v2, "Information"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 577
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    return-object v0
.end method

.method dotLp()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    .line 582
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 583
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 584
    return-object v0
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 175
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

    .line 1302
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 1303
    new-array v12, v13, [I

    .line 1304
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_5f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5f

    .line 1305
    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v0

    .line 1306
    :cond_1b
    new-array v4, v10, [I

    .line 1307
    if-eqz v0, :cond_45

    .line 1308
    const-wide/16 v2, 0x0

    .line 1309
    array-length v5, v0

    move v1, v9

    :goto_23
    if-ge v1, v5, :cond_2f

    aget-wide v6, v0, v1

    .line 1310
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->factor(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1312
    :cond_2f
    array-length v1, v0

    int-to-double v6, v1

    div-double/2addr v2, v6

    move v1, v9

    .line 1313
    :goto_33
    if-ge v1, v10, :cond_45

    .line 1314
    aget-wide v6, v0, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;->factor(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->reachCol(D)I

    move-result v5

    aput v5, v4, v1

    .line 1313
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1317
    :cond_45
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v0, :cond_5d

    move v0, v8

    :goto_4c
    invoke-virtual {v1, v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setChannels(Z[I)V

    .line 1318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0434\u043e\u0431\u0440\u0430 \u043f\u0440\u043e\u0432\u043e\u0434\u0438\u043c\u043e\u0441\u0442   \u25cf \u043f\u043e-\u043d\u0438\u0441\u043a\u0430   \u25cf \u043d\u0430\u0439-\u043d\u0438\u0441\u043a\u0430"

    const-string v2, "\u25cf good conductivity   \u25cf lower   \u25cf lowest"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    :goto_5c
    return-void

    :cond_5d
    move v0, v9

    .line 1317
    goto :goto_4c

    .line 1322
    :cond_5f
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_b9

    .line 1323
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    invoke-virtual {p0, v2, v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    move v1, v9

    .line 1324
    :goto_6a
    if-ge v1, v13, :cond_86

    .line 1325
    if-eqz v2, :cond_76

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_76
    move v0, v9

    :goto_77
    aput v0, v12, v1

    .line 1324
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    .line 1325
    :cond_7d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    aget-wide v4, v2, v1

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->layerCol(ID)I

    move-result v0

    goto :goto_77

    .line 1327
    :cond_86
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-nez v0, :cond_a3

    .line 1328
    const-string v0, "\u25cf \u043f\u043e\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430   \u25cf \u043d\u043e\u0440\u043c\u0430   \u25cf \u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    const-string v2, "\u25cf below normal   \u25cf normal   \u25cf above"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    :goto_94
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    :goto_97
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v1, :cond_140

    :goto_9d
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v0, v8, v12, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    goto :goto_5c

    .line 1329
    :cond_a3
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    if-ne v0, v8, :cond_b0

    .line 1330
    const-string v0, "\u25cf \u043d\u043e\u0440\u043c\u0430   \u25cf \u043f\u043e\u0432\u0438\u0448\u0435\u043d\u0438   \u25cf \u0432\u0438\u0441\u043e\u043a\u0438"

    const-string v2, "\u25cf normal   \u25cf elevated   \u25cf high"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 1331
    :cond_b0
    const-string v0, "\u25cf \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d   \u25cf \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d   \u25cf \u0441\u0438\u043b\u043d\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d"

    const-string v2, "\u25cf recovered   \u25cf strained   \u25cf heavily strained"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 1334
    :cond_b9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v4

    .line 1335
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v1, :cond_ec

    move v3, v8

    .line 1336
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

    .line 1337
    :goto_d5
    if-eqz v2, :cond_df

    if-eqz v3, :cond_f3

    const-string v0, "segMus"

    :goto_db
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_df
    move v10, v9

    .line 1338
    :goto_e0
    if-ge v10, v13, :cond_126

    .line 1339
    if-eqz v11, :cond_e6

    if-nez v0, :cond_f6

    .line 1340
    :cond_e6
    aput v9, v12, v10

    .line 1338
    :goto_e8
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_e0

    :cond_ec
    move v3, v9

    .line 1335
    goto :goto_c2

    .line 1336
    :cond_ee
    const-string v1, "segFat"

    goto :goto_d0

    :cond_f1
    move-object v11, v0

    goto :goto_d5

    .line 1337
    :cond_f3
    const-string v0, "segFat"

    goto :goto_db

    .line 1343
    :cond_f6
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    sub-double v1, v4, v6

    .line 1344
    if-eqz v10, :cond_118

    move v6, v8

    .line 1345
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

    .line 1344
    goto :goto_103

    .line 1345
    :cond_11a
    const-wide v4, 0x3fb999999999999aL    # 0.1

    goto :goto_10a

    :cond_120
    const-wide v6, 0x3ff3333333333333L    # 1.2

    goto :goto_111

    .line 1347
    :cond_126
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    if-eqz v3, :cond_137

    const-string v0, "\u25cf \u043f\u043e\u0432\u0435\u0447\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438   \u25cf \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430   \u25cf \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "\u25cf more muscle   \u25cf no change   \u25cf less muscle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_97

    .line 1349
    :cond_137
    const-string v0, "\u25cf \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438   \u25cf \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430   \u25cf \u043f\u043e\u0432\u0435\u0447\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "\u25cf less fat   \u25cf no change   \u25cf more fat"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_140
    move v8, v9

    .line 1352
    goto/16 :goto_9d
.end method

.method from()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v0

    .line 1091
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

    .line 1083
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v2, :cond_9

    .line 1084
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 1086
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

.method goalLine(Ljava/lang/String;DZ)Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x2

    const/4 v0, 0x0

    .line 993
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 994
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, p1, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_31

    :cond_30
    move v0, v1

    .line 997
    :cond_31
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz v0, :cond_5c

    const-string v2, "\u0432 \u043d\u043e\u0440\u043c\u0430"

    const-string v5, "on target"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 998
    :goto_3d
    const/high16 v5, 0x41a00000    # 20.0f

    .line 999
    if-eqz v0, :cond_8d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 997
    :goto_43
    invoke-static {v4, v2, v5, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1000
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1001
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1003
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1004
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    return-object v3

    .line 998
    :cond_5c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    cmpl-double v2, p2, v6

    if-lez v2, :cond_8a

    const-string v2, "+"

    :goto_69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u043a\u0433"

    const-string v6, " kg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_8a
    const-string v2, "\u2212"

    goto :goto_69

    .line 999
    :cond_8d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_43
.end method

.method hasFull()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1611
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 1612
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1613
    if-eqz v2, :cond_1c

    const-string v3, "fat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1614
    const/4 v1, 0x1

    .line 1617
    :cond_1b
    return v1

    .line 1611
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 565
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 566
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 567
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 569
    :cond_1a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dot(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dotLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    return-object v1
.end method

.method heightStepper()Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/16 v6, 0x30

    const/4 v8, 0x1

    const/high16 v7, 0x42400000    # 48.0f

    .line 1040
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1041
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1042
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

    .line 1044
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 1045
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    .line 1046
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1047
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 1048
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1052
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v2, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1053
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 1054
    return-object v0
.end method

.method historyList()V
    .registers 15

    .prologue
    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v3, 0x0

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    .line 518
    :cond_9
    return-void

    .line 497
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 498
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "d.MM \u00b7 HH:mm"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 500
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

    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 502
    if-nez v5, :cond_35

    .line 500
    :goto_2f
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_22

    .line 505
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 506
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 507
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

    .line 509
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

    .line 510
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

    .line 509
    invoke-static {v7, v0, v12, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, "\u2715"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x28

    invoke-static {v0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 512
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;

    const-string v8, "t"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;J)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 514
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 515
    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->history:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2f

    .line 510
    :cond_102
    const-string v0, ""

    goto :goto_ae
.end method

.method indexOf(Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    .line 1292
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1293
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-ne v1, p1, :cond_12

    .line 1297
    :goto_11
    return v0

    .line 1292
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1297
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    goto :goto_11
.end method

.method keep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;I)V
    .registers 14

    .prologue
    .line 1764
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_177

    const/4 v0, 0x1

    move v10, v0

    .line 1765
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    move-object v3, p1

    move v7, p2

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIIJ)Lorg/json/JSONObject;

    move-result-object v0

    .line 1766
    if-eqz v0, :cond_26

    .line 1767
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    .line 1769
    :cond_26
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastKg:D

    .line 1770
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 1772
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->schedule(Landroid/content/Context;JZII)V

    .line 1773
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 1774
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-eqz v0, :cond_5b

    .line 1775
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 1776
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1778
    :cond_5b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1780
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v4

    .line 1781
    if-eqz v4, :cond_17b

    const-string v0, "fat"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x1

    .line 1782
    :goto_7c
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_17e

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    .line 1783
    :goto_91
    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1782
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1784
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_184

    const-string v1, "\u2713 \u0417\u0430\u043f\u0438\u0441\u0430\u043d\u043e \u00b7 "

    const-string v6, "\u2713 Saved \u00b7 "

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a9
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1785
    const/4 v1, 0x1

    if-le p2, v1, :cond_18e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u043e\u0442\u0447\u0438\u0442\u0430\u043d\u0438\u044f"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " readings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_ea
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1784
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_192

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_fb
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1787
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-eqz v1, :cond_1ab

    .line 1788
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    if-eqz v0, :cond_196

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 "

    const-string v5, "Fat "

    .line 1788
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "fat"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " %  \u00b7  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 "

    const-string v5, "Muscle mass "

    .line 1789
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "muscle"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043a\u0433"

    const-string v4, " kg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1788
    :goto_155
    invoke-virtual {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->finished(Ljava/lang/String;Z)V

    .line 1791
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hasFull()Z

    move-result v1

    if-eqz v1, :cond_199

    const/4 v1, 0x0

    :goto_163
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1792
    if-eqz v0, :cond_19c

    if-eqz v10, :cond_19c

    .line 1793
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1802
    :cond_176
    :goto_176
    return-void

    .line 1764
    :cond_177
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_a

    .line 1781
    :cond_17b
    const/4 v0, 0x0

    goto/16 :goto_7c

    .line 1783
    :cond_17e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto/16 :goto_91

    .line 1784
    :cond_184
    const-string v1, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e \u00b7 "

    const-string v6, "Weight only \u00b7 "

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a9

    .line 1785
    :cond_18e
    const-string v1, ""

    goto/16 :goto_ea

    .line 1786
    :cond_192
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_fb

    .line 1790
    :cond_196
    const-string v1, ""

    goto :goto_155

    .line 1791
    :cond_199
    const/16 v1, 0x8

    goto :goto_163

    .line 1794
    :cond_19c
    if-eqz v0, :cond_176

    .line 1795
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_176

    .line 1799
    :cond_1ab
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1800
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto :goto_176
.end method

.method lay()V
    .registers 11

    .prologue
    const/16 v4, 0xe

    const/4 v9, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 350
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->leftCard:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 354
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detach(Landroid/view/View;)V

    goto :goto_1e

    .line 356
    :cond_2e
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->narrow:Z

    if-eqz v0, :cond_53

    move v1, v2

    .line 357
    :goto_33
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_aa

    .line 358
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v1, :cond_51

    move v3, v2

    :goto_46
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    :cond_51
    move v3, v4

    .line 358
    goto :goto_46

    :cond_53
    move v1, v2

    .line 362
    :goto_54
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_aa

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 364
    const/16 v0, 0x30

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 365
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 366
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_96

    .line 368
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 370
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 371
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    :cond_96
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v1, :cond_a8

    move v0, v2

    :goto_9d
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_54

    :cond_a8
    move v0, v4

    .line 373
    goto :goto_9d

    .line 375
    :cond_aa
    return-void
.end method

.method layerControl()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1028
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1029
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_6d

    .line 1030
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

    const-string v1, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v2, "Recovery"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "\u0422\u043e\u043a"

    const-string v3, "Current"

    .line 1031
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1033
    :goto_38
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1034
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

    .line 1036
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    const-string v1, "figure"

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dot(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dotLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    return-void

    .line 1032
    :cond_6d
    new-array v0, v4, [Ljava/lang/String;

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

    goto :goto_38

    .line 1034
    :cond_84
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    goto :goto_49
.end method

.method layerValues(Lorg/json/JSONObject;IZ)[D
    .registers 15

    .prologue
    const/4 v10, 0x5

    const/4 v0, 0x0

    .line 1277
    if-nez p1, :cond_6

    .line 1278
    const/4 v0, 0x0

    .line 1288
    :goto_5
    return-object v0

    .line 1280
    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_31

    .line 1281
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v4

    .line 1282
    new-array v2, v10, [D

    move v3, v0

    .line 1283
    :goto_16
    if-ge v3, v10, :cond_2f

    .line 1284
    if-eqz p3, :cond_2a

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v6, v5, v3

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    :goto_24
    aput-wide v0, v2, v3

    .line 1283
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 1284
    :cond_2a
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v0, v0, v3

    goto :goto_24

    :cond_2f
    move-object v0, v2

    .line 1286
    goto :goto_5

    .line 1288
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
    const/16 v1, 0x8

    const/4 v10, -0x2

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 250
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 251
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, "\u2014"

    const/high16 v6, 0x42580000    # 54.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    .line 252
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 253
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, " \u043a\u0433"

    const-string v6, " kg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41900000    # 18.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 255
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 256
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    .line 258
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v2, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;

    const-string v5, "weight"

    invoke-direct {v4, p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 263
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 264
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    .line 265
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 268
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

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 273
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightStepper()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    .line 275
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightFromProfile:Z

    if-eqz v0, :cond_159

    move v0, v1

    :goto_f5
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerHolder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x43be0000    # 380.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->legend:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-object v3

    :cond_159
    move v0, v2

    .line 275
    goto :goto_f5
.end method

.method measureAgain()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    .line 1626
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1627
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->reset()V

    .line 1628
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1629
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->startLink()V

    .line 1630
    return-void
.end method

.method names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 591
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

.method newStanding()V
    .registers 3

    .prologue
    .line 1701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    .line 1702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    .line 1703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1704
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->reset()V

    .line 1705
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1706
    return-void
.end method

.method public onLive(DZ)V
    .registers 7

    .prologue
    .line 1710
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_17

    .line 1711
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-eqz v0, :cond_d

    .line 1712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1714
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-eqz v0, :cond_16

    .line 1715
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->liveWeight(DZ)V

    .line 1728
    :cond_16
    :goto_16
    return-void

    .line 1719
    :cond_17
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_26

    .line 1720
    :cond_23
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->newStanding()V

    .line 1722
    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1723
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-eqz v0, :cond_16

    .line 1724
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1725
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_45

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_3c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1726
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->liveWeight(DZ)V

    goto :goto_16

    .line 1725
    :cond_45
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_3c
.end method

.method public onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 6

    .prologue
    .line 1732
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-nez v0, :cond_41

    .line 1733
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastSweep:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastSweep:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastSweep:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 1734
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->same(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1757
    :cond_21
    :goto_21
    return-void

    .line 1737
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_2d

    .line 1738
    :cond_2a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->newStanding()V

    .line 1740
    :cond_2d
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;-><init>(ZII)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    .line 1741
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1744
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->add(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 1747
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastSweep:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 1748
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-eqz v0, :cond_56

    .line 1749
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v0, p1, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sweep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V

    .line 1751
    :cond_56
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->merged()Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 1752
    if-eqz v0, :cond_21

    .line 1755
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->keep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;I)V

    goto :goto_21
.end method

.method public onSegment(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1549
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 1550
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->figure()V

    .line 1551
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 1552
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v1, :cond_1f

    .line 1553
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_17

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarLayer()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 1558
    :goto_1e
    return-void

    .line 1555
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v1, v3, :cond_2b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v0

    .line 1556
    :cond_2b
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v1, :cond_34

    const/4 v1, 0x0

    .line 1555
    :goto_30
    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    goto :goto_1e

    .line 1556
    :cond_34
    const/4 v1, 0x1

    goto :goto_30
.end method

.method public onState(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1655
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-eqz v0, :cond_a

    .line 1656
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->linkState(I)V

    .line 1658
    :cond_a
    packed-switch p1, :pswitch_data_7c

    .line 1688
    :goto_d
    :pswitch_d
    return-void

    .line 1660
    :pswitch_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-eqz v0, :cond_14

    .line 1661
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1663
    :cond_14
    const-string v0, "\u0413\u043e\u0442\u043e\u0432 \u0437\u0430 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v1, "Ready to measure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_d

    .line 1666
    :pswitch_22
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_36

    .line 1668
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->newStanding()V

    .line 1669
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->linkState(I)V

    .line 1671
    :cond_36
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_d

    .line 1674
    :pswitch_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-eqz v0, :cond_52

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    .line 1675
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->off:Z

    .line 1677
    :cond_52
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Measuring\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_d

    .line 1680
    :pswitch_60
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Measuring\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_d

    .line 1683
    :pswitch_6e
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0435\u0442\u0435 Bluetooth"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->say(Ljava/lang/String;I)V

    goto :goto_d

    .line 1658
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_22
        :pswitch_44
        :pswitch_60
        :pswitch_d
        :pswitch_6e
    .end packed-switch
.end method

.method prev()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 1078
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
    .line 1016
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0421\u0435\u0433\u043c\u0435\u043d\u0442\u0435\u043d \u0430\u043d\u0430\u043b\u0438\u0437"

    const-string v3, "Segmental analysis"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "zones"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->header(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1018
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    .line 1019
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 1020
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    .line 1022
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1023
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    return-object v0
.end method

.method radarLayer()I
    .registers 3

    .prologue
    .line 1218
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

    .line 1222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatMid(Z)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->fatMid:D

    .line 1223
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {p0, p1, p3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_24

    const/4 v0, 0x0

    :goto_15
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    invoke-virtual {v1, p3, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->set(I[D[DI)V

    .line 1225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detail:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->detailText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    return-void

    .line 1223
    :cond_24
    invoke-virtual {p0, p2, p3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerValues(Lorg/json/JSONObject;IZ)[D

    move-result-object v0

    goto :goto_15
.end method

.method readiness(Lorg/json/JSONObject;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    .line 1441
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1442
    if-eqz p1, :cond_14

    const-string v0, "z20"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1443
    :cond_14
    if-nez p1, :cond_22

    const-string v0, "\u041d\u044f\u043c\u0430 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435."

    const-string v1, "No measurement yet."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->ready(ZLjava/lang/String;)V

    .line 1471
    :cond_21
    :goto_21
    return-void

    .line 1444
    :cond_22
    const-string v0, "\u041d\u0443\u0436\u0435\u043d \u0435 \u043a\u043e\u043d\u0442\u0430\u043a\u0442 \u0441 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430."

    const-string v1, "Hand contact with the handle is needed."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1447
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->indexOf(Lorg/json/JSONObject;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v1

    .line 1448
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1449
    const-string v0, "\u0418\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430 \u0441\u0435 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435."

    const-string v1, "Available from the second measurement."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->ready(ZLjava/lang/String;)V

    goto :goto_21

    .line 1452
    :cond_47
    const-string v0, ""

    invoke-virtual {p0, v8, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->ready(ZLjava/lang/String;)V

    .line 1453
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_13a

    const-string v0, "\u041f\u044a\u043b\u043d\u0430 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u043d\u043e\u0441\u0442"

    const-string v2, "Full intensity"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    :goto_5a
    const-string v2, "\u0441\u043f\u0440\u044f\u043c\u043e \u043b\u0438\u0447\u043d\u0430\u0442\u0430 \u0431\u0430\u0437\u0430"

    const-string v3, "against the personal baseline"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1456
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    iget v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    invoke-virtual {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v0, :cond_ee

    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    iget v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v2, v0, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_ee

    .line 1458
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u0422\u043e\u0440\u0441"

    const-string v3, "Trunk"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    const-string v3, "Left arm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const/4 v2, 0x2

    const-string v3, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    const-string v4, "Right arm"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    const-string v4, "Left leg"

    .line 1459
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v4, "Right leg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1460
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

    .line 1461
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v4

    .line 1460
    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1463
    :cond_ee
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_21

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_21

    .line 1464
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0425\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f "

    const-string v4, "Hydration "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    neg-double v4, v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->signedPct(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1466
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1468
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1469
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_21

    .line 1454
    :cond_13a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 \u2212"

    const-string v3, "Intensity \u2212"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    const-string v2, " %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5a
.end method

.method ready(ZLjava/lang/String;)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1475
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gauge:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    if-eqz p1, :cond_20

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->setVisibility(I)V

    .line 1476
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reasons:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_22

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readyNote:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readyNote:Landroid/widget/TextView;

    if-eqz p1, :cond_24

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1479
    return-void

    :cond_20
    move v0, v2

    .line 1475
    goto :goto_8

    :cond_22
    move v0, v2

    .line 1476
    goto :goto_10

    :cond_24
    move v2, v1

    .line 1478
    goto :goto_1c
.end method

.method render(Z)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1095
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v2

    .line 1096
    if-eqz v2, :cond_2b

    const-string v0, "fat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v1, v7

    .line 1097
    :goto_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1098
    if-eqz v1, :cond_2d

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_27
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17

    :cond_2b
    move v1, v6

    .line 1096
    goto :goto_11

    .line 1098
    :cond_2d
    const v3, 0x3ee66666    # 0.45f

    goto :goto_27

    .line 1100
    :cond_31
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layerControl()V

    .line 1101
    if-eqz v2, :cond_60

    if-nez p1, :cond_60

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1102
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    const-string v1, "w"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1105
    :cond_60
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->weightDelta:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_92

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    :goto_6a
    const-string v4, "w"

    const-string v0, " \u043a\u0433"

    const-string v5, " kg"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1106
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip(Lorg/json/JSONObject;)V

    .line 1107
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->figure()V

    .line 1108
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_97

    .line 1109
    invoke-virtual {p0, v2, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->renderDay(Lorg/json/JSONObject;Z)V

    .line 1113
    :goto_85
    if-eqz p1, :cond_91

    .line 1114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->body:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->animateIn()V

    .line 1115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;->animateIn()V

    .line 1117
    :cond_91
    return-void

    .line 1105
    :cond_92
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_6a

    .line 1111
    :cond_97
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->renderTrack(Lorg/json/JSONObject;)V

    goto :goto_85
.end method

.method renderDay(Lorg/json/JSONObject;Z)V
    .registers 14

    .prologue
    .line 1120
    if-nez p1, :cond_a3

    .line 1121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v1, "\u041d\u044f\u043c\u0430 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v2, "No measurement yet"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :goto_f
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->readiness(Lorg/json/JSONObject;)V

    .line 1130
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

    .line 1131
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->prev()Lorg/json/JSONObject;

    move-result-object v3

    .line 1132
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

    .line 1133
    const/4 v0, 0x4

    new-array v10, v0, [Z

    fill-array-data v10, :array_1d0

    .line 1134
    const/4 v0, 0x0

    move v8, v0

    :goto_4f
    const/4 v0, 0x4

    if-ge v8, v0, :cond_180

    .line 1135
    const/4 v0, 0x3

    if-ne v8, v0, :cond_136

    .line 1136
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1137
    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 1138
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string v0, "\u2014"

    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0440\u0435\u0430\u043b\u043d\u0430 "

    const-string v6, "actual "

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

    .line 1140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileDelta:[Landroid/widget/TextView;

    aget-object v1, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_118

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_9c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1134
    :goto_9f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4f

    .line 1123
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

    .line 1124
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

    .line 1123
    :cond_c7
    const/4 v0, 0x0

    goto :goto_b6

    .line 1126
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    if-eqz v0, :cond_ff

    const-string v1, "\u0414\u043d\u0435\u0441 \u00b7 "

    const-string v4, "Today \u00b7 "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1126
    if-eqz v0, :cond_108

    const-string v0, "HH:mm"

    :goto_e2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    const-string v4, "t"

    .line 1127
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

    .line 1125
    :cond_ff
    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e \u00b7 "

    const-string v4, "Last \u00b7 "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d8

    .line 1126
    :cond_108
    const-string v0, "d.MM.yyyy"

    goto :goto_e2

    .line 1130
    :cond_10b
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 1138
    :cond_10e
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6b

    .line 1140
    :cond_118
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v0, v0, -0x2

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_125

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_9c

    .line 1141
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

    .line 1143
    :cond_136
    if-eqz p1, :cond_165

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1144
    :goto_142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->tileValue:[Landroid/widget/TextView;

    aget-object v2, v2, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_168

    const-string v0, "\u2014"

    :goto_14e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
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

    .line 1143
    :cond_165
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_142

    .line 1144
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

    .line 1148
    :cond_180
    const-string v0, "ffmi"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v6

    const-string v0, "fmi"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->series(Ljava/lang/String;)[D

    move-result-object v8

    .line 1149
    array-length v9, v6

    .line 1150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->meter:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-lez v9, :cond_1c2

    add-int/lit8 v2, v9, -0x1

    aget-wide v2, v6, v2

    :goto_197
    if-lez v9, :cond_1c5

    add-int/lit8 v4, v9, -0x1

    aget-wide v4, v8, v4

    .line 1151
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

    .line 1150
    :goto_1ab
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->set(ZDDDD)V

    .line 1152
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

    .line 1153
    return-void

    .line 1150
    :cond_1c2
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_197

    :cond_1c5
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_19d

    .line 1151
    :cond_1c8
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1a4

    :cond_1cb
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1ab

    .line 1152
    :cond_1ce
    const/4 v0, 0x0

    goto :goto_1be

    .line 1133
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
    .line 1156
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->from()Lorg/json/JSONObject;

    move-result-object v1

    .line 1157
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->fromIndex()I

    move-result v3

    .line 1158
    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ne v3, v0, :cond_bb

    .line 1159
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->when:Landroid/widget/TextView;

    const-string v2, "\u0421\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435\u0442\u043e \u0435 \u0434\u043e\u0441\u0442\u044a\u043f\u043d\u043e \u0441\u043b\u0435\u0434 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v4, "Comparison is available after the second measurement"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    :goto_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1168
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

    .line 1169
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x4

    const-string v2, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1170
    const/4 v0, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_21e

    .line 1171
    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_65
    if-ge v2, v6, :cond_16f

    aget v7, v5, v2

    .line 1172
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

    .line 1173
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1174
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1175
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1176
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;

    invoke-direct {v8, p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1178
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1179
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metricHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_65

    .line 1161
    :cond_bb
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d.MM"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1162
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

    .line 1163
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

    const-string v7, " \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f"

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

    .line 1164
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1172
    :cond_16c
    const/4 v0, 0x0

    goto/16 :goto_72

    .line 1181
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

    const-string v4, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u00b7 \u043a\u0433"

    const-string v5, "Muscle mass \u00b7 kg"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, "\u0412\u043e\u0434\u0430 \u00b7 %"

    const-string v5, "Water \u00b7 %"

    .line 1182
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v5, "Body age"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "\u0422\u0435\u0433\u043b\u043e \u00b7 \u043a\u0433"

    const-string v5, "Weight \u00b7 kg"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1183
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trendTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1185
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

    .line 1186
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v3, v0, :cond_217

    move-object v0, v1

    :goto_1df
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    if-nez v2, :cond_219

    const/4 v2, 0x0

    :goto_1e4
    invoke-virtual {p0, p1, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->radarZones(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 1187
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    if-ge v3, v0, :cond_21b

    const/4 v0, 0x1

    :goto_1ec
    invoke-virtual {p0, v1, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->deltaTable(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 1188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->historyList()V

    .line 1189
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

    .line 1190
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->change:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->times()[J

    move-result-object v3

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sliceT([JI)[J

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->set([D[D[J)V

    .line 1191
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->changeHead([D[D)V

    .line 1192
    return-void

    .line 1186
    :cond_217
    const/4 v0, 0x0

    goto :goto_1df

    :cond_219
    const/4 v2, 0x1

    goto :goto_1e4

    .line 1187
    :cond_21b
    const/4 v0, 0x0

    goto :goto_1ec

    .line 1170
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
    .line 1806
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_5

    .line 1811
    :goto_4
    return-void

    .line 1809
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1810
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    goto :goto_4
.end method

.method row(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 19

    .prologue
    .line 1247
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

    .line 1249
    return-void

    .line 1247
    :cond_1b
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_8
.end method

.method rowValues(Ljava/lang/String;DDLjava/lang/String;ZZZ)V
    .registers 22

    .prologue
    .line 1253
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1254
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1255
    const/4 v2, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1256
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

    .line 1258
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

    .line 1259
    const v4, 0x800005

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1260
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_e8

    const-string v2, "  \u2192  "

    :goto_5e
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {v4, v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1262
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1263
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

    .line 1264
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1265
    sub-double v4, p4, p2

    .line 1266
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz p8, :cond_a4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_ec

    :cond_a4
    const-string v2, ""

    .line 1267
    :goto_a6
    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x1

    .line 1266
    invoke-static {v6, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 1268
    const v2, 0x800005

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1269
    if-eqz p8, :cond_d1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_d1

    .line 1270
    if-eqz p9, :cond_121

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_ce
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1272
    :cond_d1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1274
    return-void

    .line 1258
    :cond_e4
    const-string v2, ""

    goto/16 :goto_3c

    .line 1261
    :cond_e8
    const-string v2, ""

    goto/16 :goto_5e

    .line 1266
    :cond_ec
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v8, v10

    if-gez v2, :cond_fc

    const-string v2, "="

    goto :goto_a6

    .line 1267
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

    .line 1270
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
    .registers 7

    .prologue
    .line 1692
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    if-nez v0, :cond_d

    .line 1697
    :goto_c
    return-void

    .line 1695
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c
.end method

.method series(Ljava/lang/String;)[D
    .registers 10

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1482
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1483
    new-array v6, v5, [D

    move v4, v0

    .line 1484
    :goto_e
    if-ge v4, v5, :cond_61

    .line 1485
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1486
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

    .line 1487
    :cond_30
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 1488
    const-string v1, "page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    :goto_42
    aput-wide v0, v6, v4

    .line 1484
    :goto_44
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    .line 1488
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

    .line 1490
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

    .line 1493
    :cond_61
    return-object v6
.end method

.method setDelta(Landroid/widget/TextView;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    .prologue
    .line 1522
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-eq p2, p3, :cond_12

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1523
    :cond_12
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    :goto_17
    return-void

    .line 1526
    :cond_18
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 1527
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3a

    .line 1528
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1532
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

    .line 1533
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_77

    const/4 v0, 0x1

    :goto_69
    if-ne v0, p6, :cond_79

    const/4 v0, 0x1

    .line 1534
    :goto_6c
    if-eqz p7, :cond_7b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1532
    :cond_74
    const-string v0, "\u25bc "

    goto :goto_47

    .line 1533
    :cond_77
    const/4 v0, 0x0

    goto :goto_69

    :cond_79
    const/4 v0, 0x0

    goto :goto_6c

    .line 1534
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
    .line 1572
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-nez v0, :cond_b

    .line 1573
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->layer:I

    .line 1577
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1578
    return-void

    .line 1575
    :cond_b
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->trackLayer:I

    goto :goto_6
.end method

.method setMetric(I)V
    .registers 3

    .prologue
    .line 1587
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->metric:I

    .line 1588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1589
    return-void
.end method

.method setMode(I)V
    .registers 3

    .prologue
    .line 1561
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    if-ne p1, v0, :cond_5

    .line 1569
    :goto_4
    return-void

    .line 1564
    :cond_5
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->mode:I

    .line 1565
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->selected:I

    .line 1566
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1568
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto :goto_4
.end method

.method setRange(I)V
    .registers 3

    .prologue
    .line 1581
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->range:I

    .line 1582
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1584
    return-void
.end method

.method show()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x42600000    # 56.0f

    const/4 v5, 0x2

    const/16 v4, 0x10

    const/4 v8, 0x0

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->begin(Landroid/app/Activity;)V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_245

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_245

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_2d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_259

    :goto_35
    const-string v2, "\u0422\u0435\u043b\u0435\u0441\u0435\u043d \u0430\u043d\u0430\u043b\u0438\u0437"

    const-string v3, "Body composition"

    .line 186
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    .line 185
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->modeHolder:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->rangeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0410\u043d\u0430\u043b\u0438\u0437"

    const-string v2, "Analysis"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    const-string v2, "Summary"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barTop:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barRange:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barChips:Landroid/widget/LinearLayout;

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barChips:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->barChips:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->leftCard:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    .line 212
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v0, :cond_263

    move v0, v7

    :goto_11f
    invoke-direct {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
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

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u043e\u0432\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v2, "Measure again"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    .line 228
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->schedule(Landroid/content/Context;JZII)V

    .line 229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 230
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->arrange()V

    .line 231
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 232
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 237
    :try_start_20d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->orientationBefore:I

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_21c
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_21c} :catch_266

    .line 241
    :goto_21c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_23a

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 244
    :cond_23a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 245
    return-void

    .line 184
    :cond_245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_255

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :cond_255
    const-string v0, ""

    goto/16 :goto_2d

    .line 185
    :cond_259
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v2, "Scale"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35

    :cond_263
    move v0, v8

    .line 212
    goto/16 :goto_11f

    .line 239
    :catch_266
    move-exception v0

    goto :goto_21c
.end method

.method showDetail()V
    .registers 8

    .prologue
    .line 1010
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

    .line 1012
    :goto_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->open(Landroid/app/Activity;Lorg/json/JSONArray;IZIILjava/lang/String;)V

    .line 1013
    return-void

    .line 1011
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
    .line 1815
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1816
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 1845
    :goto_14
    return-void

    .line 1820
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1821
    const-string v1, "\u0423\u0441\u043b\u043e\u0432\u0438\u044f \u0437\u0430 \u0442\u043e\u0447\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\n\u2022 \u0431\u043e\u0441\u0438 \u043a\u0440\u0430\u043a\u0430, \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430\n\u2022 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430, \u043f\u043e \u0435\u0434\u043d\u043e \u0438 \u0441\u044a\u0449\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0434\u0435\u043d\u044f\n\u2022 \u043f\u043e\u043d\u0435 2 \u0447\u0430\u0441\u0430 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\n\n\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\n\u0421\u0440\u0430\u0432\u043d\u044f\u0432\u0430 \u0442\u044a\u043a\u0430\u043d\u0438\u0442\u0435 \u0441 \u043b\u0438\u0447\u043d\u0430\u0442\u0430 \u0431\u0430\u0437\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430. \u041f\u0440\u0438 \u043d\u0435\u043f\u044a\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u044a\u0442 \u0441\u0435 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e."

    const-string v2, "For an accurate measurement\n\u2022 bare feet, both hands on the handle\n\u2022 before training, at the same time of day\n\u2022 at least 2 hours after a meal\n\nTraining readiness\nCompares the tissues with the client\'s own baseline. When recovery is incomplete the intensity is reduced automatically."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1835
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1836
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

    .line 1837
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, -0xbd5a0b

    const v4, 0x3e23d70a    # 0.16f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    .line 1838
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const v4, -0xbd5a0b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 1837
    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1839
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;-><init>(Landroid/app/Activity;)V

    .line 1840
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->withButton(Landroid/app/Activity;Landroid/widget/TextView;Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v4, 0x440c0000    # 560.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v3, p1, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->pop(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    .line 1841
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->infoPop:Landroid/widget/PopupWindow;

    iput-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;->pop:Landroid/widget/PopupWindow;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_14

    .line 1842
    :catch_94
    move-exception v0

    .line 1843
    const-string v1, "ScaleScreen.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method

.method showStage(Z)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1593
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->staging:Z

    .line 1594
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->view()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_4a

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4c

    move v0, v2

    :goto_16
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1596
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->bars()V

    .line 1597
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hasFull()Z

    move-result v3

    if-eqz v3, :cond_27

    move v2, v1

    :cond_27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1598
    if-eqz p1, :cond_4e

    .line 1599
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1600
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->invalidate()V

    .line 1601
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->invalidate()V

    .line 1602
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->view()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1608
    :goto_49
    return-void

    :cond_4a
    move v0, v2

    .line 1594
    goto :goto_e

    :cond_4c
    move v0, v1

    .line 1595
    goto :goto_16

    .line 1604
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1606
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->grid:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto :goto_49
.end method

.method showSummary()V
    .registers 27

    .prologue
    .line 791
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cur()Lorg/json/JSONObject;

    move-result-object v12

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v4, :cond_24e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_24e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 794
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

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_268

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 795
    if-eqz v12, :cond_26c

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "d.MM.yyyy \u00b7 HH:mm"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    const-string v8, "t"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 796
    :goto_77
    const/16 v7, 0x500

    .line 794
    invoke-static {v5, v6, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v5

    .line 797
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 799
    const/16 v4, 0x30

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 800
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v12, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v13

    .line 801
    const-string v4, "\u0431"

    const-string v7, "e"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\u0431"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 802
    iget-object v7, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-eqz v4, :cond_270

    const-string v4, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_bc
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " \u00b7 "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " \u0433."

    const-string v9, " y"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " \u00b7 "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " \u0441\u043c"

    const-string v9, " cm"

    .line 803
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v12, :cond_27a

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "w"

    .line 803
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " \u043a\u0433"

    const-string v10, " kg"

    .line 804
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_11f
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v12, :cond_27e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u00b7  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "d.MM.yyyy \u00b7 HH:mm"

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v10, Ljava/util/Date;

    const-string v15, "t"

    .line 805
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_152
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v4, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, ""

    const/high16 v10, 0x41900000    # 18.0f

    sget v15, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v4, v7, v10, v15, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 812
    const/high16 v7, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v10, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    const/high16 v15, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v15

    const/high16 v16, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v7, v10, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 813
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 814
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 815
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip(Lorg/json/JSONObject;)V

    .line 816
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    .line 817
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_282

    const-string v4, "\u2014"

    move-object v7, v4

    :goto_1dc
    const/high16 v15, 0x42080000    # 34.0f

    .line 820
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_291

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 821
    :goto_1ea
    const/16 v16, 0x1

    .line 819
    move/from16 v0, v16

    invoke-static {v10, v7, v15, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 822
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 823
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v7, " \u0433. \u0442\u044f\u043b\u043e"

    const-string v10, " y body"

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/high16 v10, 0x41600000    # 14.0f

    sget v15, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v7, v10, v15, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v12, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zones(Lorg/json/JSONObject;ZI)[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    move-result-object v9

    .line 827
    new-instance v15, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v15, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    .line 828
    const/4 v4, 0x5

    new-array v10, v4, [I

    .line 829
    const/4 v4, 0x0

    move v7, v4

    :goto_23a
    const/4 v4, 0x5

    if-ge v7, v4, :cond_2c8

    .line 830
    aget-object v4, v9, v7

    iget v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_2bf

    const/4 v4, 0x0

    :goto_248
    aput v4, v10, v7

    .line 829
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_23a

    .line 793
    :cond_24e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v4, :cond_263

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto/16 :goto_27

    :cond_263
    const-string v4, ""

    move-object v11, v4

    goto/16 :goto_27

    .line 794
    :cond_268
    const-string v4, ""

    goto/16 :goto_55

    .line 796
    :cond_26c
    const-string v4, ""

    goto/16 :goto_77

    .line 802
    :cond_270
    const-string v4, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_bc

    .line 804
    :cond_27a
    const-string v4, ""

    goto/16 :goto_11f

    .line 805
    :cond_27e
    const-string v4, ""

    goto/16 :goto_152

    .line 819
    :cond_282
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto/16 :goto_1dc

    .line 820
    :cond_291
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v4, v4, -0x3

    int-to-double v0, v4

    move-wide/from16 v18, v0

    cmpg-double v4, v16, v18

    if-gtz v4, :cond_2a6

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_1ea

    .line 821
    :cond_2a6
    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    add-int/lit8 v4, v4, 0x3

    int-to-double v0, v4

    move-wide/from16 v18, v0

    cmpl-double v4, v16, v18

    if-ltz v4, :cond_2bb

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_1ea

    :cond_2bb
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_1ea

    .line 830
    :cond_2bf
    aget-object v4, v9, v7

    iget v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v4

    goto :goto_248

    .line 832
    :cond_2c8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    if-nez v4, :cond_618

    const/4 v4, 0x1

    :goto_2cf
    const/4 v7, -0x1

    invoke-virtual {v15, v4, v10, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 834
    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 836
    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_9a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7, v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->zoneNotes([Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;[IZ)Landroid/widget/LinearLayout;

    move-result-object v7

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    .line 837
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 836
    invoke-virtual {v4, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/high16 v16, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v16

    const/high16 v17, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v15, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_9ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7, v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->zoneNotes([Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;[IZ)Landroid/widget/LinearLayout;

    move-result-object v7

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/high16 v16, 0x43b40000    # 360.0f

    .line 840
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v16

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 839
    invoke-virtual {v4, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v9, 0x8

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v16

    .line 846
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_N:[Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->FAT_E:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 847
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u043e"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "\u043d\u0438\u0441\u043a\u043e"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "\u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v9, v4, v8

    const/4 v8, 0x4

    const-string v9, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "very low"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "low"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "normal"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "high"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "very high"

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 849
    if-eqz v12, :cond_61b

    const-string v4, "fat"

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v12, v4, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 850
    :goto_3b0
    const/4 v4, 0x4

    new-array v0, v4, [[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const-string v20, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v21, "Body fat"

    .line 851
    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v4

    const/16 v20, 0x1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_61f

    const-string v4, "\u2014"

    :goto_3d1
    aput-object v4, v19, v20

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    move/from16 v21, v0

    .line 852
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v8, v9, v0, v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v7

    aput-object v7, v19, v4

    aput-object v19, v17, v18

    const/4 v7, 0x1

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v9, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v18, "Muscle mass"

    .line 853
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x1

    if-eqz v12, :cond_63c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "muscle"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " \u043a\u0433"

    const-string v19, " kg"

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_429
    aput-object v4, v8, v9

    const/4 v4, 0x2

    iget-wide v0, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0430"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "\u043d\u0438\u0441\u043a\u0430"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u0430"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "very low"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "low"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "normal"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-string v23, "athletic"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string v23, "very high"

    aput-object v23, v21, v22

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->names([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v9, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v8, v17, v7

    const/4 v7, 0x2

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const-string v8, "\u0412\u043e\u0434\u0430"

    const-string v9, "Water"

    .line 857
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v18, v4

    const/4 v8, 0x1

    if-eqz v12, :cond_640

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "water"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " %"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4c7
    aput-object v4, v18, v8

    const/4 v4, 0x2

    .line 858
    if-eqz v12, :cond_644

    const-string v8, "water"

    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v20

    invoke-virtual {v12, v8, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    :goto_4d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v8

    aput-object v8, v18, v4

    aput-object v18, v17, v7

    const/4 v7, 0x3

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const-string v8, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v9, "Visceral fat"

    .line 860
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v18, v4

    const/4 v8, 0x1

    if-eqz v12, :cond_648

    const-string v4, "visc"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_504
    aput-object v4, v18, v8

    const/4 v4, 0x2

    .line 861
    if-eqz v12, :cond_64c

    const-string v8, "visc"

    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v20

    invoke-virtual {v12, v8, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    :goto_513
    invoke-static {v8, v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v8

    aput-object v8, v18, v4

    aput-object v18, v17, v7

    .line 863
    const/4 v4, 0x0

    move v10, v4

    :goto_51d
    const/4 v4, 0x2

    if-ge v10, v4, :cond_67c

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v18

    .line 865
    const/16 v4, 0x30

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 866
    const/4 v4, 0x0

    move v9, v4

    :goto_531
    const/4 v4, 0x2

    if-ge v9, v4, :cond_662

    .line 867
    mul-int/lit8 v4, v10, 0x2

    add-int/2addr v4, v9

    aget-object v19, v17, v4

    .line 868
    const/4 v4, 0x2

    aget-object v4, v19, v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 869
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v20

    .line 870
    if-ltz v20, :cond_650

    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v7, v7, v20

    move v8, v7

    .line 871
    :goto_549
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v22, v0

    const/4 v7, 0x0

    aget-object v7, v19, v7

    check-cast v7, Ljava/lang/String;

    const/high16 v23, 0x41600000    # 14.0f

    sget v24, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v7, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v22, v0

    const/4 v7, 0x1

    aget-object v7, v19, v7

    check-cast v7, Ljava/lang/String;

    const/high16 v19, 0x42080000    # 34.0f

    sget v23, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v7, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 874
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v19, v0

    if-ltz v20, :cond_655

    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    aget-object v7, v7, v20

    :goto_5ba
    const/high16 v20, 0x41800000    # 16.0f

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v7, v1, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;-><init>(Landroid/content/Context;)V

    .line 878
    invoke-virtual {v7, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 879
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v19, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v4, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-direct {v7, v4, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 882
    if-nez v9, :cond_659

    const/4 v4, 0x0

    :goto_60a
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 883
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto/16 :goto_531

    .line 832
    :cond_618
    const/4 v4, 0x0

    goto/16 :goto_2cf

    .line 849
    :cond_61b
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_3b0

    .line 851
    :cond_61f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, " %"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3d1

    .line 853
    :cond_63c
    const-string v4, "\u2014"

    goto/16 :goto_429

    .line 857
    :cond_640
    const-string v4, "\u2014"

    goto/16 :goto_4c7

    .line 858
    :cond_644
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_4d6

    .line 860
    :cond_648
    const-string v4, "\u2014"

    goto/16 :goto_504

    .line 861
    :cond_64c
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_513

    .line 870
    :cond_650
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    move v8, v7

    goto/16 :goto_549

    .line 876
    :cond_655
    const-string v7, ""

    goto/16 :goto_5ba

    .line 882
    :cond_659
    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v4

    goto :goto_60a

    .line 885
    :cond_662
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-nez v10, :cond_679

    const/4 v4, 0x0

    :goto_669
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_51d

    .line 885
    :cond_679
    const/16 v4, 0xc

    goto :goto_669

    .line 888
    :cond_67c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 889
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 890
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 891
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v9, "\u0422\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v10, "Build"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 892
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;-><init>(Landroid/content/Context;)V

    .line 893
    iget v9, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    iget v10, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    invoke-virtual {v8, v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;->set(II)V

    .line 894
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v13, 0x43160000    # 150.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v13

    invoke-direct {v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {v12, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    move-result-object v7

    .line 897
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 898
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v10, "\u041a\u044a\u043c \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v13, "Towards a healthy weight"

    invoke-static {v10, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 899
    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_857

    .line 900
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v9, "\u2014"

    const/high16 v10, 0x41a00000    # 20.0f

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v7, v9, v10, v13, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 906
    :goto_71b
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 907
    const/high16 v9, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 908
    invoke-virtual {v4, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 912
    const/4 v4, 0x4

    new-array v10, v4, [I

    fill-array-data v10, :array_9b6

    .line 913
    const/4 v4, 0x0

    .line 914
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v8, v13, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->advice(Lorg/json/JSONArray;IZII)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v7, v4

    :goto_774
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_788

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    .line 915
    add-int/lit8 v8, v7, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v7, v0, :cond_8a8

    .line 934
    :cond_788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v7, 0xc

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 936
    iget-object v4, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_9c2

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_9ca

    const/16 v9, 0xfa0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->follow(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/LinearLayout;[F[II)V

    .line 940
    if-eqz v12, :cond_80c

    const-string v4, "fat"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80c

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    const-string v7, "Image"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 942
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v5, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0423\u0435\u0431 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430"

    const-string v7, "Web page"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 945
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V

    .line 948
    :cond_80c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0418\u0437\u0442\u043e\u0447\u043d\u0438\u0446\u0438"

    const-string v7, "Sources"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 949
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v6, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v7, "Close"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 952
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;

    invoke-direct {v6, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    const v6, 0x3f99999a    # 1.2f

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V

    .line 954
    iget-object v4, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 958
    :goto_856
    return-void

    .line 902
    :cond_857
    const-string v9, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v10, "Fat"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->fat:D

    move-wide/from16 v18, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->goalLine(Ljava/lang/String;DZ)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 903
    const-string v9, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v10, "Muscle mass"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->muscle:D

    move-wide/from16 v18, v0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->goalLine(Ljava/lang/String;DZ)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 904
    const-string v9, "\u0422\u0435\u0433\u043b\u043e"

    const-string v10, "Weight"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->total:D

    move-wide/from16 v18, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->goalLine(Ljava/lang/String;DZ)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_89f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_89f} :catch_8a1

    goto/16 :goto_71b

    .line 955
    :catch_8a1
    move-exception v4

    .line 956
    const-string v5, "ScaleScreen.summary"

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_856

    .line 918
    :cond_8a8
    :try_start_8a8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v17

    .line 919
    const/16 v7, 0x30

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 920
    new-instance v7, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 921
    iget v0, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    move/from16 v18, v0

    aget v18, v10, v18

    const/high16 v19, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v19, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v19

    const/16 v20, -0x1

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 924
    const/high16 v19, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 925
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v18

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    move-object/from16 v19, v0

    if-eqz v14, :cond_999

    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleBg:Ljava/lang/String;

    :goto_920
    const/high16 v20, 0x41880000    # 17.0f

    sget v21, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v7, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    if-eqz v14, :cond_99c

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textBg:Ljava/lang/String;

    :goto_93f
    const/high16 v19, 0x41700000    # 15.0f

    sget v20, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v7, v4, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 929
    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-virtual {v4, v7, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 930
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/16 v19, -0x2

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x1

    if-ne v8, v4, :cond_99f

    const/4 v4, 0x0

    :goto_98d
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v8

    .line 933
    goto/16 :goto_774

    .line 927
    :cond_999
    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleEn:Ljava/lang/String;

    goto :goto_920

    .line 928
    :cond_99c
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textEn:Ljava/lang/String;
    :try_end_99e
    .catch Ljava/lang/Throwable; {:try_start_8a8 .. :try_end_99e} :catch_8a1

    goto :goto_93f

    .line 932
    :cond_99f
    const/16 v4, 0xc

    goto :goto_98d

    .line 836
    :array_9a2
    .array-data 4
        0x2
        0x0
        0x4
    .end array-data

    .line 839
    :array_9ac
    .array-data 4
        0x1
        -0x1
        0x3
    .end array-data

    .line 912
    :array_9b6
    .array-data 4
        -0xdd3aa2
        -0xc74208
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 938
    :array_9c2
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_9ca
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method startLink()V
    .registers 11

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_9

    .line 1634
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 1636
    :cond_9
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

    .line 1637
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->start()V

    .line 1638
    return-void
.end method

.method stepHeight(I)V
    .registers 9

    .prologue
    .line 1058
    const/16 v0, 0x64

    const/16 v1, 0xdc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    .line 1059
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

    .line 1060
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->updateHeight()V

    .line 1061
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1063
    return-void
.end method

.method times()[J
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1497
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1498
    new-array v4, v3, [J

    move v2, v0

    .line 1499
    :goto_c
    if-ge v2, v3, :cond_25

    .line 1500
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1501
    if-eqz v0, :cond_22

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1c
    aput-wide v0, v4, v2

    .line 1499
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 1501
    :cond_22
    const-wide/16 v0, 0x0

    goto :goto_1c

    .line 1503
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

    .line 1397
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    invoke-static {p1, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v3

    .line 1398
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->known()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1399
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1438
    :goto_1f
    return-void

    .line 1404
    :cond_20
    iget v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    packed-switch v4, :pswitch_data_b8

    .line 1430
    const-string v0, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Very low fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    const v2, -0xc74208

    move-object v3, v0

    .line 1434
    :goto_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1436
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

    .line 1437
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->typeChip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f

    .line 1406
    :pswitch_64
    const-string v1, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e \u0442\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v2, "Athletic build"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 1408
    goto :goto_31

    .line 1410
    :pswitch_6f
    const-string v1, "\u0411\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u0430\u043d\u043e \u0442\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    const-string v2, "Balanced build"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 1412
    goto :goto_31

    .line 1414
    :pswitch_7a
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0435\u0441\u0442\u043e, \u0441 \u043f\u043e\u0432\u0438\u0448\u0435\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v1, "Muscular, elevated fat"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1416
    goto :goto_31

    .line 1418
    :pswitch_84
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-lt v0, v5, :cond_97

    const-string v0, "\u0417\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v4, "Obese"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    :goto_90
    iget v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-lt v3, v5, :cond_a0

    :goto_94
    move v2, v1

    move-object v3, v0

    .line 1420
    goto :goto_31

    .line 1418
    :cond_97
    const-string v0, "\u041f\u043e\u0432\u0438\u0448\u0435\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v4, "Elevated fat"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_a0
    move v1, v2

    .line 1419
    goto :goto_94

    .line 1422
    :pswitch_a2
    const-string v0, "\u041f\u043e\u0432\u0438\u0448\u0435\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438, \u043d\u0438\u0441\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v2, "Elevated fat, low muscle mass"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    .line 1424
    goto :goto_31

    .line 1426
    :pswitch_ad
    const-string v0, "\u0421\u043b\u0430\u0431\u043e \u0442\u0435\u043b\u043e\u0441\u043b\u043e\u0436\u0435\u043d\u0438\u0435, \u043d\u0438\u0441\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v1, "Slim, low muscle mass"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1428
    goto/16 :goto_31

    .line 1404
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
    .line 1066
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 1067
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

    .line 1069
    :cond_24
    return-void
.end method

.method zoneNotes([Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;[IZ)Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    .line 962
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 963
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 964
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u0422\u043e\u0440\u0441"

    const-string v2, "Trunk"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    const-string v2, "Left arm"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    const-string v2, "Right arm"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    const-string v2, "Left leg"

    .line 965
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    const-string v2, "Right leg"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 966
    const/4 v0, 0x0

    :goto_45
    array-length v1, p2

    if-ge v0, v1, :cond_16f

    .line 967
    if-lez v0, :cond_5c

    .line 968
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    :cond_5c
    aget v2, p2, v0

    .line 971
    if-gez v2, :cond_79

    .line 972
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/high16 v6, 0x42700000    # 60.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 975
    :cond_79
    aget-object v5, p1, v2

    .line 976
    iget v1, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_126

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 977
    :goto_82
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 978
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 979
    const/16 v7, 0x1a

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/16 v9, 0x5a

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->dp(F)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    aget-object v2, v4, v2

    const/high16 v8, 0x41600000    # 14.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x1

    invoke-static {v7, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-wide v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_12e

    const-string v2, "\u2014"

    :goto_df
    const/high16 v8, 0x41d00000    # 26.0f

    const/4 v9, 0x1

    invoke-static {v7, v2, v8, v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 982
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_148

    const-string v1, ""

    :goto_fa
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 983
    if-eqz p3, :cond_168

    iget v1, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusBg(I)Ljava/lang/String;

    move-result-object v1

    :goto_106
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x41600000    # 14.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x0

    .line 982
    invoke-static {v2, v1, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 985
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_76

    .line 976
    :cond_126
    iget v1, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v1

    goto/16 :goto_82

    .line 981
    :cond_12e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " %"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_df

    .line 982
    :cond_148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->one(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u043a\u0433 \u00b7 "

    const-string v9, " kg \u00b7 "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_fa

    .line 983
    :cond_168
    iget v1, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusEn(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_106

    .line 988
    :cond_16f
    return-object v3
.end method
