.class Landroid/support/design/widget/FloatingActionButtonLollipop;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonLollipop$AlwaysStatefulGradientDrawable;
    }
.end annotation


# instance fields
.field private mInsetDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 0
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getElevation()F
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getElevation()F

    move-result v0

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 195
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v0

    .line 197
    .local v0, "radius":F
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonLollipop;->getElevation()F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mPressedTranslationZ:F

    add-float/2addr v2, v3

    .line 198
    .local v2, "maxShadowSize":F
    nop

    .line 199
    invoke-static {v2, v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v3

    float-to-double v3, v3

    .line 198
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 200
    .local v3, "hPadding":I
    nop

    .line 201
    invoke-static {v2, v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v1

    float-to-double v4, v1

    .line 200
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 202
    .local v1, "vPadding":I
    invoke-virtual {p1, v3, v1, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    .end local v0    # "radius":F
    .end local v1    # "vPadding":I
    .end local v2    # "maxShadowSize":F
    .end local v3    # "hPadding":I
    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 206
    :goto_0
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .line 176
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 1

    .line 185
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawableLollipop;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 190
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonLollipop$AlwaysStatefulGradientDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/FloatingActionButtonLollipop$AlwaysStatefulGradientDrawable;-><init>()V

    return-object v0
.end method

.method onCompatShadowChanged()V
    .locals 0

    .line 154
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonLollipop;->updatePadding()V

    .line 155
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 0
    .param p1, "state"    # [I

    .line 171
    return-void
.end method

.method onElevationsChanged(FF)V
    .locals 17
    .param p1, "elevation"    # F
    .param p2, "pressedTranslationZ"    # F

    .line 83
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .local v3, "sdk":I
    const/4 v4, 0x0

    const/16 v5, 0x15

    if-ne v3, v5, :cond_3

    .line 87
    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setElevation(F)V

    .line 89
    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->isFocused()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto/16 :goto_1

    .line 90
    :cond_1
    :goto_0
    iget-object v4, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto/16 :goto_1

    .line 95
    :cond_2
    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setElevation(F)V

    .line 96
    iget-object v5, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto/16 :goto_1

    .line 99
    :cond_3
    new-instance v5, Landroid/animation/StateListAnimator;

    invoke-direct {v5}, Landroid/animation/StateListAnimator;-><init>()V

    .line 102
    .local v5, "stateListAnimator":Landroid/animation/StateListAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 103
    .local v6, "set":Landroid/animation/AnimatorSet;
    iget-object v7, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v8, 0x1

    new-array v9, v8, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    const-string v11, "elevation"

    invoke-static {v7, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    iget-object v9, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v15, v8, [F

    aput v2, v15, v10

    .line 104
    invoke-static {v9, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 105
    const-wide/16 v14, 0x64

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 104
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 106
    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v5, v7, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 110
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v6, v7

    .line 111
    iget-object v7, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    new-array v9, v8, [F

    aput v1, v9, v10

    invoke-static {v7, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    iget-object v9, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v8, [F

    aput v2, v12, v10

    .line 112
    invoke-static {v9, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 113
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 112
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 114
    sget-object v4, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    sget-object v4, Landroid/support/design/widget/FloatingActionButtonLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    invoke-virtual {v5, v4, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 118
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    .local v4, "set":Landroid/animation/AnimatorSet;
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    new-array v9, v8, [F

    aput v1, v9, v10

    .line 120
    invoke-static {v7, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v8, [F

    iget-object v13, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 125
    invoke-virtual {v13}, Landroid/support/design/widget/VisibilityAwareImageButton;->getTranslationZ()F

    move-result v13

    aput v13, v12, v10

    invoke-static {v7, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 126
    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x2

    iget-object v9, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v12, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v13, v8, [F

    const/16 v16, 0x0

    aput v16, v13, v10

    .line 127
    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 128
    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v6, v7

    .line 119
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 129
    sget-object v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    sget-object v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->ENABLED_STATE_SET:[I

    invoke-virtual {v5, v6, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 133
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v6

    .line 134
    iget-object v6, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    new-array v7, v8, [F

    const/4 v9, 0x0

    aput v9, v7, v10

    invoke-static {v6, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v8, v8, [F

    aput v9, v8, v10

    .line 135
    invoke-static {v7, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 136
    sget-object v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    sget-object v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->EMPTY_STATE_SET:[I

    invoke-virtual {v5, v6, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 139
    iget-object v6, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v6, v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 142
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .end local v5    # "stateListAnimator":Landroid/animation/StateListAnimator;
    :goto_1
    iget-object v4, v0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v4}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonLollipop;->updatePadding()V

    .line 145
    :cond_4
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 159
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInsetDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 162
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInsetDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :goto_0
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 5
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # I
    .param p4, "borderWidth"    # I

    .line 49
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 51
    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    if-lez p4, :cond_1

    .line 57
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 58
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v1, "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 60
    .end local v1    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 61
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    .restart local v1    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method setRippleColor(I)V
    .locals 2
    .param p1, "rippleColor"    # I

    .line 74
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    .line 79
    :goto_0
    return-void
.end method
