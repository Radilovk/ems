.class final Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;
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
    name = "FocusClick"
.end annotation


# instance fields
.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1664
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1665
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1669
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1670
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2002(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1671
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2102(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1672
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2200(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v1, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2300(IZ)Landroid/view/View;

    .line 1673
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200()V

    .line 1674
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    .line 1675
    return-void
.end method
