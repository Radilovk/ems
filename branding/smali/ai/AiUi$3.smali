.class Lcom/isaigu/gymapp/ai/AiUi$3;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;


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

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 531
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(I)V
    .registers 6

    .prologue
    .line 534
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiUi$3;->val$total:I

    mul-int/lit8 v3, p1, 0x3c

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 535
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 536
    return-void
.end method
