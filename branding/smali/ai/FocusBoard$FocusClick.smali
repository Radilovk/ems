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
    .line 2013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2014
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 2015
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2019
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2020
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2702(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 2021
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2802(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 2022
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_21

    .line 2023
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->pickOnly(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 2024
    const-string v0, ""

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 2026
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2900(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$3000(IZ)Landroid/view/View;

    .line 2027
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300()V

    .line 2028
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    .line 2029
    return-void
.end method
