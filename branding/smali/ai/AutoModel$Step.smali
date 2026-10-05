.class public final Lcom/isaigu/gymapp/ai/AutoModel$Step;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation


# instance fields
.field public hz:I

.field public offS:I

.field public onS:I

.field public pauseHz:I

.field public pauseSigma:D

.field public pwUs:I

.field public rampDownMs:I

.field public rampUpMs:I

.field public sigma:D

.field public zones:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 183
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 186
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 187
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 188
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 189
    iput p4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 190
    return-void
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 193
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 194
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_1d
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 196
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 197
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 198
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 199
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 200
    return-object v1

    .line 195
    :cond_30
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public durationS()I
    .registers 4

    .prologue
    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isTetanic()Z
    .registers 3

    .prologue
    .line 204
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
