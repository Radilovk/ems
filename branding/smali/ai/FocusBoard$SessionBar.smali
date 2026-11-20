.class final Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;
.super Landroid/view/View;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionBar"
.end annotation


# instance fields
.field private final bar:Landroid/graphics/Paint;

.field private final big:Landroid/graphics/Paint;

.field private done:I

.field private final fill:Landroid/graphics/Paint;

.field private left:I

.field private mode:Ljava/lang/String;

.field private final num:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private run:Z

.field private final small:Landroid/graphics/Paint;

.field private final tick:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2768
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2755
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    .line 2756
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    .line 2757
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    .line 2758
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    .line 2759
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    .line 2760
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    .line 2761
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    .line 2765
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mode:Ljava/lang/String;

    .line 2769
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2770
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2771
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2772
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2773
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2774
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 2775
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2776
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2777
    const-string v0, "\u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v1, "The training\'s time"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2778
    return-void
.end method

.method static mmss(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 2792
    div-int/lit8 v0, p0, 0x3c

    .line 2793
    rem-int/lit8 v1, p0, 0x3c

    .line 2794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_26

    const-string v0, "0"

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, ""

    goto :goto_19
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26

    .prologue
    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 2800
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->getWidth()I

    move-result v4

    int-to-float v8, v4

    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 2802
    const/4 v5, 0x0

    cmpg-float v5, v8, v5

    if-gtz v5, :cond_14

    .line 2875
    :cond_13
    :goto_13
    return-void

    .line 2805
    :cond_14
    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 2806
    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v0, v6

    move/from16 v19, v0

    .line 2807
    sub-float v4, v4, v19

    const/high16 v6, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sub-float v20, v4, v6

    .line 2808
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    add-int v21, v4, v6

    .line 2809
    if-lez v21, :cond_281

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move/from16 v17, v4

    .line 2810
    :goto_52
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-nez v4, :cond_286

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    if-lez v4, :cond_286

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    if-lez v4, :cond_286

    const/4 v4, 0x1

    .line 2811
    :goto_65
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v6, :cond_289

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 2814
    :goto_6d
    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sub-float v9, v20, v6

    .line 2815
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v6, :cond_29c

    const-string v6, "\u0422\u0420\u0415\u041d\u0418\u0420\u041e\u0412\u041a\u0410"

    const-string v7, "TRAINING"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2817
    :goto_86
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2818
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v7, :cond_2c8

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_9b
    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_2cc

    const-string v4, "\u275a\u275a  "

    :goto_a7
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2820
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2821
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "   "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2822
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u00b7   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2825
    if-lez v21, :cond_2d0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  /  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mmss(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2826
    :goto_11e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2827
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2828
    sub-float v6, v8, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2830
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v6, :cond_2d4

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_150
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2831
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mmss(I)Ljava/lang/String;

    move-result-object v6

    sub-float v7, v8, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float v4, v7, v4

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2834
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float v22, v8, v4

    .line 2835
    const/high16 v4, 0x40000000    # 2.0f

    div-float v23, v19, v4

    .line 2836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    add-float v6, v5, v22

    add-float v7, v20, v19

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v7, 0x24

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2839
    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-lez v4, :cond_1ff

    .line 2840
    mul-float v4, v22, v17

    add-float v7, v5, v4

    .line 2841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    add-float v6, v5, v19

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v8, v20, v19

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2842
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    add-float v8, v5, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x90

    .line 2843
    invoke-static {v10, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 2842
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2847
    :cond_1ff
    div-int/lit8 v9, v21, 0x3c

    .line 2848
    const/4 v4, 0x2

    if-lt v9, v4, :cond_2fb

    const/16 v4, 0x78

    if-gt v9, v4, :cond_2fb

    .line 2849
    const/16 v4, 0x3c

    if-le v9, v4, :cond_2e1

    const/16 v4, 0xa

    .line 2850
    :goto_20e
    const/4 v6, 0x1

    move v8, v6

    :goto_210
    if-ge v8, v9, :cond_2fb

    .line 2851
    int-to-float v6, v8

    const/high16 v7, 0x42700000    # 60.0f

    mul-float/2addr v6, v7

    mul-float v6, v6, v22

    move/from16 v0, v21

    int-to-float v7, v0

    div-float/2addr v6, v7

    add-float v12, v5, v6

    .line 2852
    rem-int v6, v8, v4

    if-nez v6, :cond_2e4

    const/4 v6, 0x1

    .line 2853
    :goto_223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    if-eqz v6, :cond_2e7

    const/16 v7, 0xe0

    :goto_22d
    invoke-static {v13, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2854
    if-eqz v6, :cond_2eb

    const/4 v7, 0x0

    :goto_237
    add-float v13, v20, v7

    add-float v11, v20, v19

    if-eqz v6, :cond_2f1

    const/4 v7, 0x0

    :goto_23e
    sub-float v15, v11, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v14, v12

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2855
    if-eqz v6, :cond_27d

    .line 2856
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    mul-float v6, v22, v17

    add-float/2addr v6, v5

    cmpg-float v6, v12, v6

    if-gtz v6, :cond_2f7

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v11, 0xd0

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    :goto_261
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2857
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    add-float v7, v20, v19

    const/high16 v11, 0x41400000    # 12.0f

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12, v7, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2850
    :cond_27d
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_210

    .line 2809
    :cond_281
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_52

    .line 2810
    :cond_286
    const/4 v4, 0x0

    goto/16 :goto_65

    .line 2811
    :cond_289
    if-eqz v4, :cond_298

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v9, 0x3ee66666    # 0.45f

    invoke-static {v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v10

    goto/16 :goto_6d

    :cond_298
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_6d

    .line 2815
    :cond_29c
    if-eqz v4, :cond_2a8

    const-string v6, "\u041f\u0410\u0423\u0417\u0410"

    const-string v7, "PAUSED"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_86

    .line 2816
    :cond_2a8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    if-lez v6, :cond_2be

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    if-nez v6, :cond_2be

    const-string v6, "\u041a\u0420\u0410\u0419"

    const-string v7, "DONE"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_86

    :cond_2be
    const-string v6, "\u0413\u041e\u0422\u041e\u0412"

    const-string v7, "READY"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_86

    .line 2818
    :cond_2c8
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_9b

    .line 2819
    :cond_2cc
    const-string v4, "\u25cf  "

    goto/16 :goto_a7

    .line 2825
    :cond_2d0
    const-string v4, ""

    goto/16 :goto_11e

    .line 2830
    :cond_2d4
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v12, 0x3ecccccd    # 0.4f

    invoke-static {v6, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v6

    goto/16 :goto_150

    .line 2849
    :cond_2e1
    const/4 v4, 0x5

    goto/16 :goto_20e

    .line 2852
    :cond_2e4
    const/4 v6, 0x0

    goto/16 :goto_223

    .line 2853
    :cond_2e7
    const/16 v7, 0x90

    goto/16 :goto_22d

    .line 2854
    :cond_2eb
    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v7, v7, v19

    goto/16 :goto_237

    :cond_2f1
    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v7, v7, v19

    goto/16 :goto_23e

    .line 2856
    :cond_2f7
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_261

    .line 2861
    :cond_2fb
    if-lez v21, :cond_13

    .line 2862
    mul-float v4, v22, v17

    add-float/2addr v5, v4

    .line 2863
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x640

    rem-long/2addr v6, v8

    long-to-double v6, v6

    const-wide/high16 v8, 0x4099000000000000L    # 1600.0

    div-double/2addr v6, v8

    .line 2864
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v4, :cond_385

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v14

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 2865
    :goto_325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x42400000    # 48.0f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v10, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2866
    add-float v6, v20, v23

    const v7, 0x3fb33333    # 1.4f

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    mul-float v4, v4, v19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2868
    add-float v4, v20, v23

    const v6, 0x3f1eb852    # 0.62f

    mul-float v6, v6, v19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 2870
    add-float v4, v20, v23

    const v6, 0x3e99999a    # 0.3f

    mul-float v6, v6, v19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2871
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v4, :cond_13

    .line 2872
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->postInvalidateOnAnimation()V

    goto/16 :goto_13

    .line 2864
    :cond_385
    const/4 v4, 0x0

    goto :goto_325
.end method

.method set(ZIILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2781
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-ne p1, v0, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    if-ne p2, v0, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    if-ne p3, v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mode:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2789
    :goto_15
    return-void

    .line 2784
    :cond_16
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    .line 2785
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    .line 2786
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    .line 2787
    iput-object p4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mode:Ljava/lang/String;

    .line 2788
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->invalidate()V

    goto :goto_15
.end method
