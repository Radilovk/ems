.class Lcom/isaigu/gymapp/ai/AiUi$16;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenClient(Landroid/content/Context;)V
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
    .line 690
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean p1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    .line 694
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 695
    return-void
.end method
