.class final Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;
.super Ljava/lang/Object;
.source "SignalProbe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SignalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taps"
.end annotation


# instance fields
.field count:I

.field first:J

.field final icon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final item:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->item:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->icon:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->watching:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$000()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 69
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->stop()V

    .line 70
    iput v6, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->count:I

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->first:J

    .line 84
    :cond_14
    :goto_14
    return-void

    .line 74
    :cond_15
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->first:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4b0

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 75
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->first:J

    .line 76
    iput v6, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->count:I

    .line 78
    :cond_23
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->count:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    .line 79
    iput v6, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->count:I

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;->item:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 81
    if-eqz v0, :cond_44

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_44

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 82
    :goto_40
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SignalProbe;->begin(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_14

    .line 81
    :cond_44
    const/4 v0, 0x0

    goto :goto_40
.end method
