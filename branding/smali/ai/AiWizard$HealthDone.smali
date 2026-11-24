.class final Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HealthDone"
.end annotation


# instance fields
.field final none:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;->none:Z

    .line 665
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 670
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;->none:Z

    if-eqz v0, :cond_12

    .line 671
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->clearHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 674
    :cond_12
    # getter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->access$100()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 675
    # getter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->access$100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 677
    :cond_1f
    # setter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 678
    # setter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->access$202(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 679
    return-void
.end method
