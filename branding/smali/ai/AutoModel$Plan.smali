.class public final Lcom/isaigu/gymapp/ai/AutoModel$Plan;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plan"
.end annotation


# instance fields
.field public cr10Hi:I

.field public cr10Lo:I

.field public doublePulseAllowed:Z

.field public envMax:D

.field public hrCap:I

.field public hrMax:I

.field public hrRest:I

.field public hrRestMeasured:Z

.field public hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

.field public input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

.field public final notesBg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final notesEn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final phases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;"
        }
    .end annotation
.end field

.field public phiMax:D

.field public program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

.field public qBudget:D

.field public qPlan:D

.field public totalS:I

.field public xCap:D

.field public xHi:D

.field public xLo:D

.field public zoneDelta:I

.field public final zoneLocked:[Z

.field public final zoneMax:[I

.field public zones:[I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0xa

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    .line 239
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    .line 241
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 242
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    .line 243
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    .line 245
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    .line 246
    const/16 v0, 0x14

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    .line 249
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 251
    const/16 v0, 0x46

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    .line 253
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xLo:D

    .line 254
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesBg:Ljava/util/List;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesEn:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public corridorHiHr()I
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrAt(D)I

    move-result v0

    goto :goto_9
.end method

.method public corridorLoHr()I
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xLo:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xLo:D

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrAt(D)I

    move-result v0

    goto :goto_9
.end method

.method public hrAt(D)I
    .registers 8

    .prologue
    .line 266
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    int-to-double v0, v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public note(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesBg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesEn:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method
