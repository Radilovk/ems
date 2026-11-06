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
.field public hz:I

.field public final level:[F

.field public muscle:Z

.field public nogo:Z

.field public pads:Z

.field public placing:Z

.field public final side:[Z

.field public t:F

.field public target:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    .line 44
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    .line 46
    new-array v0, v2, [Z

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    .line 47
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    .line 50
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    .line 53
    const/16 v0, 0x46

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    return-void

    .line 46
    :array_1c
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method
