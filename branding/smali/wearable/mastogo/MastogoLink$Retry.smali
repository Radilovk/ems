.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;
.super Ljava/lang/Object;
.source "MastogoLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Retry"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V
    .registers 2

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 361
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closed:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_11

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->connect()V

    .line 368
    :cond_11
    return-void
.end method
