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
    .line 487
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

    .line 488
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_2f

    if-nez p3, :cond_5a

    :cond_2f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 489
    :goto_31
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 490
    return-void

    .line 487
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

    .line 488
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
    .line 493
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 494
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 495
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 497
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
    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->prev:Lorg/json/JSONObject;

    if-nez v0, :cond_a

    .line 267
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_9
    return-void

    .line 270
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D

    move-result-wide v0

    .line 271
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->prev:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v2, p2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D

    move-result-wide v2

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 273
    :cond_2e
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 276
    :cond_34
    sub-double v2, v0, v2

    .line 277
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v4

    if-gez v0, :cond_59

    .line 278
    if-eqz p4, :cond_56

    const-string v0, "= \u043a\u0430\u043a\u0442\u043e \u043c\u0438\u043d\u0430\u043b\u0438\u044f \u043f\u044a\u0442"

    const-string v1, "= as last time"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 278
    :cond_56
    const-string v0, "="

    goto :goto_4d

    .line 282
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

    .line 283
    if-nez p3, :cond_88

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 282
    :cond_85
    const-string v0, "\u25bc"

    goto :goto_66

    .line 283
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

    .line 348
    if-ltz p1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 385
    :cond_f
    :goto_f
    return-void

    .line 351
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    .line 352
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focused:I

    .line 353
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    move v3, v4

    .line 354
    :goto_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_41

    .line 355
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 356
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-ne v3, p1, :cond_3f

    move v5, v6

    :goto_38
    invoke-virtual {p0, v1, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->mark(Landroid/widget/LinearLayout;Z)V

    .line 354
    :cond_3b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1d

    :cond_3f
    move v5, v4

    .line 356
    goto :goto_38

    .line 359
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

    .line 362
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "w"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->selected:Z

    .line 363
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->invalidate()V

    .line 364
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    if-nez v1, :cond_120

    :goto_66
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->paintFigure(Z)V

    .line 365
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

    .line 366
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_12b

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->bg:Ljava/lang/String;

    :goto_86
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->status(I)V

    .line 370
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_12f

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 371
    :goto_a4
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_133

    move v1, v4

    :goto_b2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-eqz v1, :cond_136

    .line 375
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 380
    :goto_ca
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 382
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v1, :cond_13c

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    :goto_dc
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->trend(Ljava/lang/String;IILjava/lang/String;I)V

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_f

    .line 359
    :cond_f6
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "water"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    move v1, v6

    .line 360
    goto/16 :goto_4e

    :cond_103
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v5, "prot"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    const/4 v1, 0x2

    goto/16 :goto_4e

    .line 361
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

    .line 364
    goto/16 :goto_66

    .line 365
    :cond_123
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupEn(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_75

    .line 366
    :cond_12b
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->en:Ljava/lang/String;

    goto/16 :goto_86

    .line 370
    :cond_12f
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    goto/16 :goto_a4

    :cond_133
    move v1, v7

    .line 372
    goto/16 :goto_b2

    .line 378
    :cond_136
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    goto :goto_ca

    .line 382
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

    .line 389
    if-ltz p1, :cond_a

    const/4 v0, 0x4

    if-le p1, v0, :cond_b

    .line 441
    :cond_a
    :goto_a
    return-void

    .line 392
    :cond_b
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    .line 393
    iput v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focused:I

    .line 394
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

    .line 395
    if-eqz v0, :cond_15

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->mark(Landroid/widget/LinearLayout;Z)V

    goto :goto_15

    .line 399
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->select(I)V

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->selected:Z

    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->invalidate()V

    .line 402
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

    .line 403
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->paintFigure(Z)V

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v6, v0, p1

    .line 405
    if-eq p1, v3, :cond_56

    if-ne p1, v4, :cond_1b9

    :cond_56
    move v0, v3

    .line 406
    :goto_57
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    const-string v7, "\u0417\u041e\u041d\u0410"

    const-string v8, "ZONE"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v2, :cond_1bc

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneBg(I)Ljava/lang/String;

    move-result-object v2

    :goto_6e
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1c2

    const-string v2, "\u2014"

    :goto_7d
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    const-string v7, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v8, " kg muscle"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->status(I)V

    .line 411
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

    if-eqz v2, :cond_1ca

    const-string v2, "\u2014"

    :goto_af
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    const-string v7, "\u041c\u0423\u0421\u041a\u0423\u041b\u0418 \u00b7 % \u041e\u0422 \u0421\u0422\u0410\u041d\u0414\u0410\u0420\u0422\u0410"

    const-string v8, "MUSCLE \u00b7 % OF STANDARD"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    iget-boolean v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    invoke-static {v8, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneMuscleNorm(DZZ)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    const-string v2, "\u041c\u0410\u0417\u041d\u0418\u041d\u0418 \u00b7 % \u041e\u0422 \u0421\u0422\u0410\u041d\u0414\u0410\u0420\u0422\u0410"

    const-string v7, "FAT \u00b7 % OF STANDARD"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    invoke-static {v8, v9, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneFatNorm(DZ)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 421
    const-string v1, ""

    .line 422
    if-eqz p1, :cond_201

    .line 423
    if-ne p1, v3, :cond_1eb

    move v0, v4

    .line 426
    :goto_10e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v0, v2, v0

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    .line 427
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_20a

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_20a

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_20a

    .line 428
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v0, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0421\u0440\u0435\u0449\u0443 \u0434\u0440\u0443\u0433\u0430\u0442\u0430 \u0441\u0442\u0440\u0430\u043d\u0430: "

    const-string v8, "Against the other side: "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u043a\u0433 \u2014 "

    const-string v5, " kg \u2014 "

    .line 430
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

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_1f8

    .line 431
    const-string v0, ". \u041d\u0430\u0434 6 % \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u043d\u0430 \u043f\u043e-\u0441\u043b\u0430\u0431\u0430\u0442\u0430 \u0441\u0442\u0440\u0430\u043d\u0430."

    const-string v1, ". Over 6 % \u2014 more strength on the weaker side."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_198
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
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

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_a

    :cond_1b9
    move v0, v1

    .line 405
    goto/16 :goto_57

    .line 407
    :cond_1bc
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneEn(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6e

    .line 408
    :cond_1c2
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->one(D)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7d

    .line 411
    :cond_1ca
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

    .line 423
    :cond_1eb
    if-ne p1, v4, :cond_1f0

    move v0, v3

    .line 424
    goto/16 :goto_10e

    :cond_1f0
    if-ne p1, v5, :cond_1f5

    const/4 v0, 0x4

    goto/16 :goto_10e

    :cond_1f5
    move v0, v5

    .line 425
    goto/16 :goto_10e

    .line 432
    :cond_1f8
    const-string v0, ", \u0432 \u043d\u043e\u0440\u043c\u0430\u0442\u0430 (\u0434\u043e 6 %)."

    const-string v1, ", within normal (up to 6 %)."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_190

    .line 435
    :cond_201
    const-string v0, "\u0422\u044f\u043b\u043e\u0442\u043e \u043d\u043e\u0441\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438; \u043a\u043e\u0440\u0435\u043c\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0442\u0443\u043a \u0441\u0430 \u0432\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438\u0442\u0435."

    const-string v1, "The trunk carries the most muscle and fat; the belly fat here is the visceral one."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_198

    :cond_20a
    move-object v0, v1

    goto :goto_198
.end method

.method footer()V
    .registers 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v2, "Close"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method indexOf(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 500
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 505
    :goto_1a
    return v1

    .line 500
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 505
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method info(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const v7, -0xbd5a0b

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x41600000    # 14.0f

    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 545
    :goto_1b
    return-void

    .line 521
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0430\u043a \u0441\u0435 \u0441\u043c\u044f\u0442\u0430\n\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u2014 \u043f\u043e \u0443\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u044f, \u043f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u0438 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u0435\u0444\u0435\u0440\u0435\u043d\u0442\u043d\u0438 \u043c\u0435\u0442\u043e\u0434\u0438, \u043e\u0442\u0434\u0435\u043b\u043d\u043e \u0437\u0430 \u043c\u044a\u0436\u0435 \u0438 \u0436\u0435\u043d\u0438 (Sun 2003, 1 829 \u0434\u0443\u0448\u0438), \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0438\u0437\u043c\u0435\u0440\u0435\u043d\u043e\u0442\u043e \u043e\u0442 \u043a\u0430\u043d\u0442\u0430\u0440\u0430; \u0441\u043a\u0435\u043b\u0435\u0442\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 Janssen 2000 (\u042f\u041c\u0420). \u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0430 \u0438\u0437\u0433\u043b\u0430\u0434\u0435\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u043c\u0435\u0440\u0435\u043d\u0438\u044f: \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u044a\u0442 \u0438 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0432\u043e\u0434\u0430 \u043c\u0435\u0441\u0442\u044f\u0442 \u0438\u043c\u043f\u0435\u0434\u0430\u043d\u0441\u0430, \u0442\u044a\u043a\u0430\u043d\u0442\u0430 \u2014 \u043d\u0435. \u0414\u0432\u0435 \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u043f\u0440\u0435\u0437 \u043c\u0438\u043d\u0443\u0442\u0430 \u0434\u0430\u0432\u0430\u0442 \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e; \u0438\u0441\u0442\u0438\u043d\u0441\u043a\u0430\u0442\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u0441\u0435 \u0432\u0438\u0436\u0434\u0430 \u0434\u043e \u0434\u043d\u0438.\n\n\u0417\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e \u0442\u0435\u0433\u043b\u043e \u0435 \u0437\u0430 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043f\u0440\u0438 \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u043d\u0435 \u043f\u043e \u0418\u0422\u041c 22.\n\n\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043f\u043b\u043e\u0447\u043a\u0430, \u0447\u0430\u0441\u0442 \u043e\u0442 \u043b\u0435\u043d\u0442\u0430\u0442\u0430, \u0437\u043e\u043d\u0430 \u043d\u0430 \u0444\u0438\u0433\u0443\u0440\u0430\u0442\u0430 \u0438\u043b\u0438 \u043f\u044a\u0442\u044f \u0434\u043e \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e \u2014 \u0432\u0434\u044f\u0441\u043d\u043e \u0438\u0434\u0432\u0430\u0442 \u043d\u043e\u0440\u043c\u0430\u0442\u0430, \u043a\u0430\u043a\u0432\u043e \u0437\u043d\u0430\u0447\u0438 \u0438 \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u0432\u044a\u0432 \u0432\u0440\u0435\u043c\u0435\u0442\u043e."

    const-string v2, "How it is computed\nFat by equations checked against reference methods, separate for men and women (Sun 2003, 1,829 adults), together with the scale\'s own value; skeletal muscle by Janssen 2000 (MRI). Values are smoothed between weigh-ins: contact and the last drink move the impedance, tissue does not. Two steps a minute apart give their mean; a real change shows within days.\n\nThe healthy weight is for the client\'s own muscle at a healthy fat % \u2014 not BMI 22.\n\nTap a tile, a part of the bar, a zone of the figure or the way to the healthy weight \u2014 the norm, what it means and its line over time come up on the right."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v5, v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 537
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 538
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 539
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

    .line 540
    new-instance v1, Landroid/widget/PopupWindow;

    const/high16 v2, 0x440c0000    # 560.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    .line 541
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 542
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 544
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->pop:Landroid/widget/PopupWindow;

    const/high16 v1, 0x44060000    # 536.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    neg-int v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1b
.end method

.method left()Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, "\u041e\u0442 \u043a\u0430\u043a\u0432\u043e \u0435 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    const-string v3, "What the weight is made of"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 153
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

    .line 154
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

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    const-wide/16 v10, 0x0

    sub-double/2addr v6, v4

    sub-double/2addr v6, v8

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const/4 v10, -0x1

    invoke-virtual/range {v1 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->set(DDDDI)V

    .line 156
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->comp:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 161
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V

    .line 162
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 164
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 165
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v3, "\u041f\u044a\u0442 \u0434\u043e \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v4, "Way to the healthy weight"

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

    .line 167
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->m:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    move-result-object v2

    .line 170
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iget-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->fat:D

    iget-wide v8, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->muscle:D

    move-wide v2, v12

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->set(DDDD)V

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->path:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-object v0
.end method

.method mark(Landroid/widget/LinearLayout;Z)V
    .registers 7

    .prologue
    const v1, -0xdd3aa2

    .line 260
    if-eqz p2, :cond_28

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_e
    const/high16 v2, 0x41400000    # 12.0f

    .line 261
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

    .line 260
    invoke-static {v0, v3, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void

    .line 260
    :cond_28
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto :goto_e

    .line 261
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
    .registers 15

    .prologue
    const/high16 v13, 0x41200000    # 10.0f

    const/4 v12, -0x1

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    move v4, v2

    .line 193
    :goto_f
    const/4 v0, 0x4

    if-ge v4, v0, :cond_ae

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 195
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v7

    invoke-virtual {v6, v0, v1, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 196
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_67

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupBg(I)Ljava/lang/String;

    move-result-object v0

    :goto_35
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41300000    # 11.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x1

    invoke-static {v1, v0, v3, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    move v1, v2

    move v3, v2

    .line 200
    :goto_4f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8f

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    if-eq v0, v4, :cond_6c

    .line 200
    :goto_63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4f

    .line 196
    :cond_67
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 204
    :cond_6c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->ms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tile(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 205
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 206
    if-lez v3, :cond_8d

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    :goto_85
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 207
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_8d
    move v0, v2

    .line 206
    goto :goto_85

    .line 210
    :cond_8f
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 212
    if-lez v4, :cond_ac

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    :goto_a2
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 213
    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_f

    :cond_ac
    move v0, v2

    .line 212
    goto :goto_a2

    .line 215
    :cond_ae
    return-object v5
.end method

.method public onSegment(I)V
    .registers 2

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focusZone(I)V

    .line 511
    return-void
.end method

.method paintFigure(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 179
    new-array v3, v5, [I

    move v2, v1

    .line 180
    :goto_5
    if-ge v2, v5, :cond_25

    .line 181
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatStatus:I

    .line 182
    :goto_f
    const/4 v4, -0x1

    if-ne v0, v4, :cond_20

    move v0, v1

    :goto_13
    aput v0, v3, v2

    .line 180
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 181
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zones:[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    goto :goto_f

    .line 182
    :cond_20
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v0

    goto :goto_13

    .line 184
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fig:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    if-nez v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->zone:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->setSegments(Z[II)V

    .line 185
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->figTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_41

    const-string v0, "\u0417\u041e\u041d\u0418 \u00b7 \u041c\u0410\u0417\u041d\u0418\u041d\u0418 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430"

    const-string v2, "ZONES \u00b7 FAT \u00b7 tap a zone"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void

    .line 186
    :cond_41
    const-string v0, "\u0417\u041e\u041d\u0418 \u00b7 \u041c\u0423\u0421\u041a\u0423\u041b\u0418 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438 \u0437\u043e\u043d\u0430"

    const-string v2, "ZONES \u00b7 MUSCLE \u00b7 tap a zone"

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

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fGroup:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41980000    # 19.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 295
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x42380000    # 46.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    .line 297
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 298
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    .line 300
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 301
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v2, ""

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v10, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    .line 304
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

    .line 305
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 307
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 308
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v10, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fSub:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v9, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42ac0000    # 86.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v9, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fBar2:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42ac0000    # 86.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v10, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fWhat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, "\u0412\u042a\u0412 \u0412\u0420\u0415\u041c\u0415\u0422\u041e"

    const-string v2, "OVER TIME"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrendTitle:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrendTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    .line 326
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 327
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 328
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->setMinimumHeight(I)V

    .line 330
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v10, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focus:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
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

    const-string v2, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u043f\u044a\u043b\u043d\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u2014 \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435."

    const-string v3, "No full measurement yet \u2014 hold the handle with both hands."

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
    .line 336
    if-gez p1, :cond_9

    .line 337
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :goto_8
    return-void

    .line 340
    :cond_9
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v1

    .line 341
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_48

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusBg(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
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

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 341
    :cond_48
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method tile(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;I)Landroid/widget/LinearLayout;
    .registers 13

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 220
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    :goto_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_34

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 224
    :cond_34
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tiles:Ljava/util/List;

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_10c

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->bg:Ljava/lang/String;

    :goto_41
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v0, v8, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 227
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 228
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 230
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->text()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v8, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 235
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v8, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 239
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    iget v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->delta(Landroid/widget/TextView;Ljava/lang/String;IZ)V

    .line 240
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    if-ltz v0, :cond_117

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_110

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusBg(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_c3
    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    if-ltz v1, :cond_121

    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v1

    .line 243
    :goto_cd
    invoke-static {v3, v0, v8, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 247
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-eqz v0, :cond_fd

    .line 249
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;-><init>(Landroid/content/Context;)V

    .line 250
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->set(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)V

    .line 251
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->dp(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_fd
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;

    invoke-direct {v0, p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 255
    invoke-virtual {p0, v2, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->mark(Landroid/widget/LinearLayout;Z)V

    .line 256
    return-object v2

    .line 225
    :cond_10c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->en:Ljava/lang/String;

    goto/16 :goto_41

    .line 244
    :cond_110
    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c3

    :cond_117
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->bg:Z

    if-eqz v0, :cond_11e

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    goto :goto_c3

    :cond_11e
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    goto :goto_c3

    .line 245
    :cond_121
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_cd
.end method

.method trend(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 445
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 446
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 447
    :goto_c
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->at:I

    if-gt v0, v2, :cond_5e

    .line 448
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 449
    if-eqz v6, :cond_20

    const-string v2, "fat"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 447
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 453
    :cond_23
    if-ltz p2, :cond_53

    .line 454
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_50

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    .line 459
    :goto_35
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_20

    .line 460
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v2, "t"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 455
    :cond_50
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_35

    .line 457
    :cond_53
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->age:I

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->heightCm:I

    invoke-static {v6, p1, v2, v3, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D

    move-result-wide v2

    goto :goto_35

    .line 464
    :cond_5e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [D

    .line 465
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [J

    move v2, v1

    .line 466
    :goto_6b
    array-length v0, v3

    if-ge v2, v0, :cond_8a

    .line 467
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 468
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 466
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6b

    .line 470
    :cond_8a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fTrend:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;

    const v2, -0x6b5c48

    if-ne p5, v2, :cond_94

    const p5, -0xc74208

    :cond_94
    const-string v2, ""

    invoke-virtual {v0, v3, v6, p5, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;->set([D[JILjava/lang/String;)V

    .line 471
    array-length v0, v3

    const/4 v2, 0x2

    if-ge v0, v2, :cond_b2

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    const-string v1, "\u041b\u0438\u043d\u0438\u044f\u0442\u0430 \u0441\u0435 \u043f\u043e\u044f\u0432\u044f\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v2, "The line starts with the second weigh-in"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    :goto_b1
    return-void

    .line 476
    :cond_b2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 477
    const-string v2, "\u043e\u0442 \u043c\u0438\u043d\u0430\u043b\u0438\u044f "

    const-string v4, "since last "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 478
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v3, v2

    array-length v2, v3

    add-int/lit8 v2, v2, -0x2

    aget-wide v8, v3, v2

    sub-double/2addr v4, v8

    invoke-static {v0, v4, v5, p3, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->change(Landroid/text/SpannableStringBuilder;DILjava/lang/String;)V

    .line 479
    const-string v2, "   \u00b7   \u043e\u0442 \u043f\u044a\u0440\u0432\u0438\u044f "

    const-string v4, "   \u00b7   since the first "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->part(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 480
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v3, v2

    aget-wide v8, v3, v1

    sub-double/2addr v4, v8

    invoke-static {v0, v4, v5, p3, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->change(Landroid/text/SpannableStringBuilder;DILjava/lang/String;)V

    .line 481
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

    .line 482
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

    const-string v3, " \u043c\u0435\u0440\u0435\u043d\u0438\u044f, "

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

    const-string v6, " weigh-ins, "

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

    .line 483
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->fDelta:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b1
.end method
