.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Landroid/support/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:windowX"

    const-string v3, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 55
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .line 83
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 84
    .local v0, "view":Landroid/view/View;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 88
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 99
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 100
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 94
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 95
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 35
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v2, :cond_26

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_e

    .line 109
    :cond_0
    iget-object v5, v2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 110
    .local v5, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, v3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 111
    .local v6, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "android:changeBounds:parent"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 112
    .local v8, "startParent":Landroid/view/ViewGroup;
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 113
    .local v7, "endParent":Landroid/view/ViewGroup;
    if-eqz v8, :cond_25

    if-nez v7, :cond_1

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    const/4 v1, 0x0

    goto/16 :goto_d

    .line 116
    :cond_1
    iget-object v9, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 117
    .local v9, "view":Landroid/view/View;
    if-eq v8, v7, :cond_3

    .line 118
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v13

    if-ne v12, v13, :cond_2

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v12, 0x1

    .line 123
    .local v12, "parentsEqual":Z
    :goto_1
    iget-boolean v13, v0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v13, :cond_7

    if-eqz v12, :cond_4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    goto/16 :goto_3

    .line 303
    :cond_4
    iget-object v13, v2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "android:changeBounds:windowX"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 304
    .local v13, "startX":I
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v14, "android:changeBounds:windowY"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 305
    .local v4, "startY":I
    iget-object v11, v3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 306
    .local v11, "endX":I
    iget-object v15, v3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 308
    .local v14, "endY":I
    if-ne v13, v11, :cond_6

    if-eq v4, v14, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v25, v12

    goto/16 :goto_c

    .line 309
    :cond_6
    :goto_2
    iget-object v15, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 310
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    move-object/from16 v20, v5

    .end local v5    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v20, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v10, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 312
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 313
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 314
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v15, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 315
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v16, v5

    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x4

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v5

    invoke-interface {v5, v15}, Landroid/support/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 317
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v21, v6

    .end local v6    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v21, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/16 v19, 0x0

    aget v22, v6, v19

    move-object/from16 v23, v7

    .end local v7    # "endParent":Landroid/view/ViewGroup;
    .local v23, "endParent":Landroid/view/ViewGroup;
    sub-int v7, v13, v22

    const/16 v18, 0x1

    aget v22, v6, v18

    move-object/from16 v24, v8

    .end local v8    # "startParent":Landroid/view/ViewGroup;
    .local v24, "startParent":Landroid/view/ViewGroup;
    sub-int v8, v4, v22

    aget v6, v6, v19

    sub-int v6, v13, v6

    .line 318
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v6, v6, v22

    move-object/from16 v22, v10

    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .local v22, "canvas":Landroid/graphics/Canvas;
    iget-object v10, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v10, v10, v18

    sub-int v10, v4, v10

    .line 319
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v25

    add-int v10, v10, v25

    invoke-direct {v5, v7, v8, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 320
    .local v5, "startBounds1":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v8, 0x0

    aget v10, v7, v8

    sub-int v10, v11, v10

    const/16 v18, 0x1

    aget v19, v7, v18

    move/from16 v25, v4

    .end local v4    # "startY":I
    .local v25, "startY":I
    sub-int v4, v14, v19

    aget v7, v7, v8

    sub-int v7, v11, v7

    .line 321
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v8, v8, v18

    sub-int v8, v14, v8

    .line 322
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v8, v8, v26

    invoke-direct {v6, v10, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v6

    .line 323
    .local v4, "endBounds1":Landroid/graphics/Rect;
    sget-object v6, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v4, v7, v18

    const-string v8, "bounds"

    invoke-static {v15, v8, v6, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 325
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    new-instance v7, Landroid/support/transition/ChangeBounds$4;

    invoke-direct {v7, v0, v1, v15, v9}, Landroid/support/transition/ChangeBounds$4;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    return-object v6

    .line 123
    .end local v4    # "endBounds1":Landroid/graphics/Rect;
    .end local v11    # "endX":I
    .end local v13    # "startX":I
    .end local v14    # "endY":I
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "canvas":Landroid/graphics/Canvas;
    .end local v23    # "endParent":Landroid/view/ViewGroup;
    .end local v24    # "startParent":Landroid/view/ViewGroup;
    .end local v25    # "startY":I
    .local v5, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v6, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "endParent":Landroid/view/ViewGroup;
    .restart local v8    # "startParent":Landroid/view/ViewGroup;
    :cond_7
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 124
    .end local v5    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "endParent":Landroid/view/ViewGroup;
    .end local v8    # "startParent":Landroid/view/ViewGroup;
    .restart local v20    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v23    # "endParent":Landroid/view/ViewGroup;
    .restart local v24    # "startParent":Landroid/view/ViewGroup;
    :goto_3
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 125
    .local v4, "startBounds":Landroid/graphics/Rect;
    iget-object v6, v3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 126
    .local v5, "endBounds":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 127
    .local v6, "startLeft":I
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 128
    .local v7, "endLeft":I
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 129
    .local v8, "startTop":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 130
    .local v10, "endTop":I
    iget v11, v4, Landroid/graphics/Rect;->right:I

    .line 131
    .local v11, "startRight":I
    iget v13, v5, Landroid/graphics/Rect;->right:I

    .line 132
    .local v13, "endRight":I
    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 133
    .local v14, "startBottom":I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 134
    .local v15, "endBottom":I
    sub-int v1, v11, v6

    .line 135
    .local v1, "startWidth":I
    sub-int v2, v14, v8

    .line 136
    .local v2, "startHeight":I
    sub-int v3, v13, v7

    .line 137
    .local v3, "endWidth":I
    move-object/from16 v22, v4

    .end local v4    # "startBounds":Landroid/graphics/Rect;
    .local v22, "startBounds":Landroid/graphics/Rect;
    sub-int v4, v15, v10

    .line 138
    .local v4, "endHeight":I
    const/16 v25, 0x0

    .line 139
    .local v25, "numChanges":I
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 140
    if-eq v6, v7, :cond_8

    .line 141
    add-int/lit8 v25, v25, 0x1

    .line 143
    :cond_8
    if-eq v8, v10, :cond_9

    .line 144
    add-int/lit8 v25, v25, 0x1

    .line 146
    :cond_9
    if-eq v11, v13, :cond_a

    .line 147
    add-int/lit8 v25, v25, 0x1

    .line 149
    :cond_a
    if-eq v14, v15, :cond_b

    .line 150
    add-int/lit8 v25, v25, 0x1

    move-object/from16 v26, v5

    move/from16 v5, v25

    goto :goto_4

    .line 149
    :cond_b
    move-object/from16 v26, v5

    move/from16 v5, v25

    goto :goto_4

    .line 153
    :cond_c
    move-object/from16 v26, v5

    move/from16 v5, v25

    .end local v25    # "numChanges":I
    .local v5, "numChanges":I
    .local v26, "endBounds":Landroid/graphics/Rect;
    :goto_4
    if-lez v5, :cond_24

    .line 154
    move/from16 v25, v12

    .end local v12    # "parentsEqual":Z
    .local v25, "parentsEqual":Z
    iget-boolean v12, v0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    if-nez v12, :cond_16

    .line 155
    new-array v12, v5, [Landroid/animation/PropertyValuesHolder;

    .line 156
    .local v12, "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x0

    .line 157
    .local v16, "pvhIndex":I
    if-eq v6, v7, :cond_d

    .line 158
    invoke-virtual {v9, v6}, Landroid/view/View;->setLeft(I)V

    .line 160
    :cond_d
    if-eq v8, v10, :cond_e

    .line 161
    invoke-virtual {v9, v8}, Landroid/view/View;->setTop(I)V

    .line 163
    :cond_e
    if-eq v11, v13, :cond_f

    .line 164
    invoke-virtual {v9, v11}, Landroid/view/View;->setRight(I)V

    .line 166
    :cond_f
    if-eq v14, v15, :cond_10

    .line 167
    invoke-virtual {v9, v14}, Landroid/view/View;->setBottom(I)V

    .line 169
    :cond_10
    if-eq v6, v7, :cond_11

    .line 170
    add-int/lit8 v27, v16, 0x1

    move/from16 v29, v2

    move/from16 v28, v5

    const/4 v5, 0x2

    .end local v2    # "startHeight":I
    .end local v5    # "numChanges":I
    .end local v16    # "pvhIndex":I
    .local v27, "pvhIndex":I
    .local v28, "numChanges":I
    .local v29, "startHeight":I
    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    const/4 v5, 0x1

    aput v7, v2, v5

    const-string v5, "left"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v12, v16

    move/from16 v16, v27

    goto :goto_5

    .line 169
    .end local v27    # "pvhIndex":I
    .end local v28    # "numChanges":I
    .end local v29    # "startHeight":I
    .restart local v2    # "startHeight":I
    .restart local v5    # "numChanges":I
    .restart local v16    # "pvhIndex":I
    :cond_11
    move/from16 v29, v2

    move/from16 v28, v5

    .line 172
    .end local v2    # "startHeight":I
    .end local v5    # "numChanges":I
    .restart local v28    # "numChanges":I
    .restart local v29    # "startHeight":I
    :goto_5
    if-eq v8, v10, :cond_12

    .line 173
    add-int/lit8 v2, v16, 0x1

    move/from16 v27, v2

    const/4 v5, 0x2

    .end local v16    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v8, v2, v5

    const/4 v5, 0x1

    aput v10, v2, v5

    const-string v5, "top"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v12, v16

    move/from16 v16, v27

    .line 175
    .end local v27    # "pvhIndex":I
    .restart local v16    # "pvhIndex":I
    :cond_12
    if-eq v11, v13, :cond_13

    .line 176
    add-int/lit8 v2, v16, 0x1

    move/from16 v27, v2

    const/4 v5, 0x2

    .end local v16    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v11, v2, v5

    const/4 v5, 0x1

    aput v13, v2, v5

    const-string v5, "right"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v12, v16

    move/from16 v16, v27

    .line 179
    .end local v27    # "pvhIndex":I
    .restart local v16    # "pvhIndex":I
    :cond_13
    if-eq v14, v15, :cond_14

    .line 180
    add-int/lit8 v2, v16, 0x1

    const/4 v5, 0x2

    .end local v16    # "pvhIndex":I
    .local v2, "pvhIndex":I
    new-array v5, v5, [I

    const/16 v17, 0x0

    aput v14, v5, v17

    const/16 v17, 0x1

    aput v15, v5, v17

    move/from16 v17, v2

    .end local v2    # "pvhIndex":I
    .local v17, "pvhIndex":I
    const-string v2, "bottom"

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v12, v16

    move/from16 v16, v17

    .line 183
    .end local v17    # "pvhIndex":I
    .restart local v16    # "pvhIndex":I
    :cond_14
    invoke-static {v9, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 184
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_15

    .line 185
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 186
    .local v5, "parent":Landroid/view/ViewGroup;
    move/from16 v27, v11

    const/4 v11, 0x1

    .end local v11    # "startRight":I
    .local v27, "startRight":I
    invoke-static {v5, v11}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 187
    new-instance v11, Landroid/support/transition/ChangeBounds$1;

    invoke-direct {v11, v0, v5}, Landroid/support/transition/ChangeBounds$1;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 213
    .local v11, "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    invoke-virtual {v0, v11}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto :goto_6

    .line 184
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v27    # "startRight":I
    .local v11, "startRight":I
    :cond_15
    move/from16 v27, v11

    .line 215
    .end local v11    # "startRight":I
    .restart local v27    # "startRight":I
    :goto_6
    return-object v2

    .line 217
    .end local v12    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v16    # "pvhIndex":I
    .end local v27    # "startRight":I
    .end local v28    # "numChanges":I
    .end local v29    # "startHeight":I
    .local v2, "startHeight":I
    .local v5, "numChanges":I
    .restart local v11    # "startRight":I
    :cond_16
    move/from16 v29, v2

    move/from16 v28, v5

    move/from16 v27, v11

    .end local v2    # "startHeight":I
    .end local v5    # "numChanges":I
    .end local v11    # "startRight":I
    .restart local v27    # "startRight":I
    .restart local v28    # "numChanges":I
    .restart local v29    # "startHeight":I
    if-eq v1, v3, :cond_17

    .line 218
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v9, v2}, Landroid/view/View;->setRight(I)V

    .line 220
    :cond_17
    move/from16 v2, v29

    .end local v29    # "startHeight":I
    .restart local v2    # "startHeight":I
    if-eq v2, v4, :cond_18

    .line 221
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v10

    invoke-virtual {v9, v5}, Landroid/view/View;->setBottom(I)V

    .line 224
    :cond_18
    if-eq v6, v7, :cond_19

    .line 225
    sub-int v5, v6, v7

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 227
    :cond_19
    if-eq v8, v10, :cond_1a

    .line 228
    sub-int v5, v8, v10

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 231
    :cond_1a
    sub-int v5, v7, v6

    int-to-float v5, v5

    .line 232
    .local v5, "transXDelta":F
    sub-int v11, v10, v8

    int-to-float v11, v11

    .line 233
    .local v11, "transYDelta":F
    sub-int v12, v3, v1

    .line 234
    .local v12, "widthDelta":I
    sub-int v16, v4, v2

    .line 235
    .local v16, "heightDelta":I
    const/16 v28, 0x0

    .line 236
    const/16 v29, 0x0

    cmpl-float v30, v5, v29

    if-eqz v30, :cond_1b

    .line 237
    add-int/lit8 v28, v28, 0x1

    .line 239
    :cond_1b
    cmpl-float v30, v11, v29

    if-eqz v30, :cond_1c

    .line 240
    add-int/lit8 v28, v28, 0x1

    .line 242
    :cond_1c
    if-nez v12, :cond_1e

    if-eqz v16, :cond_1d

    goto :goto_7

    :cond_1d
    move/from16 v30, v6

    move/from16 v6, v28

    goto :goto_8

    .line 243
    :cond_1e
    :goto_7
    add-int/lit8 v28, v28, 0x1

    move/from16 v30, v6

    move/from16 v6, v28

    .line 245
    .end local v28    # "numChanges":I
    .local v6, "numChanges":I
    .local v30, "startLeft":I
    :goto_8
    move/from16 v31, v7

    .end local v7    # "endLeft":I
    .local v31, "endLeft":I
    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    .line 246
    .local v7, "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v28, 0x0

    .line 247
    .local v28, "pvhIndex":I
    cmpl-float v32, v5, v29

    if-eqz v32, :cond_1f

    .line 248
    add-int/lit8 v32, v28, 0x1

    move/from16 v33, v5

    move/from16 v34, v6

    const/4 v5, 0x2

    .end local v5    # "transXDelta":F
    .end local v6    # "numChanges":I
    .end local v28    # "pvhIndex":I
    .local v32, "pvhIndex":I
    .local v33, "transXDelta":F
    .local v34, "numChanges":I
    new-array v6, v5, [F

    .line 249
    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v5

    const/16 v19, 0x0

    aput v5, v6, v19

    const/4 v5, 0x1

    aput v29, v6, v5

    .line 248
    const-string v5, "translationX"

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v7, v28

    move/from16 v28, v32

    goto :goto_9

    .line 247
    .end local v32    # "pvhIndex":I
    .end local v33    # "transXDelta":F
    .end local v34    # "numChanges":I
    .restart local v5    # "transXDelta":F
    .restart local v6    # "numChanges":I
    .restart local v28    # "pvhIndex":I
    :cond_1f
    move/from16 v33, v5

    move/from16 v34, v6

    .line 251
    .end local v5    # "transXDelta":F
    .end local v6    # "numChanges":I
    .restart local v33    # "transXDelta":F
    .restart local v34    # "numChanges":I
    :goto_9
    cmpl-float v5, v11, v29

    if-eqz v5, :cond_20

    .line 252
    add-int/lit8 v5, v28, 0x1

    const/4 v6, 0x2

    .end local v28    # "pvhIndex":I
    .local v5, "pvhIndex":I
    new-array v6, v6, [F

    .line 253
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v17

    const/16 v19, 0x0

    aput v17, v6, v19

    const/16 v17, 0x1

    aput v29, v6, v17

    .line 252
    move/from16 v17, v5

    .end local v5    # "pvhIndex":I
    .restart local v17    # "pvhIndex":I
    const-string v5, "translationY"

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v7, v28

    move/from16 v28, v17

    .line 255
    .end local v17    # "pvhIndex":I
    .restart local v28    # "pvhIndex":I
    :cond_20
    if-nez v12, :cond_22

    if-eqz v16, :cond_21

    goto :goto_a

    :cond_21
    move/from16 v17, v1

    goto :goto_b

    .line 256
    :cond_22
    :goto_a
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    .local v5, "tempStartBounds":Landroid/graphics/Rect;
    move/from16 v17, v1

    .end local v1    # "startWidth":I
    .local v17, "startWidth":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    .end local v5    # "tempStartBounds":Landroid/graphics/Rect;
    :goto_b
    invoke-static {v9, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_23

    .line 263
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 264
    .local v5, "parent":Landroid/view/ViewGroup;
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 265
    new-instance v6, Landroid/support/transition/ChangeBounds$2;

    invoke-direct {v6, v0, v5}, Landroid/support/transition/ChangeBounds$2;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 291
    .local v6, "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    invoke-virtual {v0, v6}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 293
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    :cond_23
    new-instance v5, Landroid/support/transition/ChangeBounds$3;

    invoke-direct {v5, v0}, Landroid/support/transition/ChangeBounds$3;-><init>(Landroid/support/transition/ChangeBounds;)V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    return-object v1

    .line 153
    .end local v16    # "heightDelta":I
    .end local v17    # "startWidth":I
    .end local v25    # "parentsEqual":Z
    .end local v27    # "startRight":I
    .end local v28    # "pvhIndex":I
    .end local v30    # "startLeft":I
    .end local v31    # "endLeft":I
    .end local v33    # "transXDelta":F
    .end local v34    # "numChanges":I
    .local v1, "startWidth":I
    .local v5, "numChanges":I
    .local v6, "startLeft":I
    .local v7, "endLeft":I
    .local v11, "startRight":I
    .local v12, "parentsEqual":Z
    :cond_24
    move/from16 v17, v1

    move/from16 v28, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v27, v11

    move/from16 v25, v12

    .line 302
    .end local v1    # "startWidth":I
    .end local v2    # "startHeight":I
    .end local v3    # "endWidth":I
    .end local v4    # "endHeight":I
    .end local v5    # "numChanges":I
    .end local v6    # "startLeft":I
    .end local v7    # "endLeft":I
    .end local v8    # "startTop":I
    .end local v10    # "endTop":I
    .end local v11    # "startRight":I
    .end local v12    # "parentsEqual":Z
    .end local v13    # "endRight":I
    .end local v14    # "startBottom":I
    .end local v15    # "endBottom":I
    .end local v22    # "startBounds":Landroid/graphics/Rect;
    .end local v26    # "endBounds":Landroid/graphics/Rect;
    .restart local v25    # "parentsEqual":Z
    nop

    .line 335
    :goto_c
    const/4 v1, 0x0

    return-object v1

    .line 113
    .end local v9    # "view":Landroid/view/View;
    .end local v20    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "endParent":Landroid/view/ViewGroup;
    .end local v24    # "startParent":Landroid/view/ViewGroup;
    .end local v25    # "parentsEqual":Z
    .local v5, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v6, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v7, "endParent":Landroid/view/ViewGroup;
    .local v8, "startParent":Landroid/view/ViewGroup;
    :cond_25
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    const/4 v1, 0x0

    .line 114
    .end local v5    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "endParent":Landroid/view/ViewGroup;
    .end local v8    # "startParent":Landroid/view/ViewGroup;
    .restart local v20    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v23    # "endParent":Landroid/view/ViewGroup;
    .restart local v24    # "startParent":Landroid/view/ViewGroup;
    :goto_d
    return-object v1

    .line 106
    .end local v20    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "endParent":Landroid/view/ViewGroup;
    .end local v24    # "startParent":Landroid/view/ViewGroup;
    :cond_26
    const/4 v1, 0x0

    .line 107
    :goto_e
    return-object v1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .line 79
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 80
    return-void
.end method
