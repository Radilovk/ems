.class final Lcom/isaigu/gymapp/ai/AiUi$CloseListener;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p1

    .line 268
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p1, v0, :cond_c

    .line 270
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$000()V

    .line 271
    return-void

    .line 273
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 274
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$000()V

    .line 275
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$100()V

    .line 276
    return-void
.end method
