.class final Lcom/isaigu/gymapp/ai/AiUi$ToPlan;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToPlan"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 918
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$800()I

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 919
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 921
    :cond_1a
    return-void
.end method
