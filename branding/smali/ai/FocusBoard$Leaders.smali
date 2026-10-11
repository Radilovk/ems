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

    .line 1206
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    .line 1198
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    .line 1199
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    .line 1200
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    .line 1201
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    .line 1202
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    .line 1203
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    .line 1207
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1208
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1209
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1210
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1211
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1212
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1213
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1214
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->setClickable(Z)V

    .line 1215
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->setFocusable(Z)V

    .line 1216
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    .prologue
    .line 1220
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1000()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    move-result-object v13

    .line 1221
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v4

    if-gtz v4, :cond_d

    .line 1264
    :cond_c
    return-void

    .line 1224
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getLocationInWindow([I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    invoke-virtual {v13, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getLocationInWindow([I)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v14, v4

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v15, v4

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3fb33333    # 1.4f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v8, v4

    .line 1230
    const/4 v4, 0x0

    move v12, v4

    :goto_58
    const/4 v4, 0x2

    if-ge v12, v4, :cond_c

    .line 1231
    if-nez v12, :cond_8a

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1100()[I

    move-result-object v4

    .line 1232
    :goto_61
    array-length v0, v4

    move/from16 v17, v0

    const/4 v5, 0x0

    move v11, v5

    :goto_66
    move/from16 v0, v17

    if-ge v11, v0, :cond_25a

    aget v5, v4, v11

    .line 1233
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1300()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    move-result-object v6

    aget-object v9, v6, v5

    .line 1234
    if-eqz v9, :cond_86

    iget-object v6, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    if-lez v6, :cond_86

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    invoke-virtual {v13, v12, v5, v12, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->anchor(III[F)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 1232
    :cond_86
    :goto_86
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_66

    .line 1231
    :cond_8a
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1200()[I

    move-result-object v4

    goto :goto_61

    .line 1237
    :cond_8f
    iget-object v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v18, v5, v6

    .line 1239
    if-nez v12, :cond_20e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iget-object v6, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move v10, v5

    .line 1240
    :goto_ce
    if-nez v12, :cond_221

    add-float v5, v10, v16

    .line 1241
    :goto_d2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float v19, v14, v6

    .line 1242
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->pt:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    add-float v20, v15, v6

    .line 1243
    iget-boolean v6, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v6, :cond_229

    iget-boolean v6, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    if-eqz v6, :cond_225

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1244
    :goto_ee
    iget-boolean v7, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v7, :cond_22d

    const/16 v7, 0x30

    .line 1245
    :goto_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->reset()V

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_239

    const/high16 v5, 0x40a00000    # 5.0f

    :goto_12e
    mul-float/2addr v5, v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_23d

    const/16 v5, 0x8

    :goto_140
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->halo:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_249

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v8

    :goto_168
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->line:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->getContext()Landroid/content/Context;

    move-result-object v21

    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_24c

    const/high16 v5, 0x40a00000    # 5.0f

    :goto_195
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    move/from16 v21, v0

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_250

    const/16 v5, 0x40

    :goto_1aa
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1257
    const v5, 0x40066666    # 2.1f

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v5, :cond_254

    move v5, v6

    :goto_1d4
    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v9, :cond_257

    const/16 v9, 0x60

    :goto_1da
    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1261
    const v5, 0x3fe66666    # 1.8f

    mul-float/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->dot:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_86

    .line 1239
    :cond_20e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->at:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->me:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v10, v5

    goto/16 :goto_ce

    .line 1240
    :cond_221
    sub-float v5, v10, v16

    goto/16 :goto_d2

    .line 1243
    :cond_225
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_ee

    :cond_229
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_ee

    .line 1244
    :cond_22d
    iget-boolean v7, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v7, :cond_235

    const/16 v7, 0xf0

    goto/16 :goto_f4

    :cond_235
    const/16 v7, 0x8c

    goto/16 :goto_f4

    .line 1249
    :cond_239
    const/high16 v5, 0x40600000    # 3.5f

    goto/16 :goto_12e

    .line 1250
    :cond_23d
    iget-boolean v5, v9, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-eqz v5, :cond_245

    const/16 v5, 0x40

    goto/16 :goto_140

    :cond_245
    const/16 v5, 0x1c

    goto/16 :goto_140

    :cond_249
    move v5, v8

    .line 1252
    goto/16 :goto_168

    .line 1255
    :cond_24c
    const/high16 v5, 0x40600000    # 3.5f

    goto/16 :goto_195

    .line 1256
    :cond_250
    const/16 v5, 0x50

    goto/16 :goto_1aa

    .line 1258
    :cond_254
    const/4 v5, -0x1

    goto/16 :goto_1d4

    :cond_257
    const/16 v9, 0xff

    goto :goto_1da

    .line 1230
    :cond_25a
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_58
.end method
