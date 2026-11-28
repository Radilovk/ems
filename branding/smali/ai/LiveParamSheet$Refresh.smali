.class final Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;
.super Ljava/lang/Object;
.source "LiveParamSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/LiveParamSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    :goto_6
    return-void

    .line 172
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canShowLive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->close()V

    goto :goto_6

    .line 176
    :cond_11
    # invokes: Lcom/isaigu/gymapp/ai/LiveParamSheet;->update()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->access$300()V

    .line 177
    # getter for: Lcom/isaigu/gymapp/ai/LiveParamSheet;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method
