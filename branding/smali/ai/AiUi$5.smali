.class Lcom/isaigu/gymapp/ai/AiUi$5;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;


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
    .line 525
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$5;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .registers 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$5;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 529
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 530
    return-void
.end method
