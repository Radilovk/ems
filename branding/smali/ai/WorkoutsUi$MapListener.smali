.class final Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WorkoutsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 606
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$102(Z)Z

    .line 607
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    .line 608
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 609
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 611
    :cond_1a
    return-void
.end method

.method public onSelect(I)V
    .registers 3

    .prologue
    .line 599
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 600
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 602
    :cond_13
    return-void
.end method
