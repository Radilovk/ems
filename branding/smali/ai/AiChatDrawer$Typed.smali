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
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 393
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->touched()V

    .line 394
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Lcom/isaigu/gymapp/ai/TalkButton;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$400()Lcom/isaigu/gymapp/ai/TalkButton;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 395
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Lcom/isaigu/gymapp/ai/TalkButton;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$400()Lcom/isaigu/gymapp/ai/TalkButton;

    move-result-object v1

    if-eqz p1, :cond_22

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setSend(Z)V

    .line 397
    :cond_21
    return-void

    .line 395
    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 385
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 389
    return-void
.end method
