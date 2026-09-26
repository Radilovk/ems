.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;
.super Ljava/lang/Object;
.source "XiaomiBandRealtimeStartRunnable.java"

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
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onConfigToStartDelay()V

    .line 14
    return-void
.end method
