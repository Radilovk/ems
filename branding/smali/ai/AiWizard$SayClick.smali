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
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;->f:Landroid/widget/EditText;

    .line 919
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 923
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 924
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

    .line 925
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    .line 926
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Mic;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;-><init>(Z)V

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;->onClick(Landroid/view/View;)V

    .line 936
    :goto_28
    return-void

    .line 924
    :cond_29
    const-string v0, ""

    goto :goto_1a

    .line 929
    :cond_2c
    sget v1, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3b

    .line 930
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 931
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->create(Landroid/content/Context;)V

    goto :goto_28

    .line 934
    :cond_3b
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_28
.end method
