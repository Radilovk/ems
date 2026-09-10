.class public Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;
.super Landroid/view/TextureView;
.source "JZResizeTextureView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JZResizeTextureView"


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 21
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 25
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 26
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 21
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 31
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 32
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    const-string v15, "JZResizeTextureView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onMeasure  ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getRotation()F

    move-result v15

    float-to-int v11, v15

    .line 55
    .local v11, "viewRotation":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 56
    .local v10, "videoWidth":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 59
    .local v9, "videoHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 60
    .local v5, "parentHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 61
    .local v6, "parentWidth":I
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    .line 62
    sget v15, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 63
    const/16 v15, 0x5a

    if-eq v11, v15, :cond_0

    const/16 v15, 0x10e

    if-ne v11, v15, :cond_1

    .line 64
    :cond_0
    move v8, v6

    .line 65
    .local v8, "tempSize":I
    move v6, v5

    .line 66
    move v5, v8

    .line 69
    .end local v8    # "tempSize":I
    :cond_1
    mul-int v15, v10, v5

    div-int v9, v15, v6

    .line 74
    :cond_2
    const/16 v15, 0x5a

    if-eq v11, v15, :cond_3

    const/16 v15, 0x10e

    if-ne v11, v15, :cond_4

    .line 75
    :cond_3
    move/from16 v7, p1

    .line 76
    .local v7, "tempMeasureSpec":I
    move/from16 p1, p2

    .line 77
    move/from16 p2, v7

    .line 80
    .end local v7    # "tempMeasureSpec":I
    :cond_4
    move/from16 v0, p1

    invoke-static {v10, v0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getDefaultSize(II)I

    move-result v12

    .line 81
    .local v12, "width":I
    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getDefaultSize(II)I

    move-result v2

    .line 82
    .local v2, "height":I
    if-lez v10, :cond_5

    if-lez v9, :cond_5

    .line 84
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 85
    .local v13, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 86
    .local v14, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 87
    .local v3, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 89
    .local v4, "heightSpecSize":I
    const-string v15, "JZResizeTextureView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "widthMeasureSpec  ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v15, "JZResizeTextureView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "heightMeasureSpec ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v13, v15, :cond_8

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_8

    .line 94
    move v12, v14

    .line 95
    move v2, v4

    .line 97
    mul-int v15, v10, v2

    mul-int v16, v12, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 98
    mul-int v15, v2, v10

    div-int v12, v15, v9

    .line 138
    .end local v3    # "heightSpecMode":I
    .end local v4    # "heightSpecSize":I
    .end local v13    # "widthSpecMode":I
    .end local v14    # "widthSpecSize":I
    :cond_5
    :goto_0
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    .line 139
    sget v15, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 141
    move v2, v9

    .line 142
    move v12, v10

    .line 159
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setMeasuredDimension(II)V

    .line 160
    return-void

    .line 99
    .restart local v3    # "heightSpecMode":I
    .restart local v4    # "heightSpecSize":I
    .restart local v13    # "widthSpecMode":I
    .restart local v14    # "widthSpecSize":I
    :cond_7
    mul-int v15, v10, v2

    mul-int v16, v12, v9

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 100
    mul-int v15, v12, v9

    div-int v2, v15, v10

    goto :goto_0

    .line 102
    :cond_8
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v13, v15, :cond_9

    .line 104
    move v12, v14

    .line 105
    mul-int v15, v12, v9

    div-int v2, v15, v10

    .line 106
    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_5

    if-le v2, v4, :cond_5

    .line 108
    move v2, v4

    .line 109
    mul-int v15, v2, v10

    div-int v12, v15, v9

    goto :goto_0

    .line 111
    :cond_9
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_a

    .line 113
    move v2, v4

    .line 114
    mul-int v15, v2, v10

    div-int v12, v15, v9

    .line 115
    const/high16 v15, -0x80000000

    if-ne v13, v15, :cond_5

    if-le v12, v14, :cond_5

    .line 117
    move v12, v14

    .line 118
    mul-int v15, v12, v9

    div-int v2, v15, v10

    goto :goto_0

    .line 122
    :cond_a
    move v12, v10

    .line 123
    move v2, v9

    .line 124
    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_b

    if-le v2, v4, :cond_b

    .line 126
    move v2, v4

    .line 127
    mul-int v15, v2, v10

    div-int v12, v15, v9

    .line 129
    :cond_b
    const/high16 v15, -0x80000000

    if-ne v13, v15, :cond_5

    if-le v12, v14, :cond_5

    .line 131
    move v12, v14

    .line 132
    mul-int v15, v12, v9

    div-int v2, v15, v10

    goto :goto_0

    .line 143
    .end local v3    # "heightSpecMode":I
    .end local v4    # "heightSpecSize":I
    .end local v13    # "widthSpecMode":I
    .end local v14    # "widthSpecSize":I
    :cond_c
    sget v15, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 144
    const/16 v15, 0x5a

    if-eq v11, v15, :cond_d

    const/16 v15, 0x10e

    if-ne v11, v15, :cond_e

    .line 145
    :cond_d
    move v8, v6

    .line 146
    .restart local v8    # "tempSize":I
    move v6, v5

    .line 147
    move v5, v8

    .line 150
    .end local v8    # "tempSize":I
    :cond_e
    int-to-double v0, v9

    move-wide/from16 v16, v0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    int-to-double v0, v5

    move-wide/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    cmpl-double v15, v16, v18

    if-lez v15, :cond_f

    .line 151
    int-to-double v0, v6

    move-wide/from16 v16, v0

    int-to-double v0, v12

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    .line 152
    move v12, v6

    goto/16 :goto_1

    .line 153
    :cond_f
    int-to-double v0, v9

    move-wide/from16 v16, v0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    int-to-double v0, v5

    move-wide/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    cmpg-double v15, v16, v18

    if-gez v15, :cond_6

    .line 154
    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    int-to-double v0, v12

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v12, v0

    .line 155
    move v2, v5

    goto/16 :goto_1
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->requestLayout()V

    .line 49
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "currentVideoWidth"    # I
    .param p2, "currentVideoHeight"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    if-eq v0, p2, :cond_1

    .line 37
    :cond_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 38
    iput p2, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 39
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->requestLayout()V

    .line 41
    :cond_1
    return-void
.end method
