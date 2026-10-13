.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;
.super Ljava/lang/Object;
.source "BluetensLok.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Block"
.end annotation


# instance fields
.field public cluster:I

.field public freq10:I

.field public impulse:I

.field public interval:I

.field public repeat:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    .line 24
    const/16 v0, 0x21c

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    .line 26
    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    .line 24
    const/16 v0, 0x21c

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    .line 26
    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    .line 31
    iget v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    .line 32
    iget v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    .line 33
    iget v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    .line 34
    iget v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    .line 35
    iget v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    .line 36
    return-void
.end method


# virtual methods
.method public ms()D
    .registers 5

    .prologue
    .line 39
    const-wide v0, 0x40c3880000000000L    # 10000.0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
