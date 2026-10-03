.class final Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;
.super Ljava/lang/Object;
.source "ScaleSources.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Turn"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleSources;)V
    .registers 2

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    .line 470
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    sub-int v0, p4, p2

    if-lez v0, :cond_20

    sub-int v0, p5, p3

    sub-int v3, p4, p2

    if-le v0, v3, :cond_21

    move v0, v1

    :goto_d
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->portrait:Z

    if-eq v0, v3, :cond_20

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    sub-int v3, p5, p3

    sub-int v4, p4, p2

    if-le v3, v4, :cond_23

    :goto_1b
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->portrait:Z

    .line 476
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 478
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 474
    goto :goto_d

    :cond_23
    move v1, v2

    .line 475
    goto :goto_1b
.end method

.method public run()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->build()V

    .line 483
    return-void
.end method
