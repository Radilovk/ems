.class final Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;
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
    name = "ModePick"
.end annotation


# instance fields
.field private final mode:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;->mode:I

    .line 941
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 945
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 946
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->closeModeMenu()V

    .line 947
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_15

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1500(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;->mode:I

    if-ne v0, v1, :cond_15

    .line 953
    :goto_14
    return-void

    .line 951
    :cond_15
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1600()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;->mode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->press(Ljava/lang/String;)Z

    .line 952
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300()V

    goto :goto_14
.end method
