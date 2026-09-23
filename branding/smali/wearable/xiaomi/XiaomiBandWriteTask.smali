.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteTask;
.super Ljava/lang/Object;
.source "XiaomiBandWriteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

.field private final frame:[B


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;[B)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 9
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteTask;->frame:[B

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteTask;->frame:[B

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeRaw([B)V

    .line 15
    return-void
.end method
