.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "View_"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field again:Landroid/widget/TextView;

.field age:I

.field heightCm:I

.field heightFromProfile:Z

.field heightRow:Landroid/widget/LinearLayout;

.field heightValue:Landroid/widget/TextView;

.field infoPop:Landroid/widget/PopupWindow;

.field lastKg:D

.field link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field male:Z

.field results:Landroid/widget/LinearLayout;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field saved:Landroid/widget/TextView;

.field status:Landroid/widget/TextView;

.field final u:Lcom/isaigu/gymapp/bean/TrainUser;

.field final userId:J

.field weight:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->male:Z

    .line 57
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->age:I

    .line 73
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    .line 74
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 75
    iget-wide v4, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    .line 76
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_42

    .line 78
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_26

    .line 79
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v4, :cond_6c

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->male:Z

    .line 81
    :cond_26
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_32

    .line 82
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->age:I

    .line 84
    :cond_32
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    .line 85
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_42

    .line 86
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->lastKg:D

    .line 89
    :cond_42
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    if-lez v0, :cond_6e

    :goto_46
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightFromProfile:Z

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    if-gtz v0, :cond_6b

    .line 91
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    .line 93
    :cond_6b
    return-void

    :cond_6c
    move v0, v2

    .line 79
    goto :goto_24

    :cond_6e
    move v1, v2

    .line 89
    goto :goto_46
.end method

