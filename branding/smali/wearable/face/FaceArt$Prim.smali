.class public final Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;
.super Ljava/lang/Object;
.source "FaceArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prim"
.end annotation


# instance fields
.field public alpha:F

.field public dashed:Z

.field public fill:Z

.field public final path:[F

.field public final role:I

.field public final text:Ljava/lang/String;

.field public width:F

.field public final x:F

.field public final y:F


# direct methods
.method constructor <init>(ILjava/lang/String;FF)V
    .registers 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 66
    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 80
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->role:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->path:[F

    .line 82
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->text:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->x:F

    .line 84
    iput p4, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->y:F

    .line 85
    return-void
.end method

.method constructor <init>(I[FZ)V
    .registers 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 66
    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 71
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->role:I

    .line 72
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->path:[F

    .line 73
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->fill:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->text:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->x:F

    .line 76
    iput v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->y:F

    .line 77
    return-void
.end method
