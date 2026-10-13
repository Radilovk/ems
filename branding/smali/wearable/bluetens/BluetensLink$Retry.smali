.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Retry;
.super Ljava/lang/Object;
.source "BluetensLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Retry"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)V
    .registers 2

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Retry;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 354
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Retry;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->closed:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Retry;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_11

    .line 359
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Retry;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->connect()V

    .line 361
    :cond_11
    return-void
.end method
