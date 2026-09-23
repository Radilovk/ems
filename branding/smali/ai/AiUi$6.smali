.class Lcom/isaigu/gymapp/ai/AiUi$6;
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


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 546
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$6;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(I)V
    .registers 6

    .prologue
    .line 549
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$6;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const/16 v1, 0xe

    const/16 v2, 0x5a

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$6;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 550
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 551
    return-void
.end method
