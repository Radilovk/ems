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

    .line 1091
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1084
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    .line 1085
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->r:Landroid/graphics/RectF;

    .line 1086
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    .line 1087
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmi:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmi:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmiBefore:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmiBefore:D

    .line 1088
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->grow:F

    .line 1092
    return-void
.end method

.method static band(D[D)I
    .registers 7

    .prologue
    .line 1123
    const/4 v0, 0x1

    :goto_1
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_12

    .line 1124
    aget-wide v2, p2, v0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_f

    .line 1125
    add-int/lit8 v0, v0, -0x1

    .line 1128
    :goto_e
    return v0

    .line 1123
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    :cond_12
    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_e
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .prologue
    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 1110
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    if-eqz v1, :cond_c3

    const/4 v1, 0x5

    new-array v6, v1, [D

    fill-array-data v6, :array_d4

    .line 1111
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    if-eqz v1, :cond_cb

    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_ec

    move-object v14, v1

    .line 1112
    :goto_22
    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043d\u0438\u0441\u043a\u0430"

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

    const-string v2, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u0430"

    const-string v3, "athletic"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string v2, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430"

    const-string v3, "very high"

    .line 1113
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1114
    const/4 v1, 0x4

    new-array v15, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043d\u0438\u0441\u043a\u0438"

    const-string v3, "low"

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

    const-string v2, "\u043f\u043e\u0432\u0438\u0448\u0435\u043d\u0438"

    const-string v3, "elevated"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x3

    const-string v2, "\u0432\u0438\u0441\u043e\u043a\u0438"

    const-string v3, "high"

    .line 1115
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    .line 1116
    const/4 v1, 0x4

    new-array v8, v1, [I

    fill-array-data v8, :array_104

    .line 1117
    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_110

    .line 1118
    const/4 v3, 0x0

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v2, "Muscle mass"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmi:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmiBefore:D

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->row(Landroid/graphics/Canvas;FFLjava/lang/String;[D[Ljava/lang/String;[IDD)V

    .line 1119
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

    .line 1120
    return-void

    .line 1110
    :cond_c3
    const/4 v1, 0x5

    new-array v6, v1, [D

    fill-array-data v6, :array_11c

    goto/16 :goto_15

    .line 1111
    :cond_cb
    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_134

    move-object v14, v1

    goto/16 :goto_22

    .line 1110
    :array_d4
    .array-data 8
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4034000000000000L    # 20.0
        0x4037000000000000L    # 23.0
        0x403a000000000000L    # 26.0
    .end array-data

    .line 1111
    :array_ec
    .array-data 8
        0x0
        0x3ff8000000000000L    # 1.5
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        0x402a000000000000L    # 13.0
    .end array-data

    .line 1116
    :array_104
    .array-data 4
        -0xa61f5
        -0x7b33ea
        -0xdd3aa2
        -0xf9492c
    .end array-data

    .line 1117
    :array_110
    .array-data 4
        -0xc74208
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 1110
    :array_11c
    .array-data 8
        0x4026000000000000L    # 11.0
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4033800000000000L    # 19.5
        0x4036000000000000L    # 22.0
    .end array-data

    .line 1111
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
    .line 1142
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v11, v4, v5

    sub-float v16, v11, v7

    .line 1143
    move-object/from16 v0, p5

    array-length v4, v0

    add-int/lit8 v17, v4, -0x1

    .line 1144
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_171

    const/4 v4, -0x1

    move v15, v4

    .line 1146
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1150
    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float v8, p2, v4

    .line 1151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1152
    if-ltz v15, :cond_ac

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    aget v5, p7, v15

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    aget-object v10, p6, v15

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float v12, v8, v4

    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v8, p1

    move-object/from16 v14, p0

    invoke-static/range {v8 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1159
    :cond_ac
    const/high16 v4, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float v6, p2, v4

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v18

    .line 1160
    const/4 v4, 0x0

    move v5, v4

    :goto_c0
    move/from16 v0, v17

    if-ge v5, v0, :cond_19f

    .line 1161
    int-to-float v4, v5

    mul-float v4, v4, v16

    move/from16 v0, v17

    int-to-float v8, v0

    div-float/2addr v4, v8

    add-float v8, v7, v4

    if-nez v5, :cond_17c

    const/4 v4, 0x0

    :goto_d0
    add-float/2addr v8, v4

    .line 1162
    add-int/lit8 v4, v5, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v16

    move/from16 v0, v17

    int-to-float v9, v0

    div-float/2addr v4, v9

    add-float v9, v7, v4

    add-int/lit8 v4, v17, -0x1

    if-ne v5, v4, :cond_186

    const/4 v4, 0x0

    :goto_e1
    sub-float v13, v9, v4

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->r:Landroid/graphics/RectF;

    add-float v9, v6, v18

    invoke-virtual {v4, v8, v6, v13, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ne v5, v15, :cond_190

    aget v4, p7, v5

    :goto_fd
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v18, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v18, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ne v5, v15, :cond_19a

    const/4 v4, 0x1

    :goto_11c
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v9, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ne v5, v15, :cond_19c

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_13f
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    aget-object v10, p6, v5

    add-float v4, v8, v13

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v4, v11

    add-float v4, v6, v18

    const/high16 v12, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v12

    add-float/2addr v12, v4

    sub-float v4, v13, v8

    const/high16 v8, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v8

    sub-float v13, v4, v8

    move-object/from16 v8, p1

    move-object/from16 v14, p0

    invoke-static/range {v8 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 1160
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_c0

    .line 1144
    :cond_171
    move-wide/from16 v0, p8

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->band(D[D)I

    move-result v4

    move v15, v4

    goto/16 :goto_26

    .line 1161
    :cond_17c
    const/high16 v4, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    goto/16 :goto_d0

    .line 1162
    :cond_186
    const/high16 v4, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    goto/16 :goto_e1

    .line 1165
    :cond_190
    aget v4, p7, v5

    const/16 v10, 0x46

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    goto/16 :goto_fd

    .line 1167
    :cond_19a
    const/4 v4, 0x0

    goto :goto_11c

    .line 1170
    :cond_19c
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_13f

    .line 1173
    :cond_19f
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1f0

    move-object/from16 v9, p0

    move-wide/from16 v10, p10

    move-object/from16 v12, p5

    move v13, v7

    move/from16 v14, v16

    .line 1174
    invoke-virtual/range {v9 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->xOf(D[DFF)F

    move-result v9

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v8, 0x96

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1177
    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    sub-float v10, v6, v4

    add-float v4, v6, v18

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    add-float v12, v4, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1179
    :cond_1f0
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_278

    move-object/from16 v9, p0

    move-wide/from16 v10, p8

    move-object/from16 v12, p5

    move v13, v7

    move/from16 v14, v16

    .line 1180
    invoke-virtual/range {v9 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->xOf(D[DFF)F

    move-result v4

    .line 1181
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_279

    .line 1182
    :goto_209
    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->grow:F

    mul-float/2addr v4, v5

    add-float v5, v7, v4

    .line 1183
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    add-float/2addr v6, v4

    .line 1184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    const/high16 v7, 0x66000000

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1186
    const/high16 v4, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v4, v6

    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1188
    const/high16 v4, 0x41180000    # 9.5f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    if-ltz v15, :cond_287

    aget v4, p7, v15

    :goto_264
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1190
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1192
    :cond_278
    return-void

    :cond_279
    move-object/from16 v9, p0

    move-wide/from16 v10, p10

    move-object/from16 v12, p5

    move v13, v7

    move/from16 v14, v16

    .line 1181
    invoke-virtual/range {v9 .. v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->xOf(D[DFF)F

    move-result v7

    goto :goto_209

    .line 1189
    :cond_287
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_264
.end method

.method public set(ZDDDD)V
    .registers 14

    .prologue
    .line 1095
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->male:Z

    .line 1096
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmi:D

    .line 1097
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmi:D

    .line 1098
    iput-wide p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->ffmiBefore:D

    .line 1099
    iput-wide p8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->fmiBefore:D

    .line 1100
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1101
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1102
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1103
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1104
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1105
    return-void

    .line 1100
    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method xOf(D[DFF)F
    .registers 15

    .prologue
    .line 1132
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 1134
    const/4 v1, 0x0

    aget-wide v2, p3, v1

    aget-wide v4, p3, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1135
    invoke-static {v2, v3, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->band(D[D)I

    move-result v1

    .line 1136
    aget-wide v4, p3, v1

    sub-double/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, p3, v4

    aget-wide v6, p3, v1

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 1137
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
