.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/isaigu/gymapp/ai/VoiceInput$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Send"
.end annotation


# instance fields
.field c:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 349
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;->c:Landroid/content/Context;

    .line 351
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$000()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_35

    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_35

    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_25
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    .line 353
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;->c:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/ai/AiChatDrawer;->fire(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    :goto_34
    return-void

    .line 351
    :cond_35
    const-string v0, ""

    goto :goto_25

    .line 355
    :cond_38
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;)V

    goto :goto_34
.end method

.method public onText(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 361
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 368
    :cond_d
    :goto_d
    return-void

    .line 364
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->userSpoke(Ljava/lang/String;)V

    .line 365
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAsk:Z

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->refresh()V

    goto :goto_d
.end method
