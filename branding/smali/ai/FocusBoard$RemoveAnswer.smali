.class final Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RemoveAnswer"
.end annotation


# instance fields
.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private final q:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1653
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;->q:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1654
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1655
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1659
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1661
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;->q:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_14

    .line 1664
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v0, :cond_13

    .line 1665
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->remove(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1667
    :cond_13
    return-void

    .line 1662
    :catch_14
    move-exception v0

    goto :goto_a
.end method
