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

    .line 897
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 890
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    .line 891
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    .line 892
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    .line 893
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    .line 894
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    .line 898
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 34

    .prologue
    .line 909
    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v20

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v9, v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v21, v6, v7

    .line 910
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v6, :cond_354

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    move-wide v12, v6

    :goto_37
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v6, :cond_359

    const-wide/high16 v6, 0x403b000000000000L    # 27.0

    move-wide v14, v6

    :goto_40
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v6, :cond_35e

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    move-wide/from16 v16, v6

    .line 911
    :goto_4c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v6, :cond_364

    const/4 v6, 0x3

    new-array v6, v6, [D

    fill-array-data v6, :array_49c

    .line 912
    :goto_58
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    if-eqz v7, :cond_36c

    const/4 v7, 0x2

    new-array v7, v7, [D

    fill-array-data v7, :array_4ac

    .line 913
    :goto_64
    sub-float v24, v9, v20

    sub-float v25, v21, v8

    .line 915
    move/from16 v0, v21

    float-to-double v10, v0

    const/16 v18, 0x0

    aget-wide v18, v7, v18

    sub-double v18, v18, v22

    sub-double v26, v16, v22

    div-double v18, v18, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v18, v18, v26

    sub-double v10, v10, v18

    double-to-float v10, v10

    .line 916
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/4 v11, 0x1

    aget-wide v26, v7, v11

    sub-double v26, v26, v22

    sub-double v28, v16, v22

    div-double v26, v26, v28

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v18, v18, v26

    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 917
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/4 v11, 0x0

    aget-wide v26, v6, v11

    sub-double v26, v26, v12

    sub-double v28, v14, v12

    div-double v26, v26, v28

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v18, v18, v26

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 918
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v26, 0x1

    aget-wide v26, v6, v26

    sub-double v26, v26, v12

    sub-double v28, v14, v12

    div-double v26, v26, v28

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v18, v18, v26

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const v19, -0xdd3aa2

    const/16 v26, 0x22

    move/from16 v0, v19

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v10, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/high16 v19, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v19

    const/high16 v26, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const v19, -0xdd3aa2

    const/16 v26, 0x28

    move/from16 v0, v19

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v6, v10, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 925
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v18, -0xa61f5

    const/16 v19, 0x22

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v20

    invoke-virtual {v6, v0, v7, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 928
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v18, -0x10bbbc

    const/16 v19, 0x22

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v20

    invoke-virtual {v6, v0, v8, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 931
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    const/high16 v18, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v18, 0x28

    move/from16 v0, v18

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v8, v11, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 934
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 936
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 937
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 939
    const-string v6, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u0435\u043d"

    const-string v7, "athletic"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v7, v9, v7

    const/high16 v11, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    sub-float v11, v21, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v7, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v7, -0xa61f5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 941
    const-string v6, "\u0438\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v7, "excess fat"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v7, v9, v7

    const/high16 v11, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v7, -0x10bbbc

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    const-string v6, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v7, "obese"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    sub-float v7, v9, v7

    const/high16 v10, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v10

    add-float/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 946
    const-string v6, "\u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v7, "low muscle"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    add-float v7, v7, v20

    const/high16 v8, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    sub-float v8, v21, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 948
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 950
    const-string v6, "\u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2192"

    const-string v7, "muscle \u2192"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-float v7, v20, v9

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 953
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 954
    const/4 v6, 0x0

    .line 955
    const/4 v9, 0x0

    move/from16 v19, v9

    :goto_331
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_49b

    .line 956
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v10, v9, v19

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_34f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    aget-wide v10, v9, v19

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_374

    .line 955
    :cond_34f
    :goto_34f
    add-int/lit8 v9, v19, 0x1

    move/from16 v19, v9

    goto :goto_331

    .line 910
    :cond_354
    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    move-wide v12, v6

    goto/16 :goto_37

    :cond_359
    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    move-wide v14, v6

    goto/16 :goto_40

    :cond_35e
    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    move-wide/from16 v16, v6

    goto/16 :goto_4c

    .line 911
    :cond_364
    const/4 v6, 0x3

    new-array v6, v6, [D

    fill-array-data v6, :array_4b8

    goto/16 :goto_58

    .line 912
    :cond_36c
    const/4 v7, 0x2

    new-array v7, v7, [D

    fill-array-data v7, :array_4c8

    goto/16 :goto_64

    .line 959
    :cond_374
    move/from16 v0, v20

    float-to-double v10, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    aget-wide v28, v9, v19

    move-wide/from16 v0, v28

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    sub-double v28, v28, v12

    sub-double v30, v14, v12

    div-double v28, v28, v30

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v10, v10, v28

    double-to-float v9, v10

    .line 960
    move/from16 v0, v21

    float-to-double v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    move-object/from16 v18, v0

    aget-wide v28, v18, v19

    move-wide/from16 v0, v16

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v0, v22

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    sub-double v28, v28, v22

    sub-double v30, v16, v22

    div-double v28, v28, v30

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v10, v10, v28

    double-to-float v10, v10

    .line 961
    const/4 v11, 0x1

    move/from16 v0, v26

    if-ne v0, v11, :cond_470

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v18, v11

    .line 962
    :goto_3cd
    if-eqz v6, :cond_408

    .line 963
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v27, 0x43200000    # 160.0f

    mul-float v27, v27, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v11, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 966
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 968
    :cond_408
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 969
    add-int/lit8 v6, v26, -0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_48a

    const/4 v6, 0x1

    .line 970
    :goto_418
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    if-eqz v6, :cond_48c

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_420
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 971
    if-eqz v6, :cond_498

    const/high16 v7, 0x40e00000    # 7.0f

    :goto_427
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 972
    if-eqz v6, :cond_46b

    .line 973
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 975
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    const v7, -0xc74208

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 976
    const/high16 v6, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 980
    :cond_46b
    const/4 v6, 0x1

    move v8, v10

    move v7, v9

    goto/16 :goto_34f

    .line 961
    :cond_470
    const/high16 v11, 0x3e800000    # 0.25f

    const/high16 v18, 0x3f400000    # 0.75f

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v18, v18, v27

    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v18, v18, v27

    add-float v11, v11, v18

    move/from16 v18, v11

    goto/16 :goto_3cd

    .line 969
    :cond_48a
    const/4 v6, 0x0

    goto :goto_418

    .line 970
    :cond_48c
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v11, 0x43480000    # 200.0f

    mul-float v11, v11, v18

    float-to-int v11, v11

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    goto :goto_420

    .line 971
    :cond_498
    const/high16 v7, 0x40600000    # 3.5f

    goto :goto_427

    .line 982
    :cond_49b
    return-void

    .line 911
    :array_49c
    .array-data 8
        0x4031000000000000L    # 17.0
        0x4034000000000000L    # 20.0
        0x4037000000000000L    # 23.0
    .end array-data

    .line 912
    :array_4ac
    .array-data 8
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
    .end array-data

    .line 911
    :array_4b8
    .array-data 8
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4033800000000000L    # 19.5
    .end array-data

    .line 912
    :array_4c8
    .array-data 8
        0x4022000000000000L    # 9.0
        0x402a000000000000L    # 13.0
    .end array-data
.end method

.method public set(Z[D[D)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 901
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->male:Z

    .line 902
    if-eqz p2, :cond_f

    :goto_5
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->ffmi:[D

    .line 903
    if-eqz p3, :cond_12

    :goto_9
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->fmi:[D

    .line 904
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$TypeMap;->invalidate()V

    .line 905
    return-void

    .line 902
    :cond_f
    new-array p2, v0, [D

    goto :goto_5

    .line 903
    :cond_12
    new-array p3, v0, [D

    goto :goto_9
.end method