.method static delta(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 365
    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 373
    :cond_f
    :goto_f
    return-object v0

    .line 368
    :cond_10
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 369
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v4, v6

    if-ltz v1, :cond_f

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_61

    const-string v0, "+"

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_64

    const-string v0, "\u2022"

    :goto_58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 372
    :cond_61
    const-string v0, "\u2212"

    goto :goto_33

    .line 373
    :cond_64
    const-string v0, "\u25e6"

    goto :goto_58
.end method

.method static kg1(D)Ljava/lang/String;
    .registers 4

    .prologue
    .line 381
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->one(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static one(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 377
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

.method static pct(D)Ljava/lang/String;
    .registers 4

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method heightStepper()Landroid/widget/LinearLayout;
    .registers 13

    .prologue
    const/16 v6, 0x30

    const/4 v11, 0x1

    const/16 v10, 0x11

    const/high16 v9, 0x42400000    # 48.0f

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightValue:Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightValue:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 168
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 169
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v5, "\u0420\u044a\u0441\u0442 (\u043b\u0438\u043f\u0441\u0432\u0430 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430)"

    const-string v6, "Height (not in the profile)"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 171
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 174
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightValue:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v8, 0x42dc0000    # 110.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 181
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    invoke-static {v2, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 182
    return-object v0
.end method

.method public onLive(DZ)V
    .registers 7

    .prologue
    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->kg1(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_13

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    return-void

    .line 241
    :cond_13
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_f
.end method

.method public onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->kg1(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->age:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    invoke-static {v2, v4, v5, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;)Lorg/json/JSONObject;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_41

    .line 252
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    const-string v4, "\u2713 \u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e"

    const-string v5, "\u2713 Saved"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :cond_41
    if-nez v0, :cond_50

    .line 256
    const-string v0, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e \u2014 \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435"

    const-string v3, "Weight only \u2014 hold the handle with both hands"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->say(Ljava/lang/String;I)V

    .line 259
    :cond_50
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->lastKg:D

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->showResult(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 263
    return-void
.end method

.method public onState(I)V
    .registers 4

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_4a

    .line 231
    :goto_3
    return-void

    .line 213
    :pswitch_4
    const-string v0, "\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v1, "Step on the scale barefoot"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 216
    :pswitch_12
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 220
    :pswitch_20
    const-string v0, "\u0425\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0434\u0440\u044a\u0436"

    const-string v1, "Hold the handle and stay still"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 223
    :pswitch_2e
    const-string v0, "\u2713 \u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043b\u0435\u0437\u0435"

    const-string v1, "\u2713 Done \u2014 step off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 226
    :pswitch_3c
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->say(Ljava/lang/String;I)V

    goto :goto_3

    .line 211
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

.method say(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    return-void
.end method

.method segTile(Ljava/lang/String;DD)Landroid/view/View;
    .registers 16

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 345
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 346
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 347
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 348
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, p1, v7, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 349
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->kg1(D)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 353
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->kg1(D)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v1, v2, v7, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 356
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-object v0
.end method

.method show()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0x11

    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_23c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_29
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v6, "Scale"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_250

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u0411\u043e\u0441, \u043f\u043e \u0442\u044a\u043d\u043a\u0438 \u0434\u0440\u0435\u0445\u0438, \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v5, "Barefoot, light clothes, before the training"

    .line 100
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x438

    .line 99
    invoke-static {v3, v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 106
    const/16 v0, 0x30

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 112
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v5, "\u2014"

    const/high16 v6, 0x42700000    # 60.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->weight:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v5, "\u043a\u0433"

    const-string v6, "kg"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v5, v6, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41800000    # 16.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->status:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->status:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41600000    # 14.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightStepper()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightRow:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightRow:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightFromProfile:Z

    if-eqz v0, :cond_254

    move v0, v1

    :goto_139
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    if-gtz v0, :cond_148

    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->male:Z

    if-eqz v0, :cond_257

    const/16 v0, 0xb2

    :goto_146
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    .line 132
    :cond_148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->updateHeight()V

    .line 133
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v6, 0x43a00000    # 320.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 138
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->previous(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->showResult(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v3, "\u041c\u0435\u0440\u0438 \u043f\u0430\u043a"

    const-string v4, "Measure again"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->again:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->again:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->again:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v2, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v3, "Done"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v2, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 158
    return-void

    .line 98
    :cond_23c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_24c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    :cond_24c
    const-string v0, ""

    goto/16 :goto_29

    .line 99
    :cond_250
    const-string v0, ""

    goto/16 :goto_55

    :cond_254
    move v0, v2

    .line 128
    goto/16 :goto_139

    .line 130
    :cond_257
    const/16 v0, 0xa5

    goto/16 :goto_146
.end method

.method showInfo(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    .line 421
    :goto_14
    return-void

    .line 395
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    const-string v1, "\u041a\u0430\u043a \u0434\u0430 \u0435 \u0442\u043e\u0447\u043d\u043e \u0438 \u0441\u0440\u0430\u0432\u043d\u0438\u043c\u043e:\n\u2022 \u0431\u043e\u0441\u0438 \u0441\u0442\u044a\u043f\u0430\u043b\u0430, \u0433\u043e\u043b\u0438 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u2014 \u0434\u0440\u0435\u0445\u0438\u0442\u0435 \u043d\u0435 \u043f\u0440\u0435\u0447\u0430\u0442\n\u2022 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043d\u0435 \u0441\u043b\u0435\u0434 \u043d\u0435\u044f (\u043f\u043e\u0442\u0442\u0430 \u0441\u0432\u0430\u043b\u044f \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043d\u0430 \u0445\u0430\u0440\u0442\u0438\u044f)\n\u2022 \u043f\u043e \u0435\u0434\u043d\u043e \u0438 \u0441\u044a\u0449\u043e \u0432\u0440\u0435\u043c\u0435, \u043f\u043e\u043d\u0435 2 \u0447 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\n\n\u0427\u0438\u0441\u043b\u0430\u0442\u0430 \u0441\u0430 \u043f\u043e \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 Fitdays (WLA25) \u043e\u0442 \u0441\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 20 \u0438 100 kHz. \u041d\u0430\u0439-\u0432\u044f\u0440\u043d\u0430 \u0435 \u043f\u0440\u043e\u043c\u044f\u043d\u0430\u0442\u0430 \u043f\u0440\u0438 \u0435\u0434\u0438\u043d \u0438 \u0441\u044a\u0449 \u0447\u043e\u0432\u0435\u043a."

    const-string v2, "For accurate, comparable numbers:\n\u2022 bare feet, bare hands on the handle \u2014 clothes do not matter\n\u2022 before the training, not after it\n\u2022 same time of day, at least 2 h after a meal\n\nComputed with the Fitdays algorithm (WLA25) from the 20 and 100 kHz impedance. The change for one person is the most reliable."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 408
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 409
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, -0xbd5a0b

    const v4, 0x3e23d70a    # 0.16f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    .line 411
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const v4, -0xbd5a0b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 410
    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    .line 414
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 415
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 417
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v2, 0x43bc0000    # 376.0f

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

    .line 418
    :catch_b4
    move-exception v0

    .line 419
    const-string v1, "ScaleScreen.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method

.method showResult(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 16

    .prologue
    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 269
    if-eqz p1, :cond_f

    const-string v0, "fat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 270
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v1, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435 \u0441 \u043a\u0430\u043d\u0442\u0430\u0440\u0430.\n\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441, \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u2014 \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442\u044a\u0442 \u0441\u0435 \u043f\u043e\u044f\u0432\u044f\u0432\u0430 \u0442\u0443\u043a \u0438 \u0441\u0435 \u043f\u0430\u0437\u0438 \u043f\u0440\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v2, "No scale measurement yet.\nStep on barefoot and hold the handle \u2014 the result appears here and stays with the client."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 275
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_3d
    :goto_3d
    return-void

    .line 278
    :cond_3e
    if-eqz p3, :cond_1d6

    const-string v0, "\u0421\u0435\u0433\u0430"

    const-string v1, "Now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_48
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 284
    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Body fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fat"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->pct(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fat"

    const-string v4, " %"

    const/4 v5, 0x0

    .line 285
    invoke-static {p1, p2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->delta(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    .line 285
    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muscle"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->kg1(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043a\u0433"

    const-string v4, " kg"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "muscle"

    const-string v4, " \u043a\u0433"

    const-string v5, " kg"

    .line 287
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, p2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->delta(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    .line 287
    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    const-string v1, "\u0412\u043e\u0434\u0430"

    const-string v2, "Water"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "water"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->pct(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "water"

    const-string v4, " %"

    const/4 v5, 0x1

    .line 289
    invoke-static {p1, p2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->delta(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    .line 289
    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    const-string v1, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438"

    const-string v2, "Visceral"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visc"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "visc"

    const-string v4, ""

    const/4 v5, 0x0

    .line 291
    invoke-static {p1, p2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->delta(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    .line 291
    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    const-string v0, "segFat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 295
    const-string v0, "segMus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 296
    if-eqz v7, :cond_218

    if-eqz v8, :cond_218

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u043e \u0437\u043e\u043d\u0438 \u00b7 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 / \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "By zone \u00b7 muscle / fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    .line 298
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 300
    const/4 v0, 0x5

    new-array v10, v0, [I

    fill-array-data v10, :array_2d4

    .line 302
    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u041b. \u0440\u044a\u043a\u0430"

    const-string v2, "L arm"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "\u0414. \u0440\u044a\u043a\u0430"

    const-string v2, "R arm"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    const-string v1, "\u0422\u043e\u0440\u0441"

    const-string v2, "Trunk"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x3

    const-string v1, "\u041b. \u043a\u0440\u0430\u043a"

    const-string v2, "L leg"

    .line 303
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x4

    const-string v1, "\u0414. \u043a\u0440\u0430\u043a"

    const-string v2, "R leg"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 304
    const/4 v0, 0x0

    move v6, v0

    :goto_1ae
    array-length v0, v10

    if-ge v6, v0, :cond_20c

    .line 305
    aget-object v1, v11, v6

    aget v0, v10, v6

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    aget v0, v10, v6

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->segTile(Ljava/lang/String;DD)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 306
    if-nez v6, :cond_209

    const/4 v0, 0x0

    :goto_1c9
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 305
    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1ae

    .line 279
    :cond_1d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e \u00b7 "

    const-string v2, "Last \u00b7 "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d.MM.yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    const-string v3, "t"

    .line 280
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_48

    .line 306
    :cond_209
    const/16 v0, 0x8

    goto :goto_1c9

    .line 308
    :cond_20c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :cond_218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u0422\u041c "

    const-string v3, "BMI "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bmi"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->one(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  \u0421\u043a\u0435\u043b\u0435\u0442\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 "

    const-string v3, "  \u00b7  Skeletal muscle "

    .line 312
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "skel"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->pct(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  \u041a\u043e\u0441\u0442\u0438 "

    const-string v3, "  \u00b7  Bone "

    .line 313
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bone"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->kg1(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  \u041e\u0431\u043c\u044f\u043d\u0430 "

    const-string v3, "  \u00b7  BMR "

    .line 314
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bmr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043a\u043a\u0430\u043b"

    const-string v3, " kcal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  \u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e "

    const-string v3, "  \u00b7  Body age "

    .line 315
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    .line 311
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    if-eqz p3, :cond_3d

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->results:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_3d

    .line 300
    :array_2d4
    .array-data 4
        0x1
        0x2
        0x0
        0x3
        0x4
    .end array-data
.end method

.method startLink()V
    .registers 11

    .prologue
    const/16 v1, 0x8

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_b

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 201
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->saved:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->again:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->lastKg:D

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;-><init>(Landroid/content/Context;JZIIDLcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->start()V

    .line 205
    return-void
.end method

.method stepHeight(I)V
    .registers 6

    .prologue
    .line 186
    const/16 v0, 0x64

    const/16 v1, 0xdc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->updateHeight()V

    .line 189
    return-void
.end method

.method tile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v7, 0x41500000    # 13.0f

    const/16 v6, 0x11

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 324
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 325
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 326
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, p1, v7, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/high16 v4, 0x41d00000    # 26.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, p2, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 332
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    if-eqz p3, :cond_71

    .line 334
    const-string v0, "+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "\u2022"

    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v0, v4, :cond_72

    move v0, v1

    .line 335
    :goto_50
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 336
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    if-eqz v0, :cond_74

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_60
    invoke-static {v4, v2, v7, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 338
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->a:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    :cond_71
    return-object v3

    :cond_72
    move v0, v2

    .line 334
    goto :goto_50

    .line 336
    :cond_74
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_60
.end method

.method updateHeight()V
    .registers 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->heightCm:I

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

    .line 195
    :cond_24
    return-void
.end method
