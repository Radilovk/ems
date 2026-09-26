.class public final Lcom/isaigu/gymapp/ai/AiModel$Profile;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation


# instance fields
.field public cMed:D

.field public cRate:D

.field public dtHrMs:J

.field public final flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hrAvailable:Z

.field public hrCap:I

.field public hrMax:I

.field public hrRest:I

.field public hrr:I

.field public safetyOnly:Z

.field public sigmaRest:D

.field public xCap:D

.field public xHi:D

.field public xLo:D

.field public xRec:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    .line 99
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cMed:D

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public hrAt(D)I
    .registers 7

    .line 105
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v0, v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrr:I

    int-to-double v2, v2

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public xOf(D)D
    .registers 6

    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrr:I

    if-lez v0, :cond_b

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v1, v1

    sub-double/2addr p1, v1

    int-to-double v0, v0

    div-double/2addr p1, v0

    goto :goto_d

    :cond_b
    const-wide/16 p1, 0x0

    :goto_d
    return-wide p1
.end method
