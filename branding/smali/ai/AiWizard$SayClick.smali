.class final Lcom/isaigu/gymapp/ai/AiWizard$SayClick;
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
    name = "SayClick"
.end annotation


# instance fields
.field final f:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;->f:Landroid/widget/EditText;

    .line 733
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 737
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 739
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    .line 740
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;-><init>(Z)V

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->onClick(Landroid/view/View;)V

    .line 745
    :goto_28
    return-void

    .line 738
    :cond_29
    const-string v0, ""

    goto :goto_1a

    .line 743
    :cond_2c
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_28
.end method
