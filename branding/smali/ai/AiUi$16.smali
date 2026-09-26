.class Lcom/isaigu/gymapp/ai/AiUi$16;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

.field final synthetic val$verdict:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V
    .registers 3

    .line 690
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$verdict:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean p1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    .line 694
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$verdict:Landroid/widget/LinearLayout;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(Landroid/widget/LinearLayout;)V

    .line 695
    return-void
.end method
