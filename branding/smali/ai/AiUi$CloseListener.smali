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

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 269
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_c

    .line 272
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$000()V

    .line 282
    :goto_b
    return-void

    .line 275
    :cond_c
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_14

    .line 276
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->closeReport()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$100()V

    goto :goto_b

    .line 279
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 280
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$000()V

    .line 281
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$200()V

    goto :goto_b
.end method
