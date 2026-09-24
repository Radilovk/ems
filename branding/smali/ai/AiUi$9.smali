.class Lcom/isaigu/gymapp/ai/AiUi$9;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenProfile(Landroid/content/Context;)V
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
    .line 590
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$9;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiUi$9;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(I)V
    .registers 5

    .prologue
    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$9;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiUi$9;->val$total:I

    mul-int/lit8 v2, p1, 0x3c

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$9;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 595
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 596
    return-void
.end method
