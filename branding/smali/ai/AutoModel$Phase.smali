.class public final Lcom/isaigu/gymapp/ai/AutoModel$Phase;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase"
.end annotation


# instance fields
.field public durationS:I

.field public envEnd:D

.field public envStart:D

.field public hintBg:Ljava/lang/String;

.field public hintEn:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public nameBg:Ljava/lang/String;

.field public nameEn:Ljava/lang/String;

.field public phiEnd:D

.field public phiStart:D

.field public final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Step;",
            ">;"
        }
    .end annotation
.end field

.field public wave:Z

.field public window:Lcom/isaigu/gymapp/ai/AutoModel$Window;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 196
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 198
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 199
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->fixed()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public envAt(D)D
    .registers 12

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 216
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public hasTetanic()Z
    .registers 7

    .prologue
    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 225
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_6

    .line 226
    const/4 v0, 0x1

    .line 229
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isCooldown()Z
    .registers 3

    .prologue
    .line 220
    const-string v0, "COOLDOWN"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public phiAt(D)D
    .registers 12

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 211
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
