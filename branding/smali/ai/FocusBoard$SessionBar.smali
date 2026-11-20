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

    .line 2938
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2925
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    .line 2926
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    .line 2927
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    .line 2928
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    .line 2929
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    .line 2930
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    .line 2931
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    .line 2935
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mode:Ljava/lang/String;

    .line 2939
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2940
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2941
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2942
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2943
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2944
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 2945
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2946
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2947
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2948
    const-string v0, "\u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v1, "The training\'s time"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2949
    return-void
.end method

.method static mmss(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 2963
    div-int/lit8 v0, p0, 0x3c

    .line 2964
    rem-int/lit8 v1, p0, 0x3c

    .line 2965
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
    .line 2970
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 2971
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->getWidth()I

    move-result v4

    int-to-float v15, v4

    .line 2972
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 2973
    const/4 v5, 0x0

    cmpg-float v5, v15, v5

    if-gtz v5, :cond_14

    .line 3072
    :cond_13
    :goto_13
    return-void

    .line 2976
    :cond_14
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v14, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    move/from16 v16, v0

    .line 2977
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v14, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    move/from16 v17, v0

    .line 2978
    sub-float v4, v4, v17

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v14, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sub-float v18, v4, v5

    .line 2979
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    add-int v19, v4, v5

    .line 2980
    if-lez v19, :cond_36a

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    int-to-float v5, v5

    move/from16 v0, v19

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v11, v4

    .line 2981
    :goto_4d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-nez v4, :cond_36e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    if-lez v4, :cond_36e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    if-lez v4, :cond_36e

    const/4 v4, 0x1

    .line 2982
    :goto_60
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v5, :cond_371

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 2985
    :goto_68
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v5, :cond_384

    const-string v5, "\u0410\u041a\u0422\u0418\u0412\u0415\u041d"

    const-string v6, "ACTIVE"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    .line 2987
    :goto_77
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v5, :cond_3b3

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move v13, v5

    .line 2988
    :goto_80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2989
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v14, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 2990
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v14, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 2991
    const/high16 v7, 0x42180000    # 38.0f

    invoke-static {v14, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v18, v7

    .line 2992
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    add-float v5, v5, v16

    add-float v9, v7, v6

    move/from16 v0, v16

    invoke-virtual {v8, v0, v7, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2993
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    const/16 v8, 0x29

    invoke-static {v13, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2994
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2995
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2997
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v14, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float v20, v16, v5

    .line 2998
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v6, v5

    add-float v21, v7, v5

    .line 2999
    if-eqz v4, :cond_3b8

    .line 3000
    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v0, v4

    move/from16 v22, v0

    .line 3001
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v0, v4

    move/from16 v23, v0

    .line 3002
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v20, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    sub-float v6, v21, v4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v20, v4

    add-float v7, v4, v22

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    add-float v8, v21, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3003
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float v5, v20, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    sub-float v6, v21, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v20

    add-float v7, v4, v22

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    add-float v8, v21, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3007
    :goto_160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 3008
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const v6, 0x3eb851ec    # 0.36f

    mul-float/2addr v5, v6

    add-float v5, v5, v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->small:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3012
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v4, :cond_3ce

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_19c
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3013
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v18, v4

    .line 3014
    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mmss(I)Ljava/lang/String;

    move-result-object v5

    .line 3015
    sub-float v6, v15, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3016
    if-lez v19, :cond_21e

    .line 3017
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3018
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    const/high16 v7, 0x41500000    # 13.0f

    invoke-static {v14, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 3020
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u043e\u0442 "

    const-string v8, "of "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mmss(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sub-float v7, v15, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->big:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float v5, v7, v5

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v14, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/high16 v7, 0x40400000    # 3.0f

    .line 3021
    invoke-static {v14, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    .line 3020
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3025
    :cond_21e
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v16

    sub-float/2addr v15, v4

    .line 3026
    const/high16 v4, 0x40000000    # 2.0f

    div-float v20, v17, v4

    .line 3027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    add-float v5, v16, v15

    add-float v6, v18, v17

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v6, 0x21

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->bar:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3030
    mul-float v4, v15, v11

    add-float v21, v16, v4

    .line 3031
    const/4 v4, 0x0

    cmpl-float v4, v11, v4

    if-lez v4, :cond_2ad

    .line 3032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    add-float v5, v16, v17

    move/from16 v0, v21

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float v6, v18, v17

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3033
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    add-float v5, v16, v17

    move/from16 v0, v21

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v8, 0x0

    const/16 v5, 0x73

    .line 3034
    invoke-static {v10, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v5, v16

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 3033
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3038
    :cond_2ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v14, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3039
    add-float v4, v18, v17

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v14, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float v22, v4, v5

    .line 3040
    div-int/lit8 v23, v19, 0x3c

    .line 3041
    const/4 v4, 0x2

    move/from16 v0, v23

    if-lt v0, v4, :cond_3eb

    const/16 v4, 0x78

    move/from16 v0, v23

    if-gt v0, v4, :cond_3eb

    .line 3042
    const/16 v4, 0x3c

    move/from16 v0, v23

    if-le v0, v4, :cond_3db

    const/16 v4, 0xa

    move v11, v4

    .line 3043
    :goto_2db
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3044
    const/4 v4, 0x1

    move v13, v4

    :goto_2e6
    move/from16 v0, v23

    if-ge v13, v0, :cond_3eb

    .line 3045
    int-to-float v4, v13

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v15

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    add-float v5, v16, v4

    .line 3046
    rem-int v4, v13, v11

    if-nez v4, :cond_3df

    const/4 v4, 0x1

    move v12, v4

    .line 3047
    :goto_2fb
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    if-eqz v12, :cond_3e3

    const/16 v4, 0xd8

    :goto_305
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3048
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float v6, v18, v4

    add-float v4, v18, v17

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v14, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v4, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->tick:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3049
    if-eqz v12, :cond_365

    add-float v4, v16, v15

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v14, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    cmpg-float v4, v5, v4

    if-gez v4, :cond_365

    .line 3050
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    cmpg-float v4, v5, v21

    if-gtz v4, :cond_3e7

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_344
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u2032"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3044
    :cond_365
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_2e6

    .line 2980
    :cond_36a
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_4d

    .line 2981
    :cond_36e
    const/4 v4, 0x0

    goto/16 :goto_60

    .line 2982
    :cond_371
    if-eqz v4, :cond_380

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v7, 0x3ee66666    # 0.45f

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v10

    goto/16 :goto_68

    :cond_380
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_68

    .line 2985
    :cond_384
    if-eqz v4, :cond_391

    const-string v5, "\u041f\u0410\u0423\u0417\u0410"

    const-string v6, "PAUSED"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto/16 :goto_77

    .line 2986
    :cond_391
    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    if-lez v5, :cond_3a8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    if-nez v5, :cond_3a8

    const-string v5, "\u041a\u0420\u0410\u0419"

    const-string v6, "DONE"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto/16 :goto_77

    :cond_3a8
    const-string v5, "\u0413\u041e\u0422\u041e\u0412"

    const-string v6, "READY"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto/16 :goto_77

    .line 2987
    :cond_3b3
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    move v13, v5

    goto/16 :goto_80

    .line 3005
    :cond_3b8
    const/high16 v4, 0x40600000    # 3.5f

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_160

    .line 3012
    :cond_3ce
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    goto/16 :goto_19c

    .line 3042
    :cond_3db
    const/4 v4, 0x5

    move v11, v4

    goto/16 :goto_2db

    .line 3046
    :cond_3df
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_2fb

    .line 3047
    :cond_3e3
    const/16 v4, 0x80

    goto/16 :goto_305

    .line 3050
    :cond_3e7
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_344

    .line 3055
    :cond_3eb
    if-lez v19, :cond_13

    .line 3056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3058
    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v19, 0x1e

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2032"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-float v5, v16, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3062
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    if-eqz v4, :cond_48c

    .line 3063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x640

    rem-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4099000000000000L    # 1600.0

    div-double/2addr v4, v6

    .line 3064
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 3065
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v7, 0x42200000    # 40.0f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v10, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3066
    add-float v5, v18, v20

    const v6, 0x3f8ccccd    # 1.1f

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    mul-float v4, v4, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3067
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->postInvalidateOnAnimation()V

    .line 3069
    :cond_48c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3070
    add-float v4, v18, v20

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v5, v5, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_13
.end method

.method set(ZIILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2952
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

    .line 2960
    :goto_15
    return-void

    .line 2955
    :cond_16
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->run:Z

    .line 2956
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->done:I

    .line 2957
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->left:I

    .line 2958
    iput-object p4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->mode:Ljava/lang/String;

    .line 2959
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->invalidate()V

    goto :goto_15
.end method
