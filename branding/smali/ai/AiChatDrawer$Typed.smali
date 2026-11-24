.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$Typed;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Typed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 394
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->touched()V

    .line 395
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$400()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 396
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$400()Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_23

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    const-string v0, "\u27a4"

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_22
    return-void

    .line 396
    :cond_23
    const-string v0, "\ud83c\udfa4"

    goto :goto_1f
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 386
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 390
    return-void
.end method
