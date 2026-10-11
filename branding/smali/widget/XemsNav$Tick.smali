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
    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1307
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$500()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1321
    :goto_6
    return-void

    .line 1311
    :cond_7
    :try_start_7
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$600()V

    .line 1312
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()I

    move-result v0

    const v1, 0x7f0900ec

    if-ne v0, v1, :cond_1d

    .line 1313
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$800(Landroid/view/View;)V

    .line 1314
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V

    .line 1315
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1d} :catch_27

    .line 1320
    :cond_1d
    :goto_1d
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$900()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 1317
    :catch_27
    move-exception v0

    .line 1318
    const-string v1, "XemsNav.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
