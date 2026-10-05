.class final Lcom/isaigu/gymapp/ai/AutoBoard$Fit;
.super Ljava/lang/Object;
.source "AutoBoard.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fit"
.end annotation


# instance fields
.field private final content:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    .line 40
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 17

    .prologue
    .line 44
    sub-int v3, p4, p2

    .line 45
    sub-int v4, p5, p3

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 47
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    if-lez v3, :cond_12

    if-lez v4, :cond_12

    if-gtz v6, :cond_13

    .line 68
    :cond_12
    :goto_12
    return-void

    .line 51
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43910000    # 290.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 52
    int-to-float v1, v3

    int-to-float v2, v6

    div-float v2, v1, v2

    .line 53
    int-to-float v1, v4

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 54
    if-ge v1, v0, :cond_68

    .line 56
    int-to-float v1, v4

    int-to-float v2, v0

    div-float/2addr v1, v2

    move v2, v1

    .line 58
    :goto_2d
    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_38

    .line 59
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_38
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 63
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 64
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 65
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 66
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    int-to-float v3, v3

    int-to-float v5, v6

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 67
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    int-to-float v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_12

    :cond_68
    move v0, v1

    goto :goto_2d
.end method
