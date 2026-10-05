.class final Lcom/isaigu/gymapp/train/model/SoftRamp$Step;
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
    name = "Step"
.end annotation


# instance fields
.field final f:D

.field final g:I

.field final item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field final last:Z

.field final workLength:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;IIDZ)V
    .registers 7

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 186
    iput p2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->g:I

    .line 187
    iput p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->workLength:I

    .line 188
    iput-wide p4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->f:D

    .line 189
    iput-boolean p6, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->last:Z

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->g:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 211
    :goto_a
    return-void

    .line 198
    :cond_b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->last:Z

    if-eqz v0, :cond_37

    .line 199
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$000()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget v3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->workLength:I

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->f:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 208
    :catch_30
    move-exception v0

    .line 209
    const-string v1, "SoftRamp.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 201
    :cond_37
    :try_start_37
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$000()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->isBusy()Z
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_4d} :catch_30

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a
.end method
