.class final Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
.super Landroid/view/View;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Leaders"
.end annotation


# instance fields
.field private final at:[I

.field private final dot:Landroid/graphics/Paint;

.field private final halo:Landroid/graphics/Paint;

.field private final line:Landroid/graphics/Paint;

.field private final me:[I

.field private final path:Landroid/graphics/Path;

.field private final pt:[F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2173
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    .line 2165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    .line 2166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    .line 2167
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    .line 2168
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    .line 2169
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    .line 2170
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    .line 2174
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2175
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2176
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2177
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2178
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2179
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2180
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2181
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->setClickable(Z)V

    .line 2182
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->setFocusable(Z)V

    .line 2183
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 30

    .prologue
    .line 2187
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2800()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    move-result-object v14

    .line 2188
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v4

    if-gtz v4, :cond_d

    .line 2249
    :cond_c
    :goto_c
    return-void

    .line 2191
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getLocationInWindow([I)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    invoke-virtual {v14, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getLocationInWindow([I)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v15, v4

    .line 2194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v16, v0

    .line 2195
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    .line 2196
    const/4 v10, 0x0

    .line 2197
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3fb33333    # 1.4f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v7, v4

    .line 2198
    const/4 v4, 0x0

    move v13, v4

    :goto_5b
    const/4 v4, 0x2

    if-ge v13, v4, :cond_2b1

    .line 2199
    if-nez v13, :cond_9b

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$3100()[I

    move-result-object v4

    .line 2200
    :goto_64
    array-length v0, v4

    move/from16 v18, v0

    const/4 v5, 0x0

    move v12, v5

    :goto_69
    move/from16 v0, v18

    if-ge v12, v0, :cond_2ac

    aget v5, v4, v12

    .line 2201
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2900()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    move-result-object v6

    aget-object v19, v6, v5

    .line 2202
    if-eqz v19, :cond_2b8

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2b8

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    if-lez v6, :cond_2b8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    .line 2203
    invoke-virtual {v14, v13, v5, v13, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->anchor(III[F)Z

    move-result v5

    if-nez v5, :cond_a0

    move v5, v10

    .line 2200
    :goto_96
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v10, v5

    goto :goto_69

    .line 2199
    :cond_9b
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$3200()[I

    move-result-object v4

    goto :goto_64

    .line 2206
    :cond_a0
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float v20, v5, v6

    .line 2208
    if-nez v13, :cond_263

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    sub-int/2addr v5, v6

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move v11, v5

    .line 2209
    :goto_e5
    if-nez v13, :cond_276

    add-float v5, v11, v17

    .line 2210
    :goto_e9
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1400()Z

    move-result v21

    .line 2211
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    add-float v22, v15, v6

    .line 2212
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    add-float v23, v16, v6

    .line 2213
    move-object/from16 v0, v19

    iget v8, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 2214
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v6, :cond_27a

    const/16 v6, 0x30

    .line 2215
    :goto_10b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 2216
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v20

    invoke-virtual {v9, v11, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v20

    invoke-virtual {v9, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2219
    if-nez v21, :cond_18a

    .line 2220
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_288

    const/high16 v5, 0x40a00000    # 5.0f

    :goto_13d
    mul-float/2addr v5, v7

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2221
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_28c

    const/16 v5, 0x8

    :goto_14d
    invoke-static {v8, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_29a

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v7

    :goto_16f
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2227
    :cond_18a
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_29d

    const/high16 v5, 0x40a00000    # 5.0f

    :goto_196
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    move/from16 v24, v0

    .line 2228
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_2a1

    const/16 v5, 0x40

    :goto_1a9
    invoke-static {v8, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2229
    const v5, 0x40066666    # 2.1f

    mul-float v5, v5, v24

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_2a5

    move v5, v8

    :goto_1cf
    move-object/from16 v0, v19

    iget-boolean v9, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v9, :cond_2a8

    const/16 v9, 0x60

    :goto_1d7
    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2233
    if-nez v21, :cond_20b

    .line 2234
    const v5, 0x3fe66666    # 1.8f

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2236
    :cond_20b
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_2b8

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-nez v5, :cond_2b8

    .line 2238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v20, 0x578

    rem-long v10, v10, v20

    long-to-double v10, v10

    const-wide v20, 0x4095e00000000000L    # 1400.0

    div-double v10, v10, v20

    .line 2239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    const-wide/high16 v20, 0x4068000000000000L    # 192.0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v10

    mul-double v20, v20, v26

    move-wide/from16 v0, v20

    double-to-int v6, v0

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2241
    const v5, 0x400ccccd    # 2.2f

    const v6, 0x4019999a    # 2.4f

    double-to-float v8, v10

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float v5, v5, v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2242
    const/4 v5, 0x1

    goto/16 :goto_96

    .line 2208
    :cond_263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v11, v5

    goto/16 :goto_e5

    .line 2209
    :cond_276
    sub-float v5, v11, v17

    goto/16 :goto_e9

    .line 2214
    :cond_27a
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v6, :cond_284

    const/16 v6, 0xf0

    goto/16 :goto_10b

    :cond_284
    const/16 v6, 0x8c

    goto/16 :goto_10b

    .line 2220
    :cond_288
    const/high16 v5, 0x40600000    # 3.5f

    goto/16 :goto_13d

    .line 2221
    :cond_28c
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_296

    const/16 v5, 0x40

    goto/16 :goto_14d

    :cond_296
    const/16 v5, 0x1c

    goto/16 :goto_14d

    :cond_29a
    move v5, v7

    .line 2223
    goto/16 :goto_16f

    .line 2227
    :cond_29d
    const/high16 v5, 0x40600000    # 3.5f

    goto/16 :goto_196

    .line 2228
    :cond_2a1
    const/16 v5, 0x50

    goto/16 :goto_1a9

    .line 2230
    :cond_2a5
    const/4 v5, -0x1

    goto/16 :goto_1cf

    :cond_2a8
    const/16 v9, 0xff

    goto/16 :goto_1d7

    .line 2198
    :cond_2ac
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_5b

    .line 2246
    :cond_2b1
    if-eqz v10, :cond_c

    .line 2247
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->postInvalidateOnAnimation()V

    goto/16 :goto_c

    :cond_2b8
    move v5, v10

    goto/16 :goto_96
.end method
