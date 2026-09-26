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

    .line 446
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 449
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 450
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 451
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 453
    :cond_18
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p1, v0, :cond_24

    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$g:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p1, v0, :cond_2a

    .line 454
    :cond_24
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 456
    :cond_2a
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$1;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 457
    const/4 p1, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 458
    return-void
.end method
