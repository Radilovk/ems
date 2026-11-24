.class final Lcom/isaigu/gymapp/ai/AiWizard$Draft;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Draft"
.end annotation


# instance fields
.field final btn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Draft;->btn:Landroid/widget/TextView;

    .line 769
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 781
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 782
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Draft;->btn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const-string v0, "\u27a4"

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    return-void

    .line 781
    :cond_1c
    const-string v0, ""

    goto :goto_6

    .line 782
    :cond_1f
    const-string v0, "\ud83c\udfa4"

    goto :goto_18
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 773
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 777
    return-void
.end method
