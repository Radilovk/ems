.class public Landroid/support/percent/PercentFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PercentFrameLayout.java"

# interfaces
.implements Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    invoke-static {p1, p2}, Landroid/support/percent/PercentLayoutHelper;->getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/support/percent/PercentFrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/percent/PercentFrameLayout$LayoutParams;

    .line 151
    invoke-direct {p0, p1}, Landroid/support/percent/PercentFrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 152
    iget-object v0, p1, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    iput-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 145
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->gravity:I

    .line 146
    return-void
.end method


# virtual methods
.method public getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    iput-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .line 166
    invoke-static {p0, p1, p2, p3}, Landroid/support/percent/PercentLayoutHelper;->fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    .line 167
    return-void
.end method
