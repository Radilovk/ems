.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V
    .registers 2

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 695
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 699
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-eqz v0, :cond_7

    .line 712
    :goto_6
    return-void

    .line 702
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    if-nez v0, :cond_14

    .line 703
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->find(Landroid/content/Context;)V

    .line 705
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    if-eqz v0, :cond_43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-wide v2, v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_43

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 711
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 708
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-nez v0, :cond_39

    .line 709
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_39
.end method
