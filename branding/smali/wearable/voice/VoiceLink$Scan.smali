.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;
.super Ljava/lang/Object;
.source "VoiceLink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Scan"
.end annotation


# instance fields
.field final adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 409
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 6

    .prologue
    .line 414
    :try_start_0
    invoke-static {p1, p3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->nameOf(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_18

    const-string v1, "XEMS Voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 416
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 420
    :cond_18
    :goto_18
    return-void

    .line 418
    :catch_19
    move-exception v0

    goto :goto_18
.end method
