.class final Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceUsb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Receiver"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v0, "com.isaigu.gymapp.XEMS_VOICE_USB"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    if-nez v0, :cond_12

    .line 369
    :cond_11
    :goto_11
    return-void

    .line 364
    :cond_12
    const-string v0, "permission"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 365
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 367
    :cond_25
    const/4 v0, 0x6

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    goto :goto_11
.end method
