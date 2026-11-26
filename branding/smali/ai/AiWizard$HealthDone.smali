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
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;->none:Z

    .line 840
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 844
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 845
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;->none:Z

    if-eqz v0, :cond_12

    .line 846
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->clearHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 847
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 849
    :cond_12
    # getter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->access$100()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 850
    # getter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->access$100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 852
    :cond_1f
    # setter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 853
    # setter for: Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->access$202(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 854
    return-void
.end method
