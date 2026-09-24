.class final Lcom/isaigu/gymapp/widget/XemsPanel$Square;
.super Landroid/widget/FrameLayout;
.source "XemsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Square"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setClickable(Z)V

    .line 223
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 224
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .prologue
    .line 228
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 229
    return-void
.end method
