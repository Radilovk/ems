.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;
.super Ljava/lang/Object;
.source "XiaomiBandAuthStartRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "auth_start"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattSendAuthNonce()V

    .line 15
    return-void
.end method
