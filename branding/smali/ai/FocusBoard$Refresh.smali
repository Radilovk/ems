.class final Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1239
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1240
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1702(Z)Z

    .line 1245
    :goto_a
    return-void

    .line 1243
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    .line 1244
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method
