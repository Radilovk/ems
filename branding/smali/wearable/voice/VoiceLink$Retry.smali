.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Retry;
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
    name = "Retry"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 536
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->connectKnown()V

    .line 539
    :cond_b
    return-void
.end method
