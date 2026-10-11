.class final Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RowsAfresh"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 881
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Landroid/view/View;

    move-result-object v0

    const-string v1, "recyclerView"

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1000(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 882
    :goto_10
    if-eqz v0, :cond_18

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 897
    :cond_18
    :goto_18
    return-void

    .line 881
    :cond_19
    const/4 v0, 0x0

    goto :goto_10

    .line 885
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdapter"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 886
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRecycledViewPool"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 887
    if-eqz v2, :cond_58

    .line 888
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "clear"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_58
    if-eqz v1, :cond_18

    .line 891
    const-string v2, "android.support.v7.widget.RecyclerView$Adapter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 892
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setAdapter"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_79} :catch_7a

    goto :goto_18

    .line 894
    :catch_7a
    move-exception v0

    .line 895
    const-string v1, "FocusBoard.rowsAfresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method
