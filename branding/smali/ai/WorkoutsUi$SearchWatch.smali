.class final Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WorkoutsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchWatch"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .prologue
    .line 712
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$400()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 714
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$400()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillGrid(Landroid/content/Context;)V

    .line 716
    :cond_1a
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 705
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 708
    return-void
.end method
