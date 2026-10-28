.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;
.super Ljava/lang/Object;
.source "VoiceLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# static fields
.field static final CHANGED:I = 0x3

.field static final CONNECTION:I = 0x1

.field static final OP_DONE:I = 0x4

.field static final SERVICES:I = 0x2


# instance fields
.field final a:I

.field final b:I

.field final data:[B

.field final g:Landroid/bluetooth/BluetoothGatt;

.field final kind:I


# direct methods
.method constructor <init>(ILandroid/bluetooth/BluetoothGatt;II[B)V
    .registers 6

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->kind:I

    .line 483
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    .line 484
    iput p3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->a:I

    .line 485
    iput p4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->b:I

    .line 486
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->data:[B

    .line 487
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 492
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->a:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->b:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onConnection(Landroid/bluetooth/BluetoothGatt;II)V

    .line 508
    :cond_e
    :goto_e
    return-void

    .line 494
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-ne v0, v1, :cond_e

    .line 496
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onServices(Landroid/bluetooth/BluetoothGatt;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_e

    .line 505
    :catch_20
    move-exception v0

    .line 506
    const-string v1, "VoiceLink.event"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 498
    :cond_27
    :try_start_27
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->data:[B

    if-eqz v0, :cond_e

    .line 500
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;->data:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onBytes([B)V

    goto :goto_e

    .line 503
    :cond_36
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onWriteDone()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_39} :catch_20

    goto :goto_e
.end method
