.class Lcom/isaigu/gymapp/ai/AiUi$11;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenClient(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 649
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_8
    # setter for: Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$602(Z)Z

    .line 650
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 651
    return-void

    .line 649
    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method
