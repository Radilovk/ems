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
    .registers 2

    .line 251
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 252
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setClickable(Z)V

    .line 253
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .line 258
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 259
    return-void
.end method
