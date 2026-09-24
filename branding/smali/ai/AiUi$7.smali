.class Lcom/isaigu/gymapp/ai/AiUi$7;
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
    .line 556
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$7;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(I)V
    .registers 12

    .prologue
    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$7;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-wide/16 v2, 0x23

    const-wide/16 v4, 0xc8

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$7;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 560
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 561
    return-void
.end method
