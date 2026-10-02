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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 17

    .prologue
    .line 36
    sub-int v0, p4, p2

    .line 37
    sub-int v1, p5, p3

    .line 38
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    if-lez v0, :cond_1c

    if-lez v1, :cond_1c

    if-lez v2, :cond_1c

    if-gtz v3, :cond_1d

    .line 50
    :cond_1c
    :goto_1c
    return-void

    .line 43
    :cond_1d
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 44
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    .line 45
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    .line 46
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    .line 47
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleY(F)V

    .line 48
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;->content:Landroid/view/View;

    int-to-float v1, v1

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1c
.end method
