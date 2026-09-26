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

    .line 576
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$7;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(I)V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$7;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    add-int/2addr v1, p1

    const/16 p1, 0x5a

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0xe

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 580
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 581
    return-void
.end method
