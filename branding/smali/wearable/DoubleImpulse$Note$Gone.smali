.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Gone;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gone"
.end annotation


# instance fields
.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;)V
    .registers 3

    .prologue
    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Gone;->ref:Ljava/lang/ref/WeakReference;

    .line 1214
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Gone;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1218
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->access$300()Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    move-result-object v2

    if-ne v1, v2, :cond_25

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_25

    .line 1219
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1221
    :cond_25
    return-void
.end method
