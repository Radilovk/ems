.class final Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;
.super Ljava/lang/Object;
.source "VoiceUsb.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Port"
.end annotation


# instance fields
.field final c:Landroid/hardware/usb/UsbDeviceConnection;

.field final in:Landroid/hardware/usb/UsbEndpoint;

.field final out:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .registers 4

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->c:Landroid/hardware/usb/UsbDeviceConnection;

    .line 235
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->in:Landroid/hardware/usb/UsbEndpoint;

    .line 236
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->out:Landroid/hardware/usb/UsbEndpoint;

    .line 237
    return-void
.end method


# virtual methods
.method public read([BI)I
    .registers 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->c:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->in:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    .line 257
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public sleep(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 263
    return-void
.end method

.method public write([B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    move v0, v1

    .line 242
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_28

    .line 243
    const/16 v2, 0x1000

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 244
    new-array v3, v2, [B

    .line 245
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->c:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;->out:Landroid/hardware/usb/UsbEndpoint;

    const/16 v6, 0x7d0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 247
    if-gtz v2, :cond_26

    .line 248
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "usb write"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_26
    add-int/2addr v0, v2

    .line 251
    goto :goto_2

    .line 252
    :cond_28
    return-void
.end method
