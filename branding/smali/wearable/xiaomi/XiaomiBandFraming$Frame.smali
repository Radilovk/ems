.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
.super Ljava/lang/Object;
.source "XiaomiBandFraming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Frame"
.end annotation


# instance fields
.field final chunkId:I

.field final encrypted:Z

.field final kind:Ljava/lang/String;

.field final numChunks:I

.field final payload:[B

.field final result:I

.field final subtype:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Z[BIIII)V
    .registers 8

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    .line 77
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    .line 78
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    .line 79
    iput p4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->numChunks:I

    .line 80
    iput p5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    .line 81
    iput p6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->subtype:I

    .line 82
    iput p7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->result:I

    .line 83
    return-void
.end method

.method static ack(I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    const-string v1, "ack"

    const/4 v3, 0x0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;-><init>(Ljava/lang/String;Z[BIIII)V

    return-object v0
.end method

.method static chunkAck(I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    const-string v1, "chunk_ack"

    const/4 v3, 0x0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;-><init>(Ljava/lang/String;Z[BIIII)V

    return-object v0
.end method

.method static chunkData(I[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    const-string v1, "chunk_data"

    move-object v3, p1

    move v4, v2

    move v5, p0

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;-><init>(Ljava/lang/String;Z[BIIII)V

    return-object v0
.end method

.method static chunkStart(ZI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 86
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    const-string v1, "chunk_start"

    const/4 v3, 0x0

    move v2, p0

    move v4, p1

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;-><init>(Ljava/lang/String;Z[BIIII)V

    return-object v0
.end method

.method static single(Z[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 98
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    const-string v1, "single"

    move v2, p0

    move-object v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;-><init>(Ljava/lang/String;Z[BIIII)V

    return-object v0
.end method

.method static unknown()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    const-string v1, "unknown"

    const/4 v3, 0x0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;-><init>(Ljava/lang/String;Z[BIIII)V

    return-object v0
.end method
