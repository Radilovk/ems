.class final Lcom/isaigu/gymapp/ai/FocusBoard$StopClick;
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
    name = "StopClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 239
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 240
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 242
    :cond_15
    const-string v0, "stop"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->press(Ljava/lang/String;)Z

    .line 244
    :cond_1a
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300()V

    .line 245
    return-void
.end method
