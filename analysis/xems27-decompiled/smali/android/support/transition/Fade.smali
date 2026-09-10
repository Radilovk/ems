.class public Landroid/support/transition/Fade;
.super Landroid/support/transition/Visibility;
.source "Fade.java"


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/transition/Fade;-><init>(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .line 84
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 85
    iput p1, p0, Landroid/support/transition/Fade;->mFadingMode:I

    .line 86
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 120
    .local v0, "loc":[I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 121
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:fade:screenX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:fade:screenY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 100
    cmpl-float v0, p2, p3

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 103
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 105
    :cond_0
    return-object v0

    .line 107
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 112
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p4, :cond_2

    .line 113
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    :cond_2
    return-object v0
.end method


# virtual methods
.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 127
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 128
    invoke-direct {p0, p1}, Landroid/support/transition/Fade;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 129
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 134
    iget v0, p0, Landroid/support/transition/Fade;->mFadingMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 143
    .local v0, "endView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 144
    new-instance v3, Landroid/support/transition/Fade$1;

    invoke-direct {v3, p0, v0}, Landroid/support/transition/Fade$1;-><init>(Landroid/support/transition/Fade;Landroid/view/View;)V

    .line 173
    .local v3, "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    invoke-virtual {p0, v3}, Landroid/support/transition/Fade;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 174
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v4, v2}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "endView":Landroid/view/View;
    .end local v3    # "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    :cond_1
    :goto_0
    return-object v2
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 23
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 180
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    iget v0, v12, Landroid/support/transition/Fade;->mFadingMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 181
    return-object v2

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "view":Landroid/view/View;
    if-eqz v14, :cond_1

    iget-object v3, v14, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    move-object v9, v3

    .line 185
    .local v9, "startView":Landroid/view/View;
    if-eqz v15, :cond_2

    iget-object v3, v15, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    move-object v11, v3

    .line 190
    .local v11, "endView":Landroid/view/View;
    const/4 v3, 0x0

    .line 191
    .local v3, "overlayView":Landroid/view/View;
    const/4 v4, 0x0

    .line 192
    .local v4, "viewToKeep":Landroid/view/View;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_3

    move/from16 v8, p5

    goto :goto_2

    .line 217
    :cond_3
    const/4 v5, 0x4

    move/from16 v8, p5

    if-ne v8, v5, :cond_4

    .line 218
    move-object v0, v11

    .line 219
    move-object v4, v0

    move-object v10, v0

    move-object v7, v3

    goto/16 :goto_3

    .line 222
    :cond_4
    if-ne v9, v11, :cond_5

    .line 223
    move-object v0, v11

    .line 224
    move-object v4, v0

    move-object v10, v0

    move-object v7, v3

    goto/16 :goto_3

    .line 226
    :cond_5
    move-object v0, v9

    .line 227
    move-object v3, v0

    move-object v10, v0

    move-object v7, v3

    move-object v0, v4

    goto/16 :goto_3

    .line 192
    :cond_6
    move/from16 v8, p5

    .line 193
    :goto_2
    if-eqz v11, :cond_7

    .line 195
    move-object v3, v11

    move-object v0, v11

    move-object v10, v0

    move-object v7, v3

    move-object v0, v4

    goto :goto_3

    .line 196
    :cond_7
    if-eqz v9, :cond_a

    .line 200
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_8

    .line 202
    move-object v3, v9

    move-object v0, v9

    move-object v10, v0

    move-object v7, v3

    move-object v0, v4

    goto :goto_3

    .line 203
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_a

    .line 204
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_a

    .line 205
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 206
    .local v5, "startParent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 207
    .local v6, "id":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-boolean v7, v12, Landroid/support/transition/Fade;->mCanRemoveViews:Z

    if-eqz v7, :cond_9

    .line 211
    move-object v3, v9

    move-object v0, v9

    .line 213
    .end local v5    # "startParent":Landroid/view/View;
    .end local v6    # "id":I
    :cond_9
    move-object v10, v0

    move-object v7, v3

    move-object v0, v4

    goto :goto_3

    .line 231
    :cond_a
    move-object v10, v0

    move-object v7, v3

    move-object v0, v4

    .end local v3    # "overlayView":Landroid/view/View;
    .end local v4    # "viewToKeep":Landroid/view/View;
    .local v0, "viewToKeep":Landroid/view/View;
    .local v7, "overlayView":Landroid/view/View;
    .local v10, "view":Landroid/view/View;
    :goto_3
    move/from16 v4, p5

    .line 233
    .local v4, "finalVisibility":I
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v7, :cond_b

    .line 235
    iget-object v2, v14, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:fade:screenX"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 236
    .local v16, "screenX":I
    iget-object v2, v14, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:fade:screenY"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 237
    .local v17, "screenY":I
    new-array v1, v1, [I

    .line 238
    .local v1, "loc":[I
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 239
    aget v2, v1, v3

    sub-int v2, v16, v2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v7, v2}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 240
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v7, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 241
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 243
    const/high16 v18, 0x3f800000    # 1.0f

    .line 244
    .local v18, "startAlpha":F
    const/4 v3, 0x0

    .line 245
    .local v3, "endAlpha":F
    move-object v2, v10

    .line 246
    .local v2, "finalView":Landroid/view/View;
    move-object v5, v7

    .line 247
    .local v5, "finalOverlayView":Landroid/view/View;
    move-object/from16 v19, v7

    move v7, v3

    .end local v3    # "endAlpha":F
    .local v7, "endAlpha":F
    .local v19, "overlayView":Landroid/view/View;
    move-object v3, v0

    .line 248
    .local v3, "finalViewToKeep":Landroid/view/View;
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v6, p1

    .line 249
    .local v6, "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v20, Landroid/support/transition/Fade$2;

    move-object/from16 v21, v0

    .end local v0    # "viewToKeep":Landroid/view/View;
    .local v21, "viewToKeep":Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v22, v1

    .end local v1    # "loc":[I
    .local v22, "loc":[I
    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/transition/Fade$2;-><init>(Landroid/support/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 277
    .local v0, "endListener":Landroid/animation/AnimatorListenerAdapter;
    invoke-direct {v12, v10, v13, v7, v0}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 279
    .end local v2    # "finalView":Landroid/view/View;
    .end local v3    # "finalViewToKeep":Landroid/view/View;
    .end local v5    # "finalOverlayView":Landroid/view/View;
    .end local v6    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v16    # "screenX":I
    .end local v17    # "screenY":I
    .end local v18    # "startAlpha":F
    .end local v19    # "overlayView":Landroid/view/View;
    .end local v21    # "viewToKeep":Landroid/view/View;
    .end local v22    # "loc":[I
    .local v0, "viewToKeep":Landroid/view/View;
    .local v7, "overlayView":Landroid/view/View;
    :cond_b
    move-object/from16 v21, v0

    move-object/from16 v19, v7

    const/high16 v13, 0x3f800000    # 1.0f

    .end local v7    # "overlayView":Landroid/view/View;
    .restart local v19    # "overlayView":Landroid/view/View;
    if-eqz v0, :cond_c

    .line 282
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    const/high16 v1, 0x3f800000    # 1.0f

    .line 285
    .local v1, "startAlpha":F
    const/4 v2, 0x0

    .line 286
    .local v2, "endAlpha":F
    move-object/from16 v3, v19

    .end local v19    # "overlayView":Landroid/view/View;
    .local v3, "overlayView":Landroid/view/View;
    move-object v7, v10

    .line 287
    .local v7, "finalView":Landroid/view/View;
    move-object v6, v10

    .end local v10    # "view":Landroid/view/View;
    .local v6, "view":Landroid/view/View;
    move-object v10, v3

    .line 288
    .local v10, "finalOverlayView":Landroid/view/View;
    move-object v8, v0

    .line 289
    .local v8, "finalViewToKeep":Landroid/view/View;
    move-object/from16 v16, v11

    .end local v11    # "endView":Landroid/view/View;
    .local v16, "endView":Landroid/view/View;
    move-object/from16 v11, p1

    .line 290
    .local v11, "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v17, Landroid/support/transition/Fade$3;

    move-object/from16 v5, v17

    move-object v13, v6

    .end local v6    # "view":Landroid/view/View;
    .local v13, "view":Landroid/view/View;
    move-object/from16 v6, p0

    move-object/from16 v19, v9

    .end local v9    # "startView":Landroid/view/View;
    .local v19, "startView":Landroid/view/View;
    move v9, v4

    invoke-direct/range {v5 .. v11}, Landroid/support/transition/Fade$3;-><init>(Landroid/support/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 335
    .local v5, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v6, v2, v5}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v6

    return-object v6

    .line 337
    .end local v1    # "startAlpha":F
    .end local v2    # "endAlpha":F
    .end local v3    # "overlayView":Landroid/view/View;
    .end local v5    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v7    # "finalView":Landroid/view/View;
    .end local v8    # "finalViewToKeep":Landroid/view/View;
    .end local v13    # "view":Landroid/view/View;
    .end local v16    # "endView":Landroid/view/View;
    .restart local v9    # "startView":Landroid/view/View;
    .local v10, "view":Landroid/view/View;
    .local v11, "endView":Landroid/view/View;
    .local v19, "overlayView":Landroid/view/View;
    :cond_c
    return-object v2
.end method
