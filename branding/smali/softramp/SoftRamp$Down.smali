.class final Lcom/isaigu/gymapp/train/model/SoftRamp$Down;
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
    name = "Down"
.end annotation


# instance fields
.field final downMs:I

.field final g:I

.field final item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field final workLength:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;III)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 196
    iput p2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->g:I

    .line 197
    iput p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->workLength:I

    .line 198
    iput p4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->downMs:I

    .line 199
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->g:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    return-void

    .line 206
    :cond_1
    const-wide/16 v0, 0x2

    const-wide/16 v2, 0x14

    iget v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->downMs:I

    int-to-double v4, v4

    const-wide v6, 0x4062c00000000000L    # 150.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 207
    const/4 v0, 0x1

    move v7, v0

    :goto_0
    if-gt v7, v8, :cond_0

    .line 208
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v7

    add-int/lit8 v4, v8, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double v4, v0, v2

    .line 209
    add-int/lit8 v0, v7, -0x1

    iget v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->downMs:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, v8

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$100()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->g:I

    iget v3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;->workLength:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;IIDZ)V

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method
