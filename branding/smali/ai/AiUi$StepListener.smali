.class final Lcom/isaigu/gymapp/ai/AiUi$StepListener;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StepListener"
.end annotation


# instance fields
.field private final dir:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiUi$StepListener;->dir:I

    .line 358
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiUi$StepListener;->dir:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$200(Landroid/content/Context;I)V

    .line 363
    return-void
.end method
