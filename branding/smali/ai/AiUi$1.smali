.class Lcom/isaigu/gymapp/ai/AiUi$1;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field final synthetic val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Goal;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 434
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 438
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 441
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_2a

    .line 442
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 444
    :cond_2a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 445
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 446
    return-void
.end method
