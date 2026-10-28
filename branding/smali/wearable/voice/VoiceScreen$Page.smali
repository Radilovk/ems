.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;
.implements Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Page"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field bar:Landroid/view/View;

.field barBox:Landroid/widget/FrameLayout;

.field closed:Z

.field final count:[I

.field dots:Landroid/widget/TextView;

.field flash:I

.field flashPct:I

.field floor:I

.field go:Landroid/widget/TextView;

.field got:I

.field heard:Ljava/lang/String;

.field heardColor:I

.field heardMs:J

.field hero:Landroid/widget/TextView;

.field hint:Landroid/widget/TextView;

.field learning:Ljava/lang/String;

.field level:I

.field listed:Z

.field final main:Landroid/os/Handler;

.field mic:Landroid/view/View;

.field micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

.field note:Ljava/lang/String;

.field noteColor:I

.field final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field sens:I

.field sensRow:Landroid/widget/LinearLayout;

.field status:Landroid/widget/TextView;

.field sub:Landroid/widget/TextView;

.field words:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    .line 85
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    .line 96
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    .line 98
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 110
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    .line 111
    return-void
.end method


# virtual methods
.method allLearned()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget v4, v2, v1

    .line 199
    const/4 v5, 0x3

    if-ge v4, v5, :cond_d

    .line 203
    :goto_c
    return v0

    .line 198
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 203
    :cond_10
    const/4 v0, 0x1

    goto :goto_c
.end method

.method dismissed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    .line 557
    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 558
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 559
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->removeListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 561
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 562
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 564
    :cond_1c
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method go()V
    .registers 6

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    .line 385
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->start(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;)V

    .line 400
    :cond_1a
    :goto_1a
    return-void

    .line 390
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 391
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->stopLearning()V

    .line 399
    :goto_22
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_1a

    .line 393
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 394
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_3b

    aget-object v3, v1, v0

    .line 395
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 397
    :cond_3b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->startLearning()V

    goto :goto_22
.end method

.method indexOf(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 207
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 208
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 212
    :goto_10
    return v0

    .line 207
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method nextWord()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 423
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 424
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 425
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 426
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 427
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2713"

    const-string v1, "Done \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 428
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    .line 430
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 443
    :goto_32
    return-void

    .line 433
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 434
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    .line 435
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 437
    if-ltz v0, :cond_4d

    .line 438
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aput v2, v1, v0

    .line 440
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "del "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_32
.end method

.method public onFlash(II)V
    .registers 4

    .prologue
    .line 342
    iput p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 343
    iput p2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flashPct:I

    .line 344
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->find(Landroid/content/Context;)V

    .line 347
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 348
    return-void
.end method

.method public onVoiceLine(Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x2bc

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 487
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 488
    const-string v0, "LIST "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v1

    .line 489
    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_58

    .line 490
    aget-object v3, v2, v0

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 491
    if-lez v3, :cond_40

    .line 492
    aget-object v4, v2, v0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 493
    if-ltz v4, :cond_3d

    .line 494
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget-object v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 489
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 496
    :cond_40
    aget-object v3, v2, v0

    const-string v4, "sens="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 497
    aget-object v3, v2, v0

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    goto :goto_3d

    .line 500
    :cond_58
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->listed:Z

    .line 552
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 553
    :cond_5d
    :goto_5d
    return-void

    .line 501
    :cond_5e
    const-string v0, "REC "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    array-length v0, v2

    if-le v0, v4, :cond_10b

    aget-object v0, v2, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 502
    const-string v0, "ok"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 503
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 505
    if-ltz v0, :cond_91

    .line 506
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    aput v2, v1, v0

    .line 508
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0427\u0443\u0445"

    const-string v2, "Got it"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 509
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 511
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c7

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 514
    :cond_c7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 516
    :cond_d2
    const-string v0, "timeout"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 517
    const-string v0, "\u041d\u0435 \u0442\u0435 \u0447\u0443\u0445 \u2014 \u043a\u0430\u0436\u0438 \u0433\u043e \u043f\u0430\u043a, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v1, "Didn\'t hear it \u2014 again, a little louder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 518
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    .line 519
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5a

    .line 520
    :cond_f8
    const-string v0, "listen"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    if-lez v0, :cond_5a

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    goto/16 :goto_5a

    .line 523
    :cond_10b
    const-string v0, "LVL "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    array-length v0, v2

    if-le v0, v4, :cond_14b

    .line 524
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    .line 525
    aget-object v0, v2, v4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->floor:I

    .line 526
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 527
    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->floor:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 529
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 530
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5d

    .line 532
    :cond_14b
    const-string v0, "CNT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_187

    array-length v0, v2

    if-le v0, v1, :cond_187

    .line 533
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v2

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    :goto_161
    if-gt v1, v2, :cond_174

    .line 536
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v1, v2, :cond_171

    const-string v0, " \u00b7 "

    :goto_16b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_161

    .line 536
    :cond_171
    const-string v0, ""

    goto :goto_16b

    .line 538
    :cond_174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 539
    const v0, -0xc74208

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a

    .line 541
    :cond_187
    const-string v0, "CMD "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    array-length v0, v2

    if-le v0, v1, :cond_1c1

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u2713"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 543
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a

    .line 545
    :cond_1c1
    const-string v0, "NOCOUNT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 546
    const-string v0, "\u041f\u044a\u0440\u0432\u043e: \u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438"

    const-string v1, "First: one, two, three"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 547
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a
.end method

.method public onVoiceState(I)V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 472
    if-eq p1, v1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    :cond_f
    if-ne p1, v1, :cond_27

    .line 477
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 478
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-nez v0, :cond_27

    .line 479
    :cond_24
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 482
    :cond_27
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 483
    return-void
.end method

.method ready()Z
    .registers 3

    .prologue
    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method rec()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-nez v0, :cond_20

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 449
    :cond_20
    return-void
.end method

.method redo(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-nez v0, :cond_7

    .line 413
    :goto_6
    return-void

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 407
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->stopLearning()V

    .line 409
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->startLearning()V

    .line 412
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_6
.end method

.method render()V
    .registers 13

    .prologue
    const/4 v9, 0x2

    const/high16 v2, 0x42300000    # 44.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-eqz v0, :cond_c

    .line 291
    :goto_b
    return-void

    .line 221
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v7

    .line 222
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v7, :cond_79

    const v0, -0xc74208

    :goto_17
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 224
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_26
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 225
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-ltz v0, :cond_7e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_34

    if-nez v7, :cond_7e

    :cond_34
    move v6, v3

    .line 226
    :goto_35
    if-eqz v6, :cond_80

    .line 227
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderFlash()V

    .line 268
    :goto_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderWords()V

    .line 269
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderSens()V

    .line 270
    if-nez v6, :cond_44

    if-nez v7, :cond_25d

    .line 271
    :cond_44
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy()Z

    move-result v0

    if-eqz v0, :cond_228

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-eqz v0, :cond_228

    move v0, v3

    .line 272
    :goto_4f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    if-nez v0, :cond_22b

    :goto_53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 273
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_22e

    const v1, 0x3ee66666    # 0.45f

    :goto_5d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 274
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_231

    const-string v0, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043c\u2026"

    const-string v2, "Loading\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_6f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    if-eqz v6, :cond_292

    const-string v0, ""

    :goto_75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 222
    :cond_79
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_17

    .line 224
    :cond_7c
    const/4 v0, 0x4

    goto :goto_26

    :cond_7e
    move v6, v1

    .line 225
    goto :goto_35

    .line 228
    :cond_80
    if-nez v7, :cond_c9

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0447\u0438\u043f\u0430"

    const-string v4, "Switch the module on"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    if-ne v0, v9, :cond_c0

    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 234
    :cond_c0
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u0433\u043e \u043d\u0430\u0431\u043b\u0438\u0437\u043e \u2014 \u043d\u0438\u0449\u043e \u043d\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u0448"

    const-string v4, "Looking for it \u2014 nothing to press"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 236
    :cond_c9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_15c

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x8

    if-le v0, v8, :cond_119

    move v0, v2

    :goto_ed
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 241
    :goto_101
    const/4 v0, 0x3

    if-ge v2, v0, :cond_122

    .line 242
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    if-ge v2, v0, :cond_11c

    const-string v0, "\u25cf"

    :goto_10a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v2, v9, :cond_11f

    const-string v0, "  "

    :goto_112
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_101

    .line 238
    :cond_119
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_ed

    .line 242
    :cond_11c
    const-string v0, "\u25cb"

    goto :goto_10a

    :cond_11f
    const-string v0, ""

    goto :goto_112

    .line 244
    :cond_122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u0436\u0438 \u0433\u043e \u044f\u0441\u043d\u043e, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e, \u0438 \u0437\u0430\u043c\u044a\u043b\u0447\u0438 \u0437\u0430 \u043c\u0438\u0433"

    const-string v4, "Say it clearly, a little louder, then pause"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    if-eqz v0, :cond_150

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    :goto_140
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    if-eqz v0, :cond_159

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    :goto_14b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3a

    .line 247
    :cond_150
    const-string v0, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v4, "Listening\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_140

    .line 248
    :cond_159
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_14b

    .line 249
    :cond_15c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-nez v0, :cond_19a

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u0414\u0430 \u043d\u0430\u0443\u0447\u0438\u043c \u0433\u043b\u0430\u0441\u0430 \u0442\u0438"

    const-string v4, "Let\'s learn your voice"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "8 \u0434\u0443\u043c\u0438 \u043f\u043e 3 \u043f\u044a\u0442\u0438 \u00b7 \u043e\u043a\u043e\u043b\u043e \u043c\u0438\u043d\u0443\u0442\u0430 \u0438 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0430"

    const-string v4, "8 words, 3 times each \u00b7 about 90 s"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 257
    :cond_19a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    if-eqz v0, :cond_20e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xfa0

    cmp-long v0, v8, v10

    if-gez v0, :cond_20e

    move v0, v3

    .line 258
    :goto_1ac
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_210

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    :goto_1b2
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_1bb

    const/high16 v2, 0x42600000    # 56.0f

    :cond_1bb
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 260
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_219

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    :goto_1c4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    if-eqz v0, :cond_21c

    const-string v2, ""

    :goto_1d4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_225

    if-nez v0, :cond_225

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e: "

    const-string v8, "Last: "

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_202
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3a

    :cond_20e
    move v0, v1

    .line 257
    goto :goto_1ac

    .line 258
    :cond_210
    const-string v4, "\u0421\u043b\u0443\u0448\u0430\u043c"

    const-string v9, "Listening"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b2

    .line 260
    :cond_219
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1c4

    .line 262
    :cond_21c
    const-string v2, "\u041a\u0430\u0436\u0438: \u201e\u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438, \u0441\u0442\u0430\u0440\u0442\u201c \u00b7 \u201e\u043f\u0430\u0443\u0437\u0430\u201c \u00b7 \u201e\u0441\u0442\u043e\u043f\u201c"

    const-string v8, "Say: one, two, three, start \u00b7 pause \u00b7 stop"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d4

    .line 265
    :cond_225
    const-string v0, ""

    goto :goto_202

    :cond_228
    move v0, v1

    .line 271
    goto/16 :goto_4f

    :cond_22b
    move v3, v1

    .line 272
    goto/16 :goto_53

    :cond_22e
    move v1, v5

    .line 273
    goto/16 :goto_5d

    .line 275
    :cond_231
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_23a

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-nez v0, :cond_244

    :cond_23a
    const-string v0, "\u21bb \u041f\u0440\u043e\u0431\u0432\u0430\u0439 \u043f\u0430\u043a"

    const-string v2, "\u21bb Try again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 276
    :cond_244
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_253

    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u0447\u0438\u043f\u0430\u2026"

    const-string v2, "Looking\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 277
    :cond_253
    const-string v0, "\u26a1 \u0417\u0430\u0440\u0435\u0434\u0438 \u0447\u0438\u043f\u0430 \u0441 \u043a\u0430\u0431\u0435\u043b"

    const-string v2, "\u26a1 Load the module (cable)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 279
    :cond_25d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 281
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_27a

    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v2, "\u25a0 Stop recording"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_275
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6f

    .line 282
    :cond_27a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-eqz v0, :cond_289

    const-string v0, "\u21bb \u041d\u0430\u0443\u0447\u0438 \u043d\u0430\u043d\u043e\u0432\u043e"

    const-string v2, "\u21bb Learn again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_275

    .line 283
    :cond_289
    const-string v0, "\u25b6 \u041d\u0430\u0443\u0447\u0438 \u0433\u043b\u0430\u0441\u0430 \u043c\u0438"

    const-string v2, "\u25b6 Learn my voice"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_275

    .line 285
    :cond_292
    if-nez v7, :cond_29e

    const-string v0, "\u041d\u043e\u0432 \u0447\u0438\u043f: \u0432\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u0441 \u043a\u0430\u0431\u0435\u043b \u0432 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u0431\u0443\u0442\u043e\u043d\u0430. \u0417\u0430\u0440\u0435\u0434\u0435\u043d: \u0441\u0430\u043c\u043e \u0433\u043e \u0432\u043a\u043b\u044e\u0447\u0438 \u2014 \u043d\u0430\u043c\u0438\u0440\u0430\u043c \u0433\u043e \u0441\u0430\u043c."

    const-string v2, "New module: plug it into the tablet and press the button. Loaded: just switch it on \u2014 found by itself."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_75

    .line 288
    :cond_29e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_2d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u0443\u043c\u0430 "

    const-string v3, "Word "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_75

    .line 289
    :cond_2d2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-eqz v0, :cond_2e2

    const-string v0, "\u2713 \u0420\u0430\u0431\u043e\u0442\u0438 \u043e\u0442 \u0432\u0441\u044f\u043a\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430, \u0441 \u0432\u0441\u0435\u043a\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u0438 \u0430\u043f\u0430\u0440\u0430\u0442."

    const-string v2, "\u2713 Works from every page, with every suit and unit."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_75

    .line 290
    :cond_2e2
    const-string v0, ""

    goto/16 :goto_75
.end method

.method renderFlash()V
    .registers 6

    .prologue
    .line 295
    const-string v1, ""

    .line 296
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 297
    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    packed-switch v2, :pswitch_data_c0

    .line 327
    const-string v0, "\u041d\u0435 \u0441\u0442\u0430\u043d\u0430"

    const-string v1, "Didn\'t work"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u0430\u0431\u0435\u043b\u0430 (\u0437\u0430 \u0434\u0430\u043d\u043d\u0438, \u043d\u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u0437\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0435) \u0438 \u043f\u0440\u043e\u0431\u0432\u0430\u0439 \u043f\u0430\u043a"

    const-string v1, "Check the cable (a data cable) and try again"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 332
    :goto_1b
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xe

    if-le v2, v4, :cond_bc

    const/high16 v2, 0x42080000    # 34.0f

    :goto_2c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 334
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void

    .line 299
    :pswitch_48
    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0447\u0438\u043f\u0430 \u0441 \u043a\u0430\u0431\u0435\u043b"

    const-string v2, "Plug the module in"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    const-string v1, "USB \u043a\u0430\u0431\u0435\u043b \u043a\u044a\u043c \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u043f\u043e\u0441\u043b\u0435 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041f\u0440\u043e\u0431\u0432\u0430\u0439 \u043f\u0430\u043a\u201c"

    const-string v3, "USB cable to the tablet \u2014 then press Try again"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 304
    :pswitch_59
    const-string v1, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201eOK\u201c"

    const-string v2, "Press OK"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    const-string v1, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043f\u0438\u0442\u0430 \u0434\u0430\u043b\u0438 XEMS \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u043e\u043b\u0437\u0432\u0430 \u0447\u0438\u043f\u0430"

    const-string v3, "The tablet asks to let XEMS use it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 308
    :pswitch_6a
    const-string v2, "\u041f\u043e\u0434\u0433\u043e\u0442\u0432\u044f\u043c \u0447\u0438\u043f\u0430\u2026"

    const-string v3, "Preparing\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    .line 311
    :pswitch_73
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 RST \u0434\u0432\u0430 \u043f\u044a\u0442\u0438"

    const-string v1, "Press RST twice"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v0, "\u041c\u044a\u043d\u0438\u0447\u043a\u043e\u0442\u043e \u043a\u043e\u043f\u0447\u0435 \u0434\u043e \u043a\u0430\u0431\u0435\u043b\u0430 \u2014 \u0431\u044a\u0440\u0437\u043e, \u043a\u0430\u0442\u043e \u0434\u0432\u043e\u0439\u043d\u043e \u0449\u0440\u0430\u043a\u0432\u0430\u043d\u0435. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c \u0441\u0430\u043c."

    const-string v1, "The tiny button by the cable \u2014 fast, like a double click. I go on by myself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1b

    .line 317
    :pswitch_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flashPct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    const-string v0, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043c \u0441\u043e\u0444\u0442\u0443\u0435\u0440\u0430 \u2014 \u043d\u0435 \u0432\u0430\u0434\u0438 \u043a\u0430\u0431\u0435\u043b\u0430"

    const-string v1, "Loading \u2014 keep the cable in"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const v0, -0xc74208

    .line 320
    goto/16 :goto_1b

    .line 322
    :pswitch_a8
    const-string v0, "\u0417\u0430\u0440\u0435\u0434\u0435\u043d \u2713"

    const-string v1, "Loaded \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    const-string v0, "\u0427\u0438\u043f\u044a\u0442 \u0441\u0435 \u0440\u0435\u0441\u0442\u0430\u0440\u0442\u0438\u0440\u0430 \u2014 \u043d\u0430\u043c\u0438\u0440\u0430\u043c \u0433\u043e \u0441\u0430\u043c"

    const-string v1, "Restarting \u2014 I find it by myself"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_1b

    .line 333
    :cond_bc
    const/high16 v2, 0x42500000    # 52.0f

    goto/16 :goto_2c

    .line 297
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_59
        :pswitch_6a
        :pswitch_73
        :pswitch_86
        :pswitch_a8
    .end packed-switch
.end method

.method renderSens()V
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 375
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 376
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u0421\u0442\u0440\u043e\u0433\u043e"

    const-string v5, "Strict"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\u041d\u043e\u0440\u043c\u0430\u043b\u043d\u043e"

    const-string v5, "Normal"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "\u041b\u0435\u0441\u043d\u043e"

    const-string v5, "Easy"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 377
    iget v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    const/16 v5, 0x5a

    if-ge v4, v5, :cond_40

    .line 378
    :goto_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    return-void

    .line 377
    :cond_40
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    const/16 v4, 0x6e

    if-le v0, v4, :cond_48

    move v0, v1

    goto :goto_2f

    :cond_48
    move v0, v2

    goto :goto_2f
.end method

.method renderWords()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 352
    const/4 v0, 0x0

    move v5, v1

    .line 353
    :goto_a
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v5, v2, :cond_d4

    .line 354
    rem-int/lit8 v2, v5, 0x2

    if-nez v2, :cond_28

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 356
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    if-nez v5, :cond_9e

    move v0, v1

    :goto_20
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 358
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    aget-object v6, v2, v5

    .line 359
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget v2, v2, v5

    if-lt v2, v10, :cond_a0

    move v4, v3

    .line 360
    :goto_33
    if-eqz v4, :cond_a2

    const-string v2, "  \u2713"

    .line 361
    :goto_37
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    if-eqz v4, :cond_cf

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->listed:Z

    if-eqz v2, :cond_cf

    :cond_5c
    move v2, v3

    .line 362
    :goto_5d
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v4

    .line 361
    :goto_69
    invoke-static {v7, v8, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 363
    const/high16 v4, 0x41580000    # 13.5f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 365
    new-instance v4, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;

    invoke-direct {v4, p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 367
    rem-int/lit8 v6, v5, 0x2

    if-ne v6, v3, :cond_96

    .line 368
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 370
    :cond_96
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_a

    .line 356
    :cond_9e
    const/4 v0, 0x6

    goto :goto_20

    :cond_a0
    move v4, v1

    .line 359
    goto :goto_33

    .line 360
    :cond_a2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget v2, v2, v5

    if-lez v2, :cond_cb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget v7, v7, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    :cond_cb
    const-string v2, ""

    goto/16 :goto_37

    :cond_cf
    move v2, v1

    .line 361
    goto :goto_5d

    .line 362
    :cond_d1
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_69

    .line 372
    :cond_d4
    return-void
.end method

.method sens(I)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 462
    if-nez p1, :cond_26

    const-string v0, "0.8"

    move-object v1, v0

    .line 463
    :goto_6
    if-nez p1, :cond_30

    const/16 v0, 0x50

    :goto_a
    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sens "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 466
    return-void

    .line 462
    :cond_26
    if-ne p1, v2, :cond_2c

    const-string v0, "1.3"

    move-object v1, v0

    goto :goto_6

    :cond_2c
    const-string v0, "1.0"

    move-object v1, v0

    goto :goto_6

    .line 463
    :cond_30
    if-ne p1, v2, :cond_35

    const/16 v0, 0x82

    goto :goto_a

    :cond_35
    const/16 v0, 0x64

    goto :goto_a
.end method

.method show()V
    .registers 13

    .prologue
    const/high16 v11, 0x42600000    # 56.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0x11

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, 0x0

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043b\u0430\u0441"

    const-string v2, "Voice"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441 \u0433\u043b\u0430\u0441 \u2014 \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u0438 \u0430\u043f\u0430\u0440\u0430\u0442"

    const-string v3, "Voice commands \u2014 for every suit and unit"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x460

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 126
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 127
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v3, 0x15

    const v4, -0xc74208

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 128
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v11, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41f00000    # 30.0f

    const v5, -0xc74208

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v8, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    .line 142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    .line 144
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    const v3, -0xc74208

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 148
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43a50000    # 330.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 156
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 157
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0414\u0443\u043c\u0438\u0442\u0435 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0437\u0430\u043f\u0438\u0448\u0435\u0448 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v4, "Words \u00b7 tap to record again"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    .line 160
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u041a\u043e\u043b\u043a\u043e \u043b\u0435\u0441\u043d\u043e \u043f\u0440\u0438\u0435\u043c\u0430"

    const-string v4, "How easily it accepts"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    .line 163
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43a50000    # 330.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 165
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43910000    # 290.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 179
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->addListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy()Z

    move-result v0

    if-eqz v0, :cond_287

    .line 181
    sput-object p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->listener:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;

    .line 182
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 184
    :cond_287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a7

    .line 188
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 190
    :cond_2a7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method

.method startLearning()V
    .registers 2

    .prologue
    .line 416
    const-string v0, "mute 1"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 417
    const-string v0, "meter 1"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->nextWord()V

    .line 419
    return-void
.end method

.method stopLearning()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 452
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 454
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 457
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 458
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 459
    return-void
.end method
