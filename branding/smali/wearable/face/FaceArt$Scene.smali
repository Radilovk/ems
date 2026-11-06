.class public final Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;
.super Ljava/lang/Object;
.source "FaceArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scene"
.end annotation


# instance fields
.field public final dim:[Z

.field public drain:Z

.field public hz:I

.field public final label:[Ljava/lang/String;

.field public final level:[F

.field public muscle:Z

.field public nogo:Z

.field public final on:[Z

.field public outline:Z

.field public pads:Z

.field public placing:Z

.field public sensory:Z

.field public small:Z

.field public t:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xa

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    .line 52
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->label:[Ljava/lang/String;

    .line 54
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->dim:[Z

    .line 55
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    .line 58
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    .line 61
    const/16 v0, 0x46

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 74
    move v0, v1

    :goto_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1b

    .line 75
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    aput-boolean v1, v2, v0

    .line 76
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 77
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->label:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 78
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->dim:[Z

    aput-boolean v1, v2, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_1b
    return-void
.end method
