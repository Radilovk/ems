.class final Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;
.super Ljava/lang/Object;
.source "SoftRamp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/model/SoftRamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fall"
.end annotation


# instance fields
.field final downMs:I

.field final g:I

.field final item:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;II)V
    .registers 4

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 367
    iput p2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->g:I

    .line 368
    iput p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->downMs:I

    .line 369
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->g:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 383
    :goto_a
    return-void

    .line 377
    :cond_b
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$000()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 378
    const/4 v1, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->downMs:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # invokes: Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$200(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 379
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const-wide/16 v2, 0x0

    # invokes: Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$300(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_a

    .line 380
    :catch_29
    move-exception v0

    .line 381
    const-string v1, "SoftRamp.fall"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
