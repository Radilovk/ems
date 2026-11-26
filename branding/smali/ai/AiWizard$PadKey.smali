.class final Lcom/isaigu/gymapp/ai/AiWizard$PadKey;
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
    name = "PadKey"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiWizard$PadState;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    .line 717
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->key:Ljava/lang/String;

    .line 718
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 722
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 723
    const-string v0, "\u2713"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 724
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 725
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->which:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->setNum(II)V

    .line 727
    :cond_26
    # getter for: Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 728
    # getter for: Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 729
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 740
    :cond_37
    :goto_37
    return-void

    .line 733
    :cond_38
    const-string v0, "\u232b"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 734
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_61
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    .line 738
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ac

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    :goto_75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->view:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_37

    .line 734
    :cond_82
    const-string v0, ""

    goto :goto_61

    .line 735
    :cond_85
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_63

    .line 736
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->st:Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    goto :goto_63

    .line 738
    :cond_ac
    const-string v0, "\u2014"

    goto :goto_75
.end method
