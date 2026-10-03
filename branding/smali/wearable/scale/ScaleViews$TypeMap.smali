.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeMap"
.end annotation


# instance fields
.field ffmi:[D

.field fmi:[D

.field male:Z

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 942
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 935
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    .line 936
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    .line 937
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    .line 938
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    .line 939
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    .line 943
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32

    .prologue
    .line 954
    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v22

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v24, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v25, v4, v5

    .line 956
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v10, -0x10000000000001L

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v6, -0x10000000000001L

    .line 957
    const/4 v4, 0x0

    :goto_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    array-length v14, v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_96

    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v14, v5, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_93

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    aget-wide v14, v5, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_93

    .line 959
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v14, v5, v4

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 960
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v14, v5, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 961
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    aget-wide v14, v5, v4

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 962
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    aget-wide v14, v5, v4

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 957
    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 965
    :cond_96
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v4, :cond_445

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    :goto_9e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v14, :cond_449

    const-wide/high16 v14, 0x403b000000000000L    # 27.0

    :goto_a6
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    move/from16 v16, v0

    if-eqz v16, :cond_44d

    const-wide/high16 v16, 0x402c000000000000L    # 14.0

    .line 966
    :goto_b2
    cmpg-double v20, v12, v10

    if-gtz v20, :cond_5c5

    .line 967
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    sub-double v14, v10, v12

    const-wide v16, 0x3ffccccccccccccdL    # 1.8

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    sub-double v16, v6, v8

    const-wide v18, 0x3ffccccccccccccdL    # 1.8

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 968
    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 969
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v4, v8

    sub-double v8, v10, v8

    .line 970
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v12

    add-double v14, v10, v4

    .line 971
    const-wide/16 v4, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v16, v10

    sub-double/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 972
    add-double v4, v6, v16

    move-wide v10, v4

    move-wide v12, v6

    move-wide/from16 v20, v8

    .line 974
    :goto_100
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v4, :cond_451

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_5ce

    .line 975
    :goto_10c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v5, :cond_459

    const/4 v5, 0x2

    new-array v5, v5, [D

    fill-array-data v5, :array_5de

    .line 976
    :goto_118
    sub-float v18, v24, v22

    sub-float v19, v25, v23

    .line 978
    move/from16 v0, v25

    float-to-double v6, v0

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    sub-double/2addr v8, v12

    sub-double v16, v10, v12

    div-double v8, v8, v16

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    sub-double/2addr v6, v8

    double-to-float v6, v6

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->clampF(FFF)F

    move-result v6

    .line 979
    move/from16 v0, v25

    float-to-double v8, v0

    const/4 v7, 0x1

    aget-wide v16, v5, v7

    sub-double v16, v16, v12

    sub-double v26, v10, v12

    div-double v16, v16, v26

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v16, v16, v26

    sub-double v8, v8, v16

    double-to-float v5, v8

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->clampF(FFF)F

    move-result v5

    .line 980
    move/from16 v0, v22

    float-to-double v8, v0

    const/4 v7, 0x0

    aget-wide v16, v4, v7

    sub-double v16, v16, v20

    sub-double v26, v14, v20

    div-double v16, v16, v26

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v16, v16, v26

    add-double v8, v8, v16

    double-to-float v7, v8

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v7, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->clampF(FFF)F

    move-result v7

    .line 981
    move/from16 v0, v22

    float-to-double v8, v0

    const/16 v16, 0x1

    aget-wide v16, v4, v16

    sub-double v16, v16, v20

    sub-double v26, v14, v20

    div-double v16, v16, v26

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v16, v16, v26

    add-double v8, v8, v16

    double-to-float v4, v8

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->clampF(FFF)F

    move-result v4

    .line 982
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v9, -0xdd3aa2

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 984
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v8, v0, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 985
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    const/high16 v16, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v9, -0xdd3aa2

    const/16 v16, 0x28

    move/from16 v0, v16

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 987
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v4, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 988
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v9, -0xa61f5

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 990
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v8, v0, v5, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 991
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v9, -0x10bbbc

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 994
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    const/high16 v16, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v16, 0x28

    move/from16 v0, v16

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v8, v0, v1, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 997
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v9, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 999
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1001
    const/high16 v8, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    .line 1002
    sub-float v9, v25, v6

    cmpl-float v9, v9, v8

    if-lez v9, :cond_461

    sub-float v4, v24, v4

    const/high16 v9, 0x428c0000    # 70.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_461

    .line 1003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1004
    const-string v4, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u0435\u043d"

    const-string v9, "athletic"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    sub-float v9, v24, v9

    const/high16 v16, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v16

    sub-float v16, v25, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v4, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1009
    :cond_315
    :goto_315
    sub-float v4, v6, v5

    cmpl-float v4, v4, v8

    if-lez v4, :cond_350

    .line 1010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v9, -0xa61f5

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1011
    const-string v4, "\u0438\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v9, "excess fat"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    sub-float v9, v24, v9

    const/high16 v16, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v16

    sub-float v6, v6, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v9, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1013
    :cond_350
    sub-float v4, v5, v23

    cmpl-float v4, v4, v8

    if-lez v4, :cond_385

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v5, -0x10bbbc

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1015
    const-string v4, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v5, "obese"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v5, v24, v5

    const/high16 v6, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    add-float v6, v6, v23

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1017
    :cond_385
    sub-float v4, v7, v22

    const/high16 v5, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3ca

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1020
    const-string v4, "\u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v5, "low muscle"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    add-float v5, v5, v22

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    sub-float v6, v25, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1022
    :cond_3ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1025
    const-string v4, "\u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2192"

    const-string v5, "muscle \u2192"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-float v5, v22, v24

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1028
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1029
    const/4 v4, 0x0

    .line 1030
    const/4 v7, 0x0

    move/from16 v17, v7

    :goto_422
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5c4

    .line 1031
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v8, v7, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_440

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    aget-wide v8, v7, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_49f

    .line 1030
    :cond_440
    :goto_440
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v7

    goto :goto_422

    .line 965
    :cond_445
    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    goto/16 :goto_9e

    :cond_449
    const-wide/high16 v14, 0x4037000000000000L    # 23.0

    goto/16 :goto_a6

    :cond_44d
    const-wide/high16 v16, 0x4032000000000000L    # 18.0

    goto/16 :goto_b2

    .line 974
    :cond_451
    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_5ea

    goto/16 :goto_10c

    .line 975
    :cond_459
    const/4 v5, 0x2

    new-array v5, v5, [D

    fill-array-data v5, :array_5fa

    goto/16 :goto_118

    .line 1005
    :cond_461
    sub-float v4, v25, v6

    cmpl-float v4, v4, v8

    if-lez v4, :cond_315

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1007
    const-string v4, "\u043d\u043e\u0440\u043c\u0430"

    const-string v9, "normal"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v9, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    sub-float v9, v24, v9

    const/high16 v16, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v16

    sub-float v16, v25, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v4, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_315

    .line 1034
    :cond_49f
    move/from16 v0, v22

    float-to-double v8, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v26, v7, v17

    move-wide/from16 v0, v26

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v0, v20

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    sub-double v26, v26, v20

    sub-double v28, v14, v20

    div-double v26, v26, v28

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v8, v8, v26

    double-to-float v7, v8

    .line 1035
    move/from16 v0, v25

    float-to-double v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    move-object/from16 v16, v0

    aget-wide v26, v16, v17

    move-wide/from16 v0, v26

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    sub-double v26, v26, v12

    sub-double v28, v10, v12

    div-double v26, v26, v28

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v8, v8, v26

    double-to-float v8, v8

    .line 1036
    const/4 v9, 0x1

    move/from16 v0, v23

    if-ne v0, v9, :cond_599

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v16, v9

    .line 1037
    :goto_4f6
    if-eqz v4, :cond_531

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v24, 0x43200000    # 160.0f

    mul-float v24, v24, v16

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1043
    :cond_531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1044
    add-int/lit8 v4, v23, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_5b3

    const/4 v4, 0x1

    .line 1045
    :goto_541
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    if-eqz v4, :cond_5b5

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_549
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    if-eqz v4, :cond_5c1

    const/high16 v5, 0x40e00000    # 7.0f

    :goto_550
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1047
    if-eqz v4, :cond_594

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v5, -0xc74208

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1051
    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1055
    :cond_594
    const/4 v4, 0x1

    move v6, v8

    move v5, v7

    goto/16 :goto_440

    .line 1036
    :cond_599
    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v16, 0x3f400000    # 0.75f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v16, v16, v24

    add-int/lit8 v24, v23, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v16, v16, v24

    add-float v9, v9, v16

    move/from16 v16, v9

    goto/16 :goto_4f6

    .line 1044
    :cond_5b3
    const/4 v4, 0x0

    goto :goto_541

    .line 1045
    :cond_5b5
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v9, 0x43480000    # 200.0f

    mul-float v9, v9, v16

    float-to-int v9, v9

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    goto :goto_549

    .line 1046
    :cond_5c1
    const/high16 v5, 0x40600000    # 3.5f

    goto :goto_550

    .line 1057
    :cond_5c4
    return-void

    :cond_5c5
    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    move-wide/from16 v20, v4

    goto/16 :goto_100

    .line 974
    nop

    :array_5ce
    .array-data 8
        0x4031000000000000L    # 17.0
        0x4034000000000000L    # 20.0
        0x4037000000000000L    # 23.0
    .end array-data

    .line 975
    :array_5de
    .array-data 8
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
    .end array-data

    .line 974
    :array_5ea
    .array-data 8
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4033800000000000L    # 19.5
    .end array-data

    .line 975
    :array_5fa
    .array-data 8
        0x4022000000000000L    # 9.0
        0x402a000000000000L    # 13.0
    .end array-data
.end method

.method public set(Z[D[D)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 946
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    .line 947
    if-eqz p2, :cond_f

    :goto_5
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    .line 948
    if-eqz p3, :cond_12

    :goto_9
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    .line 949
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->invalidate()V

    .line 950
    return-void

    .line 947
    :cond_f
    new-array p2, v0, [D

    goto :goto_5

    .line 948
    :cond_12
    new-array p3, v0, [D

    goto :goto_9
.end method
