.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# instance fields
.field final area:Landroid/graphics/Path;

.field fat:[D

.field grow:F

.field final line:Landroid/graphics/Path;

.field muscle:[D

.field final p:Landroid/graphics/Paint;

.field t:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1085
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1076
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    .line 1077
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    .line 1078
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    .line 1079
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    .line 1080
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    .line 1081
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    .line 1082
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    .line 1086
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 30

    .prologue
    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1103
    const/high16 v2, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    const/high16 v2, 0x42c00000    # 96.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v13

    const/high16 v4, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    sub-float v14, v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    sub-float v15, v2, v4

    .line 1105
    const/4 v2, 0x2

    move/from16 v0, v23

    if-lt v0, v2, :cond_56

    const/4 v2, 0x0

    cmpg-float v2, v14, v2

    if-lez v2, :cond_56

    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_99

    .line 1106
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1109
    const-string v2, "\u043f\u0440\u043e\u043c\u044f\u043d\u0430\u0442\u0430 \u0438\u0434\u0432\u0430 \u043e\u0442 \u0432\u0442\u043e\u0440\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435"

    const-string v3, "the change starts with the second measurement"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    .line 1109
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1155
    :goto_98
    return-void

    .line 1113
    :cond_99
    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v24, v0

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v25, v0

    .line 1114
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1115
    const/4 v2, 0x0

    :goto_aa
    move/from16 v0, v23

    if-ge v2, v0, :cond_e9

    .line 1116
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v24, v2

    .line 1117
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v25, v2

    .line 1118
    aget-wide v8, v24, v2

    aget-wide v10, v25, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 1119
    aget-wide v8, v24, v2

    aget-wide v10, v25, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1115
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 1121
    :cond_e9
    sub-double v20, v4, v6

    .line 1122
    const-wide v8, 0x3fbeb851eb851eb8L    # 0.12

    mul-double v8, v8, v20

    sub-double v16, v6, v8

    .line 1123
    const-wide v6, 0x3fbeb851eb851eb8L    # 0.12

    mul-double v6, v6, v20

    add-double v18, v4, v6

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    const/4 v4, 0x0

    aget-wide v8, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    add-int/lit8 v4, v23, -0x1

    aget-wide v10, v2, v4

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1128
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpl-double v2, v20, v4

    if-lez v2, :cond_147

    const/4 v2, 0x2

    move v12, v2

    .line 1129
    :goto_12c
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    move/from16 v20, v2

    :goto_133
    move/from16 v0, v20

    int-to-double v4, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_22f

    .line 1130
    rem-int v2, v20, v12

    if-eqz v2, :cond_14a

    .line 1129
    :goto_142
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto :goto_133

    .line 1128
    :cond_147
    const/4 v2, 0x1

    move v12, v2

    goto :goto_12c

    .line 1133
    :cond_14a
    float-to-double v4, v13

    move/from16 v0, v20

    int-to-double v6, v0

    sub-double v6, v18, v6

    sub-double v26, v18, v16

    div-double v6, v6, v26

    float-to-double v0, v15

    move-wide/from16 v26, v0

    mul-double v6, v6, v26

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v20, :cond_201

    const v2, 0x3fb33333    # 1.4f

    :goto_16d
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v20, :cond_206

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x82

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    :goto_184
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-nez v20, :cond_210

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v21

    aput v21, v6, v7

    const/4 v7, 0x1

    const/high16 v21, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v21

    aput v21, v6, v7

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    :goto_1b0
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1138
    add-float v5, v3, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1142
    if-nez v20, :cond_212

    const-string v2, "\u0441\u0442\u0430\u0440\u0442"

    const-string v5, "start"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1e3
    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float v5, v3, v5

    const/high16 v6, 0x40800000    # 4.0f

    .line 1143
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    .line 1142
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_142

    .line 1135
    :cond_201
    const v2, 0x3f333333    # 0.7f

    goto/16 :goto_16d

    .line 1136
    :cond_206
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v6, 0x2d

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_184

    .line 1137
    :cond_210
    const/4 v2, 0x0

    goto :goto_1b0

    .line 1142
    :cond_212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v20, :cond_22c

    const-string v2, "+"

    :goto_21b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e3

    :cond_22c
    const-string v2, "\u2212"

    goto :goto_21b

    .line 1145
    :cond_22f
    float-to-double v4, v13

    sub-double v6, v18, v16

    div-double v6, v18, v6

    float-to-double v0, v15

    move-wide/from16 v20, v0

    mul-double v6, v6, v20

    add-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v20, v0

    .line 1146
    const v21, -0xdd3aa2

    const/16 v22, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v24

    move/from16 v7, v23

    move v12, v3

    invoke-virtual/range {v4 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->series(Landroid/graphics/Canvas;[DIJJFFFFDDFIZ)V

    .line 1147
    const v21, -0xa61f5

    const/16 v22, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v25

    move/from16 v7, v23

    move v12, v3

    invoke-virtual/range {v4 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->series(Landroid/graphics/Canvas;[DIJJFFFFDDFIZ)V

    .line 1148
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "d.MM"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1152
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1154
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    add-float/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_98
.end method

.method series(Landroid/graphics/Canvas;[DIJJFFFFDDFIZ)V
    .registers 33

    .prologue
    .line 1159
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1160
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1161
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1162
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    move/from16 v0, p3

    if-ge v3, v0, :cond_5c

    .line 1163
    cmp-long v2, p6, p4

    if-lez v2, :cond_56

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    aget-wide v4, v2, v3

    sub-long v4, v4, p4

    long-to-double v4, v4

    sub-long v6, p6, p4

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    :goto_22
    mul-float v2, v2, p10

    add-float v5, p8, v2

    .line 1164
    move/from16 v0, p9

    float-to-double v6, v0

    aget-wide v8, p2, v3

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    float-to-double v10, v2

    mul-double/2addr v8, v10

    sub-double v8, p14, v8

    sub-double v10, p14, p12

    div-double/2addr v8, v10

    move/from16 v0, p11

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 1165
    if-nez v3, :cond_48

    .line 1166
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1167
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    move/from16 v0, p16

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1169
    :cond_48
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1170
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1162
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    .line 1163
    :cond_56
    int-to-float v2, v3

    add-int/lit8 v4, p3, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    goto :goto_22

    .line 1174
    :cond_5c
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    move/from16 v0, p16

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1175
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1176
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1177
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/16 v3, 0x2e

    move/from16 v0, p17

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1178
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->area:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1179
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1180
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1181
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1182
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1183
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1184
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->line:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1185
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1186
    const/4 v2, 0x0

    move v3, v2

    :goto_ba
    move/from16 v0, p3

    if-ge v3, v0, :cond_122

    .line 1187
    cmp-long v2, p6, p4

    if-lez v2, :cond_116

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    aget-wide v6, v2, v3

    sub-long v6, v6, p4

    long-to-double v6, v6

    sub-long v8, p6, p4

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-float v2, v6

    :goto_ce
    mul-float v2, v2, p10

    add-float v6, p8, v2

    .line 1188
    move/from16 v0, p9

    float-to-double v8, v0

    aget-wide v10, p2, v3

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    float-to-double v12, v2

    mul-double/2addr v10, v12

    sub-double v10, p14, v10

    sub-double v12, p14, p12

    div-double/2addr v10, v12

    move/from16 v0, p11

    float-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 1189
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1190
    add-int/lit8 v2, p3, -0x1

    if-ne v3, v2, :cond_11c

    const/high16 v2, 0x40e00000    # 7.0f

    :goto_f3
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1191
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    add-int/lit8 v2, p3, -0x1

    if-ne v3, v2, :cond_11f

    const/high16 v2, 0x40a00000    # 5.0f

    :goto_109
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1186
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_ba

    .line 1187
    :cond_116
    int-to-float v2, v3

    add-int/lit8 v6, p3, -0x1

    int-to-float v6, v6

    div-float/2addr v2, v6

    goto :goto_ce

    .line 1190
    :cond_11c
    const/high16 v2, 0x40900000    # 4.5f

    goto :goto_f3

    .line 1192
    :cond_11f
    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_109

    .line 1194
    :cond_122
    add-int/lit8 v2, p3, -0x1

    aget-wide v6, p2, v2

    .line 1195
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v8

    if-ltz v2, :cond_13e

    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_1e4

    const/4 v2, 0x1

    :goto_13a
    move/from16 v0, p18

    if-ne v2, v0, :cond_1e7

    :cond_13e
    const/4 v2, 0x1

    .line 1196
    :goto_13f
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1197
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1198
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1199
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    move/from16 v0, p17

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-ltz v3, :cond_1ea

    const-string v3, "+"

    :goto_16b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \u043a\u0433"

    const-string v7, " kg"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1201
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    add-float/2addr v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v7

    add-float/2addr v7, v4

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1202
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1203
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1204
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    if-eqz v2, :cond_1ee

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_1c3
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1205
    if-eqz p18, :cond_1f1

    const-string v2, "\u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v3, "muscle"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1d0
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float/2addr v3, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1206
    return-void

    .line 1195
    :cond_1e4
    const/4 v2, 0x0

    goto/16 :goto_13a

    :cond_1e7
    const/4 v2, 0x0

    goto/16 :goto_13f

    .line 1200
    :cond_1ea
    const-string v3, "\u2212"

    goto/16 :goto_16b

    .line 1204
    :cond_1ee
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1c3

    .line 1205
    :cond_1f1
    const-string v2, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "fat"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d0
.end method

.method public set([D[D[J)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1090
    if-eqz p1, :cond_32

    :goto_3
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->muscle:[D

    .line 1091
    if-eqz p2, :cond_35

    :goto_7
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->fat:[D

    .line 1092
    if-eqz p3, :cond_38

    :goto_b
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->t:[J

    .line 1093
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1094
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1095
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1096
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1097
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1098
    return-void

    .line 1090
    :cond_32
    new-array p1, v0, [D

    goto :goto_3

    .line 1091
    :cond_35
    new-array p2, v0, [D

    goto :goto_7

    .line 1092
    :cond_38
    new-array p3, v0, [J

    goto :goto_b

    .line 1093
    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
