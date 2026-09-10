.class public Landroid/support/percent/PercentLayoutHelper;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;,
        Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;,
        Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PercentLayout"

.field private static final VERBOSE:Z


# instance fields
.field private final mHost:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "host"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 84
    return-void
.end method

.method public static fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p0, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p1, "array"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    return-void
.end method

.method public static getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    sget-object v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_widthPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 149
    .local v2, "value":F
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    .line 153
    if-eqz v1, :cond_a

    .line 154
    :goto_0
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 156
    :cond_0
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_heightPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 157
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_1

    .line 161
    if-eqz v1, :cond_b

    .line 162
    :goto_1
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    .line 164
    :cond_1
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 165
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_2

    .line 169
    if-eqz v1, :cond_c

    .line 170
    :goto_2
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 171
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 172
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 173
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 175
    :cond_2
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginLeftPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 177
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_3

    .line 181
    if-eqz v1, :cond_d

    .line 182
    :goto_3
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 184
    :cond_3
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginTopPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 186
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_4

    .line 190
    if-eqz v1, :cond_e

    .line 191
    :goto_4
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 193
    :cond_4
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginRightPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 195
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_5

    .line 199
    if-eqz v1, :cond_f

    .line 200
    :goto_5
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 202
    :cond_5
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginBottomPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 204
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_6

    .line 208
    if-eqz v1, :cond_10

    .line 209
    :goto_6
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 211
    :cond_6
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginStartPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 213
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_7

    .line 217
    if-eqz v1, :cond_11

    .line 218
    :goto_7
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    .line 220
    :cond_7
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginEndPercent:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 222
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_8

    .line 226
    if-eqz v1, :cond_12

    .line 227
    :goto_8
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 230
    :cond_8
    sget v3, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_aspectRatio:I

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 231
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_9

    .line 235
    if-eqz v1, :cond_13

    .line 236
    :goto_9
    iput v2, v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 239
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    return-object v1

    .line 153
    :cond_a
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto/16 :goto_0

    .line 161
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_b
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto/16 :goto_1

    .line 169
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_c
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto/16 :goto_2

    .line 181
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_d
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_3

    .line 190
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_e
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_4

    .line 199
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_f
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_5

    .line 208
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_10
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_6

    .line 217
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_11
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_7

    .line 226
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_12
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_8

    .line 235
    .restart local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_13
    new-instance v1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local v1    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_9
.end method

.method private static shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int v0, v1, v2

    .line 326
    .local v0, "state":I
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    iget v1, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, v1, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int v0, v1, v2

    .line 320
    .local v0, "state":I
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    iget v1, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, v1, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustChildren(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget-object v8, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 112
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int v6, v7, v8

    .line 113
    .local v6, "widthHint":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget-object v8, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    .line 115
    .local v1, "heightHint":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 116
    iget-object v7, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 117
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 121
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v4, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v7, :cond_0

    move-object v7, v4

    .line 122
    check-cast v7, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 123
    invoke-interface {v7}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v3

    .line 127
    .local v3, "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    if-eqz v3, :cond_0

    .line 128
    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_1

    .line 129
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 115
    .end local v3    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .restart local v3    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {v3, v4, v6, v1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    goto :goto_1

    .line 137
    .end local v3    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public handleMeasuredStateTooSmall()Z
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "needsSecondMeasure":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 292
    iget-object v6, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 293
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 297
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v4, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v6, :cond_1

    move-object v6, v4

    .line 298
    check-cast v6, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 299
    invoke-interface {v6}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 300
    .local v2, "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    if-eqz v2, :cond_1

    .line 301
    invoke-static {v5, v2}, Landroid/support/percent/PercentLayoutHelper;->shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    const/4 v3, 0x1

    .line 303
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    :cond_0
    invoke-static {v5, v2}, Landroid/support/percent/PercentLayoutHelper;->shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    const/4 v3, 0x1

    .line 307
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    .end local v2    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return v3
.end method

.method public restoreOriginalParams()V
    .locals 6

    .prologue
    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 253
    iget-object v5, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 254
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 258
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v3, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 259
    check-cast v5, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 260
    invoke-interface {v5}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 264
    .local v2, "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    if-eqz v2, :cond_0

    .line 265
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_1

    .line 266
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 252
    .end local v2    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .restart local v2    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 273
    .end local v2    # "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method
