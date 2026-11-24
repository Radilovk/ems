.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$Hide;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hide"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 290
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 300
    :goto_6
    return-void

    .line 293
    :cond_7
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_2d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 294
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$000()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3e

    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3e

    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3e

    :cond_2d
    const/4 v0, 0x1

    .line 295
    :goto_2e
    if-eqz v0, :cond_40

    .line 296
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->HIDE:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 294
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2e

    .line 299
    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->close()V

    goto :goto_6
.end method
