.class Lcom/isaigu/gymapp/SoftKeyBoardListener$1;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/SoftKeyBoardListener;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/SoftKeyBoardListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/SoftKeyBoardListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;->this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 38
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;->this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-static {v4}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->access$000(Lcom/isaigu/gymapp/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 41
    iget-object v4, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;->this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-static {v4}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->access$100(Lcom/isaigu/gymapp/SoftKeyBoardListener;)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 43
    iget-object v4, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;->this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-static {v4}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->access$100(Lcom/isaigu/gymapp/SoftKeyBoardListener;)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v2, v4, v5

    .line 44
    .local v2, "screenKeyboardHeight":I
    const/16 v4, 0x32

    if-le v2, v4, :cond_2

    const/4 v0, 0x1

    .line 46
    .local v0, "isKeyboardShow":Z
    :goto_0
    const/4 v3, 0x0

    .line 47
    .local v3, "yValue":I
    if-eqz v0, :cond_0

    .line 48
    neg-int v4, v2

    div-int/lit8 v3, v4, 0x2

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;->this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-static {v4}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->access$200(Lcom/isaigu/gymapp/SoftKeyBoardListener;)Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;->this$0:Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-static {v4}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->access$200(Lcom/isaigu/gymapp/SoftKeyBoardListener;)Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;->onKeyboardChange(ZI)V

    .line 61
    .end local v0    # "isKeyboardShow":Z
    .end local v2    # "screenKeyboardHeight":I
    .end local v3    # "yValue":I
    :cond_1
    return-void

    .line 44
    .restart local v2    # "screenKeyboardHeight":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
