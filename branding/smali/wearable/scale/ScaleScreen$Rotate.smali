.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Rotate"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1724
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1725
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1729
    sub-int v0, p4, p2

    if-lez v0, :cond_20

    sub-int v0, p5, p3

    sub-int v3, p4, p2

    if-le v0, v3, :cond_21

    move v0, v1

    :goto_d
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    if-eq v0, v3, :cond_20

    .line 1730
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    sub-int v3, p5, p3

    sub-int v4, p4, p2

    if-le v3, v4, :cond_23

    :goto_1b
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->portrait:Z

    .line 1731
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1733
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 1729
    goto :goto_d

    :cond_23
    move v1, v2

    .line 1730
    goto :goto_1b
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1738
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->arrange()V

    .line 1739
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->build()V

    .line 1740
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 1744
    :goto_10
    return-void

    .line 1741
    :catch_11
    move-exception v0

    .line 1742
    const-string v1, "ScaleScreen.rotate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method
