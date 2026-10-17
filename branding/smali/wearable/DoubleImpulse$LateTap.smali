.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LateTap"
.end annotation


# instance fields
.field final it:Lcom/isaigu/gymapp/train/model/TrainItem;

.field final key:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;->it:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 860
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;->key:Ljava/lang/ref/WeakReference;

    .line 861
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;->it:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->button(Lcom/isaigu/gymapp/train/model/TrainItem;)Landroid/view/View;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_16

    .line 866
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;->key:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 868
    :cond_16
    if-eqz v0, :cond_1d

    .line 869
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;->it:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->click(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    .line 871
    :cond_1d
    return-void
.end method
