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

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiUi$StepListener;->dir:I

    .line 370
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiUi$StepListener;->dir:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$200(Landroid/content/Context;I)V

    .line 375
    return-void
.end method
