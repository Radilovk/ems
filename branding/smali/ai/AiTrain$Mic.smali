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
    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->live:Z

    .line 1064
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1068
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1069
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->c:Landroid/content/Context;

    .line 1070
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;)V

    .line 1071
    return-void
.end method

.method public onText(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->live:Z

    if-nez v0, :cond_54

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->view:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$500()I

    move-result v0

    if-nez v0, :cond_54

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$900()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    .line 1081
    :goto_50
    return-void

    .line 1076
    :cond_51
    const-string v0, ""

    goto :goto_3e

    .line 1080
    :cond_54
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->c:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->live:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_50
.end method
