.class final Lcom/isaigu/gymapp/ai/AiTrain$Mic;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/isaigu/gymapp/ai/VoiceInput$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mic"
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final live:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->live:Z

    .line 1539
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1543
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1544
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->c:Landroid/content/Context;

    .line 1545
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;)V

    .line 1546
    return-void
.end method

.method public onText(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1550
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->live:Z

    if-nez v0, :cond_14

    .line 1551
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    .line 1552
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->addToDraft(Ljava/lang/String;)V

    .line 1560
    :goto_d
    return-void

    .line 1555
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->c:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_d

    .line 1558
    :cond_14
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiCoach;->userSpoke(Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->c:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->live:Z

    invoke-static {v0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_d
.end method
