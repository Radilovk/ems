.class final Lcom/isaigu/gymapp/ai/FocusBoard$AllClick;
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
    name = "AllClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 250
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 251
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->pickOnly(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 252
    const-string v0, ""

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    .line 254
    return-void
.end method
