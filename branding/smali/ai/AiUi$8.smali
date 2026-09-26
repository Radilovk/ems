.class Lcom/isaigu/gymapp/ai/AiUi$8;
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

    .line 584
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$8;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(I)V
    .registers 7

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$8;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-wide v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x23

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 588
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 589
    return-void
.end method
