.class final Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;
.super Ljava/lang/Object;
.source "XemsNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MenuLayer"
.end annotation


# instance fields
.field private final host:Landroid/view/ViewGroup;

.field private final layer:Landroid/view/View;

.field private showing:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->showing:Z

    .line 787
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->host:Landroid/view/ViewGroup;

    .line 788
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->layer:Landroid/view/View;

    .line 789
    return-void
.end method


# virtual methods
.method dismiss()V
    .registers 3

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->showing:Z

    if-nez v0, :cond_5

    .line 806
    :goto_4
    return-void

    .line 799
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->showing:Z

    .line 801
    :try_start_8
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->host:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->layer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_1b

    .line 804
    :goto_f
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$102(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsNav;->menuClosedAt:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$202(J)J

    goto :goto_4

    .line 802
    :catch_1b
    move-exception v0

    goto :goto_f
.end method

.method isShowing()Z
    .registers 2

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->showing:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->layer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
