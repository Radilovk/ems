.class final Lcom/isaigu/gymapp/ai/WakeListener$Mic;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mic"
.end annotation


# instance fields
.field final gen:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    .line 232
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 236
    .line 238
    :goto_2
    :try_start_2
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_52

    .line 239
    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_16
    .catchall {:try_start_2 .. :try_end_15} :catchall_e2

    goto :goto_2

    .line 263
    :catch_16
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .line 264
    :goto_19
    :try_start_19
    const-string v0, "wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 266
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$300()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 267
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_e6

    .line 270
    :cond_49
    if-eqz v2, :cond_51

    .line 272
    :try_start_4b
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_dd

    .line 275
    :goto_4e
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 278
    :cond_51
    :goto_51
    return-void

    .line 241
    :cond_52
    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    :try_start_57
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 242
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v8, 0x3e80

    .line 243
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_6c} :catch_16
    .catchall {:try_start_57 .. :try_end_6c} :catchall_e2

    .line 244
    :try_start_6c
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 245
    const/16 v1, 0x320

    new-array v2, v1, [S

    .line 246
    :cond_73
    :goto_73
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v1

    if-eqz v1, :cond_d1

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$100()I

    move-result v3

    if-ne v1, v3, :cond_d1

    .line 247
    const/4 v1, 0x0

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    move v1, v7

    .line 248
    :goto_88
    if-ge v1, v3, :cond_73

    .line 249
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    move-result v4

    .line 250
    sget-object v5, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 251
    if-nez v4, :cond_99

    .line 248
    :cond_96
    :goto_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 254
    :cond_99
    if-eqz v5, :cond_ac

    .line 255
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;

    invoke-direct {v8, v5, v4}, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;-><init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_96

    .line 263
    :catch_a8
    move-exception v1

    move-object v2, v0

    goto/16 :goto_19

    .line 256
    :cond_ac
    const/4 v5, 0x1

    if-ne v4, v5, :cond_96

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$300()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 257
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 258
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_c5} :catch_a8
    .catchall {:try_start_6c .. :try_end_c5} :catchall_c6

    goto :goto_73

    .line 270
    :catchall_c6
    move-exception v1

    move-object v2, v0

    :goto_c8
    if-eqz v2, :cond_d0

    .line 272
    :try_start_ca
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_e0

    .line 275
    :goto_cd
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 277
    :cond_d0
    throw v1

    .line 270
    :cond_d1
    if-eqz v0, :cond_51

    .line 272
    :try_start_d3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_d6} :catch_db

    .line 275
    :goto_d6
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto/16 :goto_51

    .line 273
    :catch_db
    move-exception v1

    goto :goto_d6

    :catch_dd
    move-exception v0

    goto/16 :goto_4e

    :catch_e0
    move-exception v0

    goto :goto_cd

    .line 270
    :catchall_e2
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto :goto_c8

    :catchall_e6
    move-exception v0

    move-object v1, v0

    goto :goto_c8
.end method
