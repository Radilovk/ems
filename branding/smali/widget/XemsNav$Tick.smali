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

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 585
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 586
    return-void

    .line 589
    :cond_7
    :try_start_7
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$100()V

    .line 590
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$200()I

    move-result v0

    const v1, 0x7f0900ec

    if-ne v0, v1, :cond_1a

    .line 591
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$300(Landroid/view/View;)V

    .line 592
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 596
    :cond_1a
    goto :goto_21

    .line 594
    :catchall_1b
    move-exception v0

    .line 595
    const-string v1, "XemsNav.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    :goto_21
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    return-void
.end method
