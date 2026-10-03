.class final Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;
.super Ljava/lang/Object;
.source "ScaleAnalysis.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Info;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;
    }
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final age:I

.field final at:I

.field final bg:Z

.field comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

.field fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

.field fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

.field fBar2Title:Landroid/widget/TextView;

.field fBarTitle:Landroid/widget/TextView;

.field fDelta:Landroid/widget/TextView;

.field fGroup:Landroid/widget/TextView;

.field fStatus:Landroid/widget/TextView;

.field fSub:Landroid/widget/TextView;

.field fTitle:Landroid/widget/TextView;

.field fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

.field fTrendTitle:Landroid/widget/TextView;

.field fUnit:Landroid/widget/TextView;

.field fValue:Landroid/widget/TextView;

.field fWhat:Landroid/widget/TextView;

.field fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

.field figTitle:Landroid/widget/TextView;

.field focus:Landroid/widget/LinearLayout;

.field focused:I

.field final heightCm:I

.field final hist:Lorg/json/JSONArray;

.field final m:Lorg/json/JSONObject;

.field final male:Z

.field final ms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

.field pop:Landroid/widget/PopupWindow;

.field final prev:Lorg/json/JSONObject;

.field sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field zone:I

.field final zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/json/JSONArray;IZIILjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    .line 62
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focused:I

    .line 63
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    .line 74
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->hist:Lorg/json/JSONArray;

    .line 76
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->at:I

    .line 77
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    .line 78
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    .line 79
    iput p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    .line 80
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->name:Ljava/lang/String;

    .line 81
    const-string v0, "\u0431"

    const-string v2, "e"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0431"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    .line 82
    if-ltz p3, :cond_4f

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_34
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    .line 84
    add-int/lit8 v0, p3, -0x1

    move v2, v0

    :goto_39
    if-ltz v2, :cond_51

    if-nez v1, :cond_51

    .line 85
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_66

    const-string v3, "fat"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 84
    :goto_4b
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_39

    :cond_4f
    move-object v0, v1

    .line 82
    goto :goto_34

    .line 90
    :cond_51
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->prev:Lorg/json/JSONObject;

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    invoke-static {v0, p4, p5, p6, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->metrics(Lorg/json/JSONObject;ZIIZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    invoke-static {v0, p4, p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zones(Lorg/json/JSONObject;ZI)[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    .line 93
    return-void

    :cond_66
    move-object v0, v1

    goto :goto_4b
.end method

.method static change(Landroid/text/SpannableStringBuilder;DILjava/lang/String;)V
    .registers 12

    .prologue
    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_35

    const-string v0, "\u00b10"

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_2f

    if-nez p3, :cond_5a

    :cond_2f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 511
    :goto_31
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 512
    return-void

    .line 509
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, p1, v4

    if-lez v0, :cond_57

    const-string v0, "+"

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_57
    const-string v0, "\u2212"

    goto :goto_42

    .line 510
    :cond_5a
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_6a

    const/4 v0, 0x1

    move v1, v0

    :goto_62
    if-lez p3, :cond_6d

    const/4 v0, 0x1

    :goto_65
    if-ne v1, v0, :cond_6f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_31

    :cond_6a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_62

    :cond_6d
    const/4 v0, 0x0

    goto :goto_65

    :cond_6f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_31
.end method

.method static one(D)Ljava/lang/String;
    .registers 6

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 70
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static open(Landroid/app/Activity;Lorg/json/JSONArray;IZIILjava/lang/String;)V
    .registers 15

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;-><init>(Landroid/app/Activity;Lorg/json/JSONArray;IZIILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->show()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 101
    :goto_f
    return-void

    .line 98
    :catch_10
    move-exception v0

    .line 99
    const-string v1, "ScaleAnalysis.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method static part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 516
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 517
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 519
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method delta(Landroid/widget/TextView;Ljava/lang/String;IZ)V
    .registers 11

    .prologue
    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->prev:Lorg/json/JSONObject;

    if-nez v0, :cond_a

    .line 290
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :goto_9
    return-void

    .line 293
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->prev:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v2, p2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D

    move-result-wide v2

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 296
    :cond_2e
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 299
    :cond_34
    sub-double v2, v0, v2

    .line 300
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-gez v0, :cond_59

    .line 301
    if-eqz p4, :cond_56

    const-string v0, "= \u0431\u0435\u0437 \u043f\u0440\u043e\u043c\u044f\u043d\u0430"

    const-string v1, "= no change"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 301
    :cond_56
    const-string v0, "="

    goto :goto_4d

    .line 305
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_85

    const-string v0, "\u25b2"

    :goto_66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    if-nez p3, :cond_88

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 305
    :cond_85
    const-string v0, "\u25bc"

    goto :goto_66

    .line 306
    :cond_88
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_98

    const/4 v0, 0x1

    move v1, v0

    :goto_90
    if-lez p3, :cond_9b

    const/4 v0, 0x1

    :goto_93
    if-ne v1, v0, :cond_9d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_81

    :cond_98
    const/4 v0, 0x0

    move v1, v0

    goto :goto_90

    :cond_9b
    const/4 v0, 0x0

    goto :goto_93

    :cond_9d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_81
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method focusMetric(I)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 372
    if-ltz p1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 409
    :cond_f
    :goto_f
    return-void

    .line 375
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    .line 376
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focused:I

    .line 377
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    move v3, v4

    .line 378
    :goto_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_41

    .line 379
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 380
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-ne v3, p1, :cond_3f

    move v5, v6

    :goto_38
    invoke-virtual {p0, v1, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->mark(Landroid/widget/LinearLayout;Z)V

    .line 378
    :cond_3b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1d

    :cond_3f
    move v5, v4

    .line 380
    goto :goto_38

    .line 383
    :cond_41
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "fat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    move v1, v4

    :goto_4e
    invoke-virtual {v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->select(I)V

    .line 386
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "w"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->selected:Z

    .line 387
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->invalidate()V

    .line 388
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    if-nez v1, :cond_120

    :goto_66
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->paintFigure(Z)V

    .line 389
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_123

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupBg(I)Ljava/lang/String;

    move-result-object v1

    :goto_75
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_12b

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->bg:Ljava/lang/String;

    :goto_86
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->status(I)V

    .line 394
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_12f

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 395
    :goto_a4
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_133

    move v1, v4

    :goto_b2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-eqz v1, :cond_136

    .line 399
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 404
    :goto_ca
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 406
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_13c

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    :goto_dc
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->trend(Ljava/lang/String;IILjava/lang/String;I)V

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_f

    .line 383
    :cond_f6
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "water"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    move v1, v6

    .line 384
    goto/16 :goto_4e

    :cond_103
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "prot"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    const/4 v1, 0x2

    goto/16 :goto_4e

    .line 385
    :cond_110
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "bone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    const/4 v1, 0x3

    goto/16 :goto_4e

    :cond_11d
    move v1, v2

    goto/16 :goto_4e

    :cond_120
    move v6, v4

    .line 388
    goto/16 :goto_66

    .line 389
    :cond_123
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupEn(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_75

    .line 390
    :cond_12b
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->en:Ljava/lang/String;

    goto/16 :goto_86

    .line 394
    :cond_12f
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    goto/16 :goto_a4

    :cond_133
    move v1, v7

    .line 396
    goto/16 :goto_b2

    .line 402
    :cond_136
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    goto :goto_ca

    .line 406
    :cond_13c
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    goto :goto_dc
.end method

.method focusZone(I)V
    .registers 14

    .prologue
    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 413
    if-ltz p1, :cond_a

    const/4 v0, 0x4

    if-le p1, v0, :cond_b

    .line 463
    :cond_a
    :goto_a
    return-void

    .line 416
    :cond_b
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    .line 417
    iput v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focused:I

    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 419
    if-eqz v0, :cond_15

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->mark(Landroid/widget/LinearLayout;Z)V

    goto :goto_15

    .line 423
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->select(I)V

    .line 424
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->selected:Z

    .line 425
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->invalidate()V

    .line 426
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u041c\u0410\u0417\u041d\u0418\u041d\u0418"

    const-string v6, "FAT"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 427
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->paintFigure(Z)V

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v6, v0, p1

    .line 429
    if-eq p1, v3, :cond_56

    if-ne p1, v4, :cond_195

    :cond_56
    move v0, v3

    .line 430
    :goto_57
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    const-string v7, "\u0417\u041e\u041d\u0410"

    const-string v8, "ZONE"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v2, :cond_198

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneBg(I)Ljava/lang/String;

    move-result-object v2

    :goto_6e
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_19e

    const-string v2, "\u2014"

    :goto_7d
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    const-string v7, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v8, " kg muscle mass"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->status(I)V

    .line 435
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    const-string v9, "fat "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatKg:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1a6

    const-string v2, "\u2014"

    :goto_af
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    const-string v7, "\u041c\u0423\u0421\u041a\u0423\u041b\u041d\u0410 \u041c\u0410\u0421\u0410 \u00b7 % \u041e\u0422 \u041d\u041e\u0420\u041c\u0410\u0422\u0410"

    const-string v8, "MUSCLE MASS \u00b7 % OF NORM"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 440
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    iget-boolean v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    invoke-static {v8, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneMuscleNorm(DZZ)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    const-string v2, "\u041c\u0410\u0417\u041d\u0418\u041d\u0418 \u00b7 % \u041e\u0422 \u041d\u041e\u0420\u041c\u0410\u0422\u0410"

    const-string v7, "FAT \u00b7 % OF NORM"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    invoke-static {v8, v9, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneFatNorm(DZ)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 445
    const-string v1, ""

    .line 446
    if-eqz p1, :cond_1dd

    .line 447
    if-ne p1, v3, :cond_1c7

    move v0, v4

    .line 450
    :goto_10e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v0, v2, v0

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    .line 451
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1e0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1e0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_1e0

    .line 452
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0420\u0430\u0437\u043b\u0438\u043a\u0430 \u0441 \u0434\u0440\u0443\u0433\u0430\u0442\u0430 \u0441\u0442\u0440\u0430\u043d\u0430: "

    const-string v5, "Difference to the other side: "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_1d4

    const-string v0, " \u2014 \u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430 (\u0434\u043e 6 %)."

    const-string v1, " \u2014 above normal (up to 6 %)."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_16c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_174
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const-string v1, "segMus"

    const-string v0, " \u043a\u0433"

    const-string v2, " kg"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v5

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->trend(Ljava/lang/String;IILjava/lang/String;I)V

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_a

    :cond_195
    move v0, v1

    .line 429
    goto/16 :goto_57

    .line 431
    :cond_198
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneEn(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6e

    .line 432
    :cond_19e
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7d

    .line 435
    :cond_1a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatKg:D

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u043a\u0433"

    const-string v10, " kg"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_af

    .line 447
    :cond_1c7
    if-ne p1, v4, :cond_1cc

    move v0, v3

    .line 448
    goto/16 :goto_10e

    :cond_1cc
    if-ne p1, v5, :cond_1d1

    const/4 v0, 0x4

    goto/16 :goto_10e

    :cond_1d1
    move v0, v5

    .line 449
    goto/16 :goto_10e

    .line 455
    :cond_1d4
    const-string v0, " \u2014 \u0432 \u043d\u043e\u0440\u043c\u0430\u0442\u0430."

    const-string v1, " \u2014 within normal."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16c

    .line 458
    :cond_1dd
    const-string v0, ""

    goto :goto_174

    :cond_1e0
    move-object v0, v1

    goto :goto_174
.end method

.method footer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u0418\u0437\u0442\u043e\u0447\u043d\u0438\u0446\u0438"

    const-string v2, "Sources"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v2, "Close"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x8

    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V

    .line 146
    return-void
.end method

.method indexOf(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 522
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 523
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 527
    :goto_1a
    return v1

    .line 522
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 527
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method info(Landroid/view/View;)V
    .registers 10

    .prologue
    const v7, -0xbd5a0b

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x41600000    # 14.0f

    .line 539
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 540
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 559
    :goto_1a
    return-void

    .line 543
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u041c\u0435\u0442\u043e\u0434\u0438\u043a\u0430\n\u0421\u044a\u0441\u0442\u0430\u0432\u044a\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e \u0441\u0435 \u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430 \u043f\u043e \u0432\u0430\u043b\u0438\u0434\u0438\u0440\u0430\u043d\u0438 \u0443\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u0431\u0438\u043e\u0438\u043c\u043f\u0435\u0434\u0430\u043d\u0441, \u043e\u0442\u0434\u0435\u043b\u043d\u043e \u0437\u0430 \u043c\u044a\u0436\u0435 \u0438 \u0436\u0435\u043d\u0438 (Sun 2003; \u0441\u043a\u0435\u043b\u0435\u0442\u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430 \u2014 Janssen 2000). \u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0435 \u0438\u0437\u0433\u043b\u0430\u0436\u0434\u0430\u0442 \u043c\u0435\u0436\u0434\u0443 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f\u0442\u0430, \u0437\u0430 \u0434\u0430 \u0441\u0435 \u043d\u0430\u043c\u0430\u043b\u0438 \u0432\u043b\u0438\u044f\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0430 \u0438 \u0445\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f\u0442\u0430.\n\n\u0417\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e \u0442\u0435\u0433\u043b\u043e \u0441\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u044f \u043e\u0442 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0430\u0442\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u043f\u0440\u0438 \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u0435\u043d \u043f\u0440\u043e\u0446\u0435\u043d\u0442 \u043c\u0430\u0437\u043d\u0438\u043d\u0438."

    const-string v2, "Method\nBody composition is computed with validated bioimpedance equations, separately for men and women (Sun 2003; skeletal muscle \u2014 Janssen 2000). Values are smoothed between measurements to reduce the effect of contact and hydration.\n\nThe healthy weight is derived from the client\'s own muscle mass at a healthy fat percentage."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v5, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 553
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 554
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 555
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v2, 0x3e23d70a    # 0.16f

    invoke-static {v1, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-static {v1, v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;-><init>(Landroid/app/Activity;)V

    .line 557
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->withButton(Landroid/app/Activity;Landroid/widget/TextView;Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v3, 0x440c0000    # 560.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-static {v2, p1, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->pop(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    .line 558
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;->pop:Landroid/widget/PopupWindow;

    goto :goto_1a
.end method

.method left()Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, "\u0421\u044a\u0441\u0442\u0430\u0432 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v3, "Body composition"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    .line 154
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    const-string v2, "fatKg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    const-string v4, "lean"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 156
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    const-string v4, "water"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v12

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v8

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    const-string v8, "bone"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    const-wide/16 v10, 0x0

    sub-double/2addr v6, v4

    sub-double/2addr v6, v8

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const/4 v10, -0x1

    invoke-virtual/range {v1 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->set(DDDDI)V

    .line 158
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 166
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 167
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v3, "\u041a\u044a\u043c \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v4, "Towards a healthy weight"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    move-result-object v2

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iget-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->fat:D

    iget-wide v8, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->muscle:D

    move-wide v2, v12

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->set(DDDD)V

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-object v0
.end method

.method mark(Landroid/widget/LinearLayout;Z)V
    .registers 7

    .prologue
    const v1, -0xdd3aa2

    .line 283
    if-eqz p2, :cond_28

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_e
    const/high16 v2, 0x41400000    # 12.0f

    .line 284
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    int-to-float v3, v2

    if-eqz p2, :cond_2b

    move v2, v1

    :goto_18
    if-eqz p2, :cond_35

    const/high16 v1, 0x40000000    # 2.0f

    :goto_1c
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    .line 283
    invoke-static {v0, v3, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void

    .line 283
    :cond_28
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto :goto_e

    .line 284
    :cond_2b
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v2, 0x78

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    move v2, v1

    goto :goto_18

    :cond_35
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1c
.end method

.method middle()Landroid/widget/LinearLayout;
    .registers 16

    .prologue
    const/4 v14, -0x1

    const/high16 v13, 0x41400000    # 12.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v5, v3

    .line 195
    :goto_f
    const/4 v0, 0x4

    if-ge v5, v0, :cond_11b

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 197
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-virtual {v7, v0, v1, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_6f

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupBg(I)Ljava/lang/String;

    move-result-object v0

    :goto_37
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41300000    # 11.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x1

    invoke-static {v1, v0, v2, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->narrow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x2

    move v1, v0

    :goto_53
    move v2, v3

    move v4, v3

    .line 203
    :goto_55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_77

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    if-ne v0, v5, :cond_6b

    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 203
    :cond_6b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_55

    .line 198
    :cond_6f
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 201
    :cond_74
    const/4 v0, 0x4

    move v1, v0

    goto :goto_53

    .line 208
    :cond_77
    const/4 v0, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 209
    const/4 v1, 0x0

    move v4, v3

    move v2, v3

    .line 211
    :goto_83
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_e3

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    if-eq v0, v5, :cond_9c

    move v0, v2

    .line 211
    :goto_98
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_83

    .line 215
    :cond_9c
    rem-int v0, v2, v8

    if-nez v0, :cond_be

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 217
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 218
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 219
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v14, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 221
    if-lez v2, :cond_df

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    :goto_b9
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 222
    invoke-virtual {v7, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :cond_be
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    invoke-virtual {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tile(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;I)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 225
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 226
    rem-int v0, v2, v8

    if-lez v0, :cond_e1

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    :goto_d7
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 227
    invoke-virtual {v1, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    add-int/lit8 v0, v2, 0x1

    goto :goto_98

    :cond_df
    move v0, v3

    .line 221
    goto :goto_b9

    :cond_e1
    move v0, v3

    .line 226
    goto :goto_d7

    .line 230
    :cond_e3
    rem-int v0, v2, v8

    :goto_e5
    if-lez v0, :cond_102

    if-ge v0, v8, :cond_102

    .line 231
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 232
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 233
    new-instance v4, Landroid/view/View;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v4, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 235
    :cond_102
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v14, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 236
    if-lez v5, :cond_119

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    :goto_10f
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    invoke-virtual {v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_f

    :cond_119
    move v0, v3

    .line 236
    goto :goto_10f

    .line 239
    :cond_11b
    return-object v6
.end method

.method public onSegment(I)V
    .registers 2

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focusZone(I)V

    .line 533
    return-void
.end method

.method paintFigure(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 181
    new-array v3, v5, [I

    move v2, v1

    .line 182
    :goto_5
    if-ge v2, v5, :cond_25

    .line 183
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatStatus:I

    .line 184
    :goto_f
    const/4 v4, -0x1

    if-ne v0, v4, :cond_20

    move v0, v1

    :goto_13
    aput v0, v3, v2

    .line 182
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 183
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    goto :goto_f

    .line 184
    :cond_20
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v0

    goto :goto_13

    .line 186
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    if-nez v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    .line 187
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_41

    const-string v0, "\u0417\u041e\u041d\u0418 \u00b7 \u041c\u0410\u0417\u041d\u0418\u041d\u0418"

    const-string v2, "ZONES \u00b7 FAT"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void

    .line 188
    :cond_41
    const-string v0, "\u0417\u041e\u041d\u0418 \u00b7 \u041c\u0423\u0421\u041a\u0423\u041b\u0418"

    const-string v2, "ZONES \u00b7 MUSCLE"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method

.method right()Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41980000    # 19.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 318
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 319
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x42380000    # 46.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    .line 320
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 321
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    .line 323
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 324
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v10, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    .line 327
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 331
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v10, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v9, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    .line 337
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v9, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v10, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u0414\u0418\u041d\u0410\u041c\u0418\u041a\u0410"

    const-string v2, "TREND"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrendTitle:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrendTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 350
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 351
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 352
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->setMinimumHeight(I)V

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v10, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method show()V
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0410\u043d\u0430\u043b\u0438\u0437"

    const-string v3, "Analysis"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    if-eqz v0, :cond_f4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "d.MM.yyyy \u00b7 HH:mm"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    const-string v6, "t"

    .line 110
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  \u00b7  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    if-eqz v0, :cond_eb

    const-string v0, "\u043c\u044a\u0436"

    const-string v4, "male"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0433. \u00b7 "

    const-string v4, " y \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0441\u043c"

    const-string v4, " cm"

    .line 112
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_aa
    const/16 v3, 0x500

    .line 109
    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 115
    :cond_c3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, "\u041d\u044f\u043c\u0430 \u043f\u044a\u043b\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u0417\u0430 \u0430\u043d\u0430\u043b\u0438\u0437 \u0435 \u043d\u0443\u0436\u0435\u043d \u043a\u043e\u043d\u0442\u0430\u043a\u0442 \u0441 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430."

    const-string v3, "No full measurement. The analysis needs contact with the handle."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->footer()V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    :goto_e6
    return-void

    .line 109
    :cond_e7
    const-string v0, ""

    goto/16 :goto_37

    .line 111
    :cond_eb
    const-string v0, "\u0436\u0435\u043d\u0430"

    const-string v4, "female"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    .line 112
    :cond_f4
    const-string v0, ""

    goto :goto_aa

    .line 121
    :cond_f7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Info;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v2, :cond_180

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->typeBg(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)Ljava/lang/String;

    move-result-object v0

    :goto_120
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 128
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 129
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->left()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->middle()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->right()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    new-array v3, v9, [F

    fill-array-data v3, :array_186

    new-array v4, v9, [I

    fill-array-data v4, :array_190

    const/16 v5, 0xaa

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->follow(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/LinearLayout;[F[II)V

    .line 134
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->footer()V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->focusOf(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focusMetric(I)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e6

    .line 124
    :cond_180
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->typeEn(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)Ljava/lang/String;

    move-result-object v0

    goto :goto_120

    .line 133
    nop

    :array_186
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3fa66666    # 1.3f
        0x3f8a3d71    # 1.08f
    .end array-data

    :array_190
    .array-data 4
        0x2bc
        0x0
        0x294
    .end array-data
.end method

.method status(I)V
    .registers 7

    .prologue
    .line 360
    if-gez p1, :cond_9

    .line 361
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :goto_8
    return-void

    .line 364
    :cond_9
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v1

    .line 365
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_48

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusBg(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    const/16 v2, 0x22

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x96

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 365
    :cond_48
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method tile(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;I)Landroid/widget/LinearLayout;
    .registers 14

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, 0x0

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 244
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 245
    :goto_28
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_37

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 248
    :cond_37
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_108

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->bg:Ljava/lang/String;

    :goto_44
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v0, v7, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 251
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 253
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 254
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->text()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v7, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 258
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v7, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 262
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    iget v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->delta(Landroid/widget/TextView;Ljava/lang/String;IZ)V

    .line 263
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    if-ltz v0, :cond_113

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_10c

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusBg(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_c0
    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    if-ltz v1, :cond_11d

    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v1

    .line 266
    :goto_ca
    invoke-static {v3, v0, v7, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 270
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-eqz v0, :cond_f9

    .line 272
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;-><init>(Landroid/content/Context;)V

    .line 273
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 274
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :cond_f9
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;

    invoke-direct {v0, p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 278
    invoke-virtual {p0, v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->mark(Landroid/widget/LinearLayout;Z)V

    .line 279
    return-object v2

    .line 249
    :cond_108
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->en:Ljava/lang/String;

    goto/16 :goto_44

    .line 267
    :cond_10c
    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c0

    :cond_113
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_11a

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    goto :goto_c0

    :cond_11a
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    goto :goto_c0

    .line 268
    :cond_11d
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_ca
.end method

.method trend(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 467
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 469
    :goto_c
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->at:I

    if-gt v0, v2, :cond_5e

    .line 470
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 471
    if-eqz v6, :cond_20

    const-string v2, "fat"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 469
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 475
    :cond_23
    if-ltz p2, :cond_53

    .line 476
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 477
    if-eqz v2, :cond_50

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    .line 481
    :goto_35
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_20

    .line 482
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v2, "t"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 477
    :cond_50
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_35

    .line 479
    :cond_53
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v6, p1, v2, v3, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D

    move-result-wide v2

    goto :goto_35

    .line 486
    :cond_5e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [D

    .line 487
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [J

    move v2, v1

    .line 488
    :goto_6b
    array-length v0, v3

    if-ge v2, v0, :cond_8a

    .line 489
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 490
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 488
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6b

    .line 492
    :cond_8a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    const v2, -0x6b5c48

    if-ne p5, v2, :cond_94

    const p5, -0xc74208

    :cond_94
    const-string v2, ""

    invoke-virtual {v0, v3, v6, p5, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->set([D[JILjava/lang/String;)V

    .line 493
    array-length v0, v3

    const/4 v2, 0x2

    if-ge v0, v2, :cond_b2

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    const-string v1, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u043b\u0435\u0434 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435"

    const-string v2, "The chart is shown after the second measurement"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    :goto_b1
    return-void

    .line 498
    :cond_b2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 499
    const-string v2, "\u0441\u043f\u0440\u044f\u043c\u043e \u043f\u0440\u0435\u0434\u0438\u0448\u043d\u043e\u0442\u043e "

    const-string v4, "since last "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 500
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v3, v2

    array-length v2, v3

    add-int/lit8 v2, v2, -0x2

    aget-wide v8, v3, v2

    sub-double/2addr v4, v8

    invoke-static {v0, v4, v5, p3, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->change(Landroid/text/SpannableStringBuilder;DILjava/lang/String;)V

    .line 501
    const-string v2, "   \u00b7   \u043e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e "

    const-string v4, "   \u00b7   since the first "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 502
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v3, v2

    aget-wide v8, v3, v1

    sub-double/2addr v4, v8

    invoke-static {v0, v4, v5, p3, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->change(Landroid/text/SpannableStringBuilder;DILjava/lang/String;)V

    .line 503
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v6, v2

    aget-wide v6, v6, v1

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0438\u044f, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0434\u043d\u0438)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " measurements, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 505
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b1
.end method
