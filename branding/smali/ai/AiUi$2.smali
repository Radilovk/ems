.class Lcom/isaigu/gymapp/ai/AiUi$2;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 478
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$2;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .registers 4

    .prologue
    .line 481
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$2;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-nez p1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    :goto_6
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 482
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 483
    return-void

    .line 481
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_6
.end method
