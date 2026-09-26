.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;
.super Ljava/lang/Object;
.source "XiaomiBandRfcommPort.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Write"
.end annotation


# instance fields
.field private final data:[B

.field private final port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;[B)V
    .registers 3

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;

    .line 174
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;->data:[B

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;->data:[B

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writeNow([B)V

    .line 180
    return-void
.end method
