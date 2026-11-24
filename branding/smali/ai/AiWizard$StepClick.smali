.class final Lcom/isaigu/gymapp/ai/AiWizard$StepClick;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StepClick"
.end annotation


# instance fields
.field final dir:I

.field final which:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;->which:I

    .line 543
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;->dir:I

    .line 544
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 548
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 549
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;->which:I

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;->dir:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Step;->onStep(I)V

    .line 550
    return-void
.end method
