.class final Lcom/isaigu/gymapp/ai/AiWizard$Choose;
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
    name = "Choose"
.end annotation


# instance fields
.field final index:I

.field final pick:Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)V
    .registers 3

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Choose;->pick:Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;

    .line 520
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiWizard$Choose;->index:I

    .line 521
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 525
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 526
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Choose;->pick:Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Choose;->index:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;->onIndex(I)V

    .line 527
    return-void
.end method
