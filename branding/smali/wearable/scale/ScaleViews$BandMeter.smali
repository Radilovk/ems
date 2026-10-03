.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BandMeter"
.end annotation


# instance fields
.field ffmi:D

.field ffmiBefore:D

.field fmi:D

.field fmiBefore:D

.field grow:F

.field male:Z

.field final p:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 940
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 933
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    .line 934
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->r:Landroid/graphics/RectF;

    .line 935
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    .line 936
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmi:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmi:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmiBefore:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmiBefore:D

    .line 937
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->grow:F

    .line 941
    return-void
.end method

.method static band(D[D)I
    .registers 7

    .prologue
    .line 972
    const/4 v0, 0x1

    :goto_1
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_12

    .line 973
    aget-wide v2, p2, v0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_f

    .line 974
    add-int/lit8 v0, v0, -0x1

    .line 977
    :goto_e
    return v0

    .line 972
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 977
    :cond_12
    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_e
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .prologue
    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 959
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    if-eqz v1, :cond_c3

    const/4 v1, 0x5

    new-array v6, v1, [D

    fill-array-data v6, :array_d4

    .line 960
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    if-eqz v1, :cond_cb

    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_ec

    move-object v14, v1

    .line 961
    :goto_22
    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043c\u0430\u043b\u043a\u043e"

    const-string v3, "low"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "\u043d\u043e\u0440\u043c\u0430"

    const-string v3, "normal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u0438"

    const-string v3, "athletic"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string v2, "\u043c\u043d\u043e\u0433\u043e"

    const-string v3, "very high"

    .line 962
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 963
    const/4 v1, 0x4

    new-array v15, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438"

    const-string v3, "very low"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x1

    const-string v2, "\u043d\u043e\u0440\u043c\u0430"

    const-string v3, "normal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x2

    const-string v2, "\u0438\u0437\u043b\u0438\u0448\u043d\u0438"

    const-string v3, "excess"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x3

    const-string v2, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "obese"

    .line 964
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    .line 965
    const/4 v1, 0x4

    new-array v8, v1, [I

    fill-array-data v8, :array_104

    .line 966
    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_110

    .line 967
    const/4 v3, 0x0

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmi:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmiBefore:D

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->row(Landroid/graphics/Canvas;FFLjava/lang/String;[D[Ljava/lang/String;[IDD)V

    .line 968
    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmi:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmiBefore:D

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v5, v4

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-virtual/range {v2 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->row(Landroid/graphics/Canvas;FFLjava/lang/String;[D[Ljava/lang/String;[IDD)V

    .line 969
    return-void

    .line 959
    :cond_c3
    const/4 v1, 0x5

    new-array v6, v1, [D

    fill-array-data v6, :array_11c

    goto/16 :goto_15

    .line 960
    :cond_cb
    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_134

    move-object v14, v1

    goto/16 :goto_22

    .line 959
    :array_d4
    .array-data 8
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4034000000000000L    # 20.0
        0x4037000000000000L    # 23.0
        0x403a000000000000L    # 26.0
    .end array-data

    .line 960
    :array_ec
    .array-data 8
        0x0
        0x3ff8000000000000L    # 1.5
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        0x402a000000000000L    # 13.0
    .end array-data

    .line 965
    :array_104
    .array-data 4
        -0xa61f5
        -0x7b33ea
        -0xdd3aa2
        -0xf9492c
    .end array-data

    .line 966
    :array_110
    .array-data 4
        -0xc74208
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 959
    :array_11c
    .array-data 8
        0x4026000000000000L    # 11.0
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4033800000000000L    # 19.5
        0x4036000000000000L    # 22.0
    .end array-data

    .line 960
    :array_134
    .array-data 8
        0x0
        0x4008000000000000L    # 3.0
        0x4022000000000000L    # 9.0
        0x402a000000000000L    # 13.0
        0x4032000000000000L    # 18.0
    .end array-data
.end method

.method row(Landroid/graphics/Canvas;FFLjava/lang/String;[D[Ljava/lang/String;[IDD)V
    .registers 32

    .prologue
    .line 991
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v5, v4, v5

    sub-float v10, v5, v9

    .line 992
    move-object/from16 v0, p5

    array-length v4, v0

    add-int/lit8 v7, v4, -0x1

    .line 993
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_150

    const/4 v4, -0x1

    .line 995
    :goto_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 997
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v8, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 998
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 999
    const/high16 v6, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    add-float v6, v6, p2

    .line 1000
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v9, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1001
    if-ltz v4, :cond_a2

    .line 1002
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v11, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    aget v11, p7, v4

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1006
    aget-object v8, p6, v4

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1008
    :cond_a2
    const/high16 v5, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    add-float v17, p2, v5

    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v18

    .line 1009
    const/4 v5, 0x0

    move v6, v5

    :goto_b6
    if-ge v6, v7, :cond_17d

    .line 1010
    int-to-float v5, v6

    mul-float/2addr v5, v10

    int-to-float v8, v7

    div-float/2addr v5, v8

    add-float v8, v9, v5

    if-nez v6, :cond_15a

    const/4 v5, 0x0

    :goto_c1
    add-float/2addr v8, v5

    .line 1011
    add-int/lit8 v5, v6, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v10

    int-to-float v11, v7

    div-float/2addr v5, v11

    add-float v11, v9, v5

    add-int/lit8 v5, v7, -0x1

    if-ne v6, v5, :cond_164

    const/4 v5, 0x0

    :goto_cf
    sub-float/2addr v11, v5

    .line 1012
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->r:Landroid/graphics/RectF;

    add-float v12, v17, v18

    move/from16 v0, v17

    invoke-virtual {v5, v8, v0, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ne v6, v4, :cond_16e

    aget v5, p7, v6

    :goto_ec
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->r:Landroid/graphics/RectF;

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v18, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v18, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ne v6, v4, :cond_178

    const/4 v5, 0x1

    :goto_10b
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v12, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ne v6, v4, :cond_17a

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_12e
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1020
    aget-object v5, p6, v6

    add-float/2addr v8, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    add-float v11, v17, v18

    const/high16 v12, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1009
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_b6

    .line 993
    :cond_150
    move-wide/from16 v0, p8

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->band(D[D)I

    move-result v4

    goto/16 :goto_25

    .line 1010
    :cond_15a
    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    goto/16 :goto_c1

    .line 1011
    :cond_164
    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    goto/16 :goto_cf

    .line 1014
    :cond_16e
    aget v5, p7, v6

    const/16 v13, 0x46

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    goto/16 :goto_ec

    .line 1016
    :cond_178
    const/4 v5, 0x0

    goto :goto_10b

    .line 1019
    :cond_17a
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_12e

    .line 1022
    :cond_17d
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_1cd

    move-object/from16 v5, p0

    move-wide/from16 v6, p10

    move-object/from16 v8, p5

    .line 1023
    invoke-virtual/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->xOf(D[DFF)F

    move-result v12

    .line 1024
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x96

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1026
    const/high16 v5, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v13, v17, v5

    add-float v5, v17, v18

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    add-float v15, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v14, v12

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1028
    :cond_1cd
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_253

    move-object/from16 v5, p0

    move-wide/from16 v6, p8

    move-object/from16 v8, p5

    .line 1029
    invoke-virtual/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->xOf(D[DFF)F

    move-result v11

    .line 1030
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_254

    .line 1031
    :goto_1e3
    sub-float v5, v11, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->grow:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    .line 1032
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    add-float v6, v6, v17

    .line 1033
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v8, 0x66000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1035
    const/high16 v7, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    add-float/2addr v7, v6

    const/high16 v8, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1037
    const/high16 v7, 0x41180000    # 9.5f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ltz v4, :cond_25f

    aget v4, p7, v4

    :goto_23f
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1039
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1041
    :cond_253
    return-void

    :cond_254
    move-object/from16 v5, p0

    move-wide/from16 v6, p10

    move-object/from16 v8, p5

    .line 1030
    invoke-virtual/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->xOf(D[DFF)F

    move-result v9

    goto :goto_1e3

    .line 1038
    :cond_25f
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_23f
.end method

.method public set(ZDDDD)V
    .registers 14

    .prologue
    .line 944
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    .line 945
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmi:D

    .line 946
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmi:D

    .line 947
    iput-wide p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmiBefore:D

    .line 948
    iput-wide p8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmiBefore:D

    .line 949
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 950
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 951
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 952
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 953
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 954
    return-void

    .line 949
    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method xOf(D[DFF)F
    .registers 15

    .prologue
    .line 981
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 983
    const/4 v1, 0x0

    aget-wide v2, p3, v1

    aget-wide v4, p3, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 984
    invoke-static {v2, v3, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->band(D[D)I

    move-result v1

    .line 985
    aget-wide v4, p3, v1

    sub-double/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, p3, v4

    aget-wide v6, p3, v1

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 986
    int-to-double v4, v1

    add-double/2addr v2, v4

    int-to-double v0, v0

    div-double v0, v2, v0

    float-to-double v2, p5

    mul-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v0, p4

    return v0
.end method
