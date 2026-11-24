.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$Dismissed;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dismissed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 412
    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->HIDE:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    # setter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$502(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 414
    # setter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$602(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 415
    # setter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$002(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 416
    # setter for: Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$402(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 417
    return-void
.end method
