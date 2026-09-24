.class final Lcom/isaigu/gymapp/widget/XemsNav$Tick;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 533
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 545
    :goto_6
    return-void

    .line 537
    :cond_7
    :try_start_7
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$100()V

    .line 538
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$200()I

    move-result v0

    const v1, 0x7f0900ec

    if-ne v0, v1, :cond_17

    .line 539
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$300(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_21

    .line 544
    :cond_17
    :goto_17
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 541
    :catch_21
    move-exception v0

    .line 542
    const-string v1, "XemsNav.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method
