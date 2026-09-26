.class Lcom/isaigu/gymapp/ai/AiUi$33;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V
    .registers 2

    .line 1763
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$33;->val$cb:Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1766
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$33;->val$cb:Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;->onDelta(I)V

    .line 1767
    return-void
.end method
