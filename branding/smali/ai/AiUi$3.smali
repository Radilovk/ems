.class Lcom/isaigu/gymapp/ai/AiUi$3;
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
    .line 489
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .registers 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-nez p1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    :goto_6
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 493
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 494
    return-void

    .line 492
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_6
.end method
