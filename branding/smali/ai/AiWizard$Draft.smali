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
.field final btn:Lcom/isaigu/gymapp/ai/TalkButton;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/TalkButton;)V
    .registers 2

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Draft;->btn:Lcom/isaigu/gymapp/ai/TalkButton;

    .line 965
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 977
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 978
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Draft;->btn:Lcom/isaigu/gymapp/ai/TalkButton;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setSend(Z)V

    .line 979
    return-void

    .line 977
    :cond_1b
    const-string v0, ""

    goto :goto_6

    .line 978
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 969
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 973
    return-void
.end method
