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

.field skipNote:Ljava/lang/String;

.field status:Landroid/widget/TextView;

.field sub:Landroid/widget/TextView;

.field words:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 111
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

    .line 98
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    .line 100
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 112
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    .line 113
    return-void
.end method


# virtual methods
.method allLearned()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget v4, v2, v1

    .line 207
    const/4 v5, 0x3

    if-ge v4, v5, :cond_d

    .line 211
    :goto_c
    return v0

    .line 206
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 211
    :cond_10
    const/4 v0, 0x1

    goto :goto_c
.end method

.method dismissed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    .line 590
    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 592
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->removeListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V

    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 594
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 595
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 597
    :cond_1c
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method go()V
    .registers 6

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->old()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 408
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy()Z

    move-result v0

    if-nez v0, :cond_20

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->start(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;)V

    .line 423
    :cond_20
    :goto_20
    return-void

    .line 413
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 414
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->stopLearning()V

    .line 422
    :goto_28
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_20

    .line 416
    :cond_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 417
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v2, :cond_41

    aget-object v3, v1, v0

    .line 418
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 420
    :cond_41
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->startLearning()V

    goto :goto_28
.end method

.method indexOf(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 215
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 216
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 220
    :goto_10
    return v0

    .line 215
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method nextWord()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 446
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 447
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 448
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 449
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 450
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2713"

    const-string v1, "Done \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 451
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    .line 453
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 466
    :goto_32
    return-void

    .line 456
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 457
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    .line 458
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 460
    if-ltz v0, :cond_4d

    .line 461
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aput v2, v1, v0

    .line 463
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

    .line 464
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_32
.end method

.method old()Z
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->version:I

    if-ltz v0, :cond_15

    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->version:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onFlash(II)V
    .registers 4

    .prologue
    .line 360
    iput p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 361
    iput p2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flashPct:I

    .line 362
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->find(Landroid/content/Context;)V

    .line 365
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 366
    return-void
.end method

.method public onVoiceLine(Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x2bc

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 511
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 512
    const-string v0, "LIST "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v1

    .line 513
    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_58

    .line 514
    aget-object v3, v2, v0

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 515
    if-lez v3, :cond_40

    .line 516
    aget-object v4, v2, v0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 517
    if-ltz v4, :cond_3d

    .line 518
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget-object v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 513
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 520
    :cond_40
    aget-object v3, v2, v0

    const-string v4, "sens="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 521
    aget-object v3, v2, v0

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    goto :goto_3d

    .line 524
    :cond_58
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->listed:Z

    .line 585
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 586
    :cond_5d
    :goto_5d
    return-void

    .line 525
    :cond_5e
    const-string v0, "REC "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    array-length v0, v2

    if-le v0, v4, :cond_112

    aget-object v0, v2, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 526
    const-string v0, "ok"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 527
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 529
    if-ltz v0, :cond_91

    .line 530
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    aput v2, v1, v0

    .line 532
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

    .line 533
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    .line 534
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 535
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c7

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 538
    :cond_c7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 540
    :cond_d2
    const-string v0, "timeout"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 541
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->skipNote:Ljava/lang/String;

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->skipNote:Ljava/lang/String;

    .line 542
    :goto_e2
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 543
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    .line 544
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5a

    .line 542
    :cond_f6
    const-string v0, "\u041d\u0435 \u0442\u0435 \u0447\u0443\u0445 \u2014 \u043a\u0430\u0436\u0438 \u0433\u043e \u043f\u0430\u043a, \u043f\u043e-\u0431\u043b\u0438\u0437\u043e \u0434\u043e \u0447\u0438\u043f\u0430"

    const-string v1, "Didn\'t hear it \u2014 again, closer to it"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e2

    .line 545
    :cond_ff
    const-string v0, "listen"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    if-lez v0, :cond_5a

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    goto/16 :goto_5a

    .line 548
    :cond_112
    const-string v0, "SKIP "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_15b

    array-length v0, v2

    if-le v0, v1, :cond_15b

    .line 550
    const-string v0, "long"

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    const-string v0, "\u0427\u0443\u0445 \u0434\u044a\u043b\u044a\u0433 \u0437\u0432\u0443\u043a \u2014 \u043a\u0430\u0436\u0438 \u0441\u0430\u043c\u043e \u0434\u0443\u043c\u0438\u0442\u0435 \u0438 \u0437\u0430\u043c\u044a\u043b\u0447\u0438 \u0437\u0430 \u043c\u0438\u0433"

    const-string v1, "A long sound \u2014 say just the words, then pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    :goto_133
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->skipNote:Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->skipNote:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 555
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    goto/16 :goto_5a

    .line 552
    :cond_13f
    const-string v0, "short"

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    const-string v0, "\u041c\u043d\u043e\u0433\u043e \u043a\u0440\u0430\u0442\u043a\u043e \u2014 \u043a\u0430\u0436\u0438 \u0446\u044f\u043b\u0430\u0442\u0430 \u0434\u0443\u043c\u0430"

    const-string v1, "Too short \u2014 the whole word"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_133

    .line 553
    :cond_152
    const-string v0, "\u0427\u0443\u0445 \u0442\u0435, \u043d\u043e \u0442\u0438\u0445\u043e \u2014 \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v1, "Heard, but softly \u2014 a little louder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_133

    .line 556
    :cond_15b
    const-string v0, "LVL "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19b

    array-length v0, v2

    if-le v0, v4, :cond_19b

    .line 557
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    .line 558
    aget-object v0, v2, v4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->floor:I

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 560
    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->floor:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 561
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 562
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5d

    .line 565
    :cond_19b
    const-string v0, "CNT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    array-length v0, v2

    if-le v0, v1, :cond_1d7

    .line 566
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v2

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    :goto_1b1
    if-gt v1, v2, :cond_1c4

    .line 569
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v1, v2, :cond_1c1

    const-string v0, " \u00b7 "

    :goto_1bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b1

    .line 569
    :cond_1c1
    const-string v0, ""

    goto :goto_1bb

    .line 571
    :cond_1c4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 572
    const v0, -0xc74208

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a

    .line 574
    :cond_1d7
    const-string v0, "CMD "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    array-length v0, v2

    if-le v0, v1, :cond_211

    .line 575
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

    .line 576
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a

    .line 578
    :cond_211
    const-string v0, "NOCOUNT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 579
    const-string v0, "\u041f\u044a\u0440\u0432\u043e: \u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438"

    const-string v1, "First: one, two, three"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 580
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a
.end method

.method public onVoiceState(I)V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 496
    if-eq p1, v1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    :cond_f
    if-ne p1, v1, :cond_27

    .line 501
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 502
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-nez v0, :cond_27

    .line 503
    :cond_24
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 506
    :cond_27
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 507
    return-void
.end method

.method ready()Z
    .registers 3

    .prologue
    .line 197
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
    .line 469
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-nez v0, :cond_23

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->skipNote:Ljava/lang/String;

    .line 471
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

    .line 473
    :cond_23
    return-void
.end method

.method redo(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-nez v0, :cond_7

    .line 436
    :goto_6
    return-void

    .line 429
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 430
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->stopLearning()V

    .line 432
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->startLearning()V

    .line 435
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_6
.end method

.method render()V
    .registers 13

    .prologue
    const/4 v9, 0x2

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-eqz v0, :cond_c

    .line 309
    :goto_b
    return-void

    .line 229
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v7

    .line 230
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v7, :cond_7f

    const v0, -0xc74208

    :goto_17
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 232
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_82

    move v0, v1

    :goto_26
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-ltz v0, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_34

    if-nez v7, :cond_84

    :cond_34
    move v6, v3

    .line 234
    :goto_35
    if-eqz v6, :cond_86

    .line 235
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderFlash()V

    .line 285
    :goto_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderWords()V

    .line 286
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderSens()V

    .line 287
    if-nez v6, :cond_4a

    if-eqz v7, :cond_4a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->old()Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 288
    :cond_4a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy()Z

    move-result v0

    if-eqz v0, :cond_27d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-eqz v0, :cond_27d

    move v0, v3

    .line 289
    :goto_55
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    if-nez v0, :cond_280

    :goto_59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 290
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_283

    const v1, 0x3ee66666    # 0.45f

    :goto_63
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 291
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_286

    const-string v0, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043c\u2026"

    const-string v2, "Loading\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_72
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_75
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    if-eqz v6, :cond_2f7

    const-string v0, ""

    :goto_7b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 230
    :cond_7f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_17

    .line 232
    :cond_82
    const/4 v0, 0x4

    goto :goto_26

    :cond_84
    move v6, v1

    .line 233
    goto :goto_35

    .line 236
    :cond_86
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->old()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u041e\u0431\u043d\u043e\u0432\u0438 \u0447\u0438\u043f\u0430"

    const-string v4, "Update the module"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x42080000    # 34.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "\u0418\u043c\u0430 \u043f\u043e-\u0434\u043e\u0431\u044a\u0440 \u0441\u043e\u0444\u0442\u0443\u0435\u0440 \u0437\u0430 \u043d\u0435\u0433\u043e. \u0412\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u0441 \u043a\u0430\u0431\u0435\u043b \u0432 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u0431\u0443\u0442\u043e\u043d\u0430 \u2014 \u043e\u043a\u043e\u043b\u043e 10 \u0441\u0435\u043a\u0443\u043d\u0434\u0438."

    const-string v4, "Better software is here. Plug it into the tablet and press the button \u2014 about 10 seconds."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 245
    :cond_c4
    if-nez v7, :cond_10d

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0447\u0438\u043f\u0430"

    const-string v4, "Switch the module on"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    if-ne v0, v9, :cond_104

    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 251
    :cond_104
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u0433\u043e \u043d\u0430\u0431\u043b\u0438\u0437\u043e \u2014 \u043d\u0438\u0449\u043e \u043d\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u0448"

    const-string v4, "Looking for it \u2014 nothing to press"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f8

    .line 253
    :cond_10d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_1a0

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x8

    if-le v0, v8, :cond_15d

    move v0, v2

    :goto_131
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 258
    :goto_145
    const/4 v0, 0x3

    if-ge v2, v0, :cond_166

    .line 259
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    if-ge v2, v0, :cond_160

    const-string v0, "\u25cf"

    :goto_14e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v2, v9, :cond_163

    const-string v0, "  "

    :goto_156
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_145

    .line 255
    :cond_15d
    const/high16 v0, 0x42400000    # 48.0f

    goto :goto_131

    .line 259
    :cond_160
    const-string v0, "\u25cb"

    goto :goto_14e

    :cond_163
    const-string v0, ""

    goto :goto_156

    .line 261
    :cond_166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u0436\u0438 \u0433\u043e \u044f\u0441\u043d\u043e, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e, \u0438 \u0437\u0430\u043c\u044a\u043b\u0447\u0438 \u0437\u0430 \u043c\u0438\u0433"

    const-string v4, "Say it clearly, a little louder, then pause"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    if-eqz v0, :cond_194

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    :goto_184
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    if-eqz v0, :cond_19d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    :goto_18f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3a

    .line 264
    :cond_194
    const-string v0, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v4, "Listening\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_184

    .line 265
    :cond_19d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_18f

    .line 266
    :cond_1a0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-nez v0, :cond_1ef

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    if-eqz v0, :cond_1b7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xfa0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_1ef

    .line 267
    :cond_1b7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u0414\u0430 \u043d\u0430\u0443\u0447\u0438\u043c \u0433\u043b\u0430\u0441\u0430 \u0442\u0438"

    const-string v4, "Let\'s learn your voice"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "8 \u0434\u0443\u043c\u0438 \u043f\u043e 3 \u043f\u044a\u0442\u0438 \u00b7 \u043e\u043a\u043e\u043b\u043e \u043c\u0438\u043d\u0443\u0442\u0430 \u0438 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0430"

    const-string v4, "8 words, 3 times each \u00b7 about 90 s"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 274
    :cond_1ef
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    if-eqz v0, :cond_263

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xfa0

    cmp-long v0, v8, v10

    if-gez v0, :cond_263

    move v0, v3

    .line 275
    :goto_201
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_265

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    :goto_207
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_210

    const/high16 v2, 0x42380000    # 46.0f

    :cond_210
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_26e

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    :goto_219
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    if-eqz v0, :cond_271

    const-string v2, ""

    :goto_229
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_27a

    if-nez v0, :cond_27a

    .line 282
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

    .line 281
    :goto_257
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3a

    :cond_263
    move v0, v1

    .line 274
    goto :goto_201

    .line 275
    :cond_265
    const-string v4, "\u0421\u043b\u0443\u0448\u0430\u043c"

    const-string v9, "Listening"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_207

    .line 277
    :cond_26e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_219

    .line 279
    :cond_271
    const-string v2, "\u041a\u0430\u0436\u0438: \u201e\u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438, \u0441\u0442\u0430\u0440\u0442\u201c \u00b7 \u201e\u043f\u0430\u0443\u0437\u0430\u201c \u00b7 \u201e\u0441\u0442\u043e\u043f\u201c"

    const-string v8, "Say: one, two, three, start \u00b7 pause \u00b7 stop"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_229

    .line 282
    :cond_27a
    const-string v0, ""

    goto :goto_257

    :cond_27d
    move v0, v1

    .line 288
    goto/16 :goto_55

    :cond_280
    move v3, v1

    .line 289
    goto/16 :goto_59

    :cond_283
    move v1, v5

    .line 290
    goto/16 :goto_63

    .line 292
    :cond_286
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_28f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    if-nez v0, :cond_299

    :cond_28f
    const-string v0, "\u21bb \u041f\u0440\u043e\u0431\u0432\u0430\u0439 \u043f\u0430\u043a"

    const-string v2, "\u21bb Try again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    .line 293
    :cond_299
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a8

    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u0447\u0438\u043f\u0430\u2026"

    const-string v2, "Looking\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    .line 294
    :cond_2a8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->old()Z

    move-result v0

    if-eqz v0, :cond_2b8

    const-string v0, "\u26a1 \u041e\u0431\u043d\u043e\u0432\u0438 \u0447\u0438\u043f\u0430"

    const-string v2, "\u26a1 Update the module"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    .line 295
    :cond_2b8
    const-string v0, "\u26a1 \u0417\u0430\u0440\u0435\u0434\u0438 \u0447\u0438\u043f\u0430 \u0441 \u043a\u0430\u0431\u0435\u043b"

    const-string v2, "\u26a1 Load the module (cable)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    .line 297
    :cond_2c2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_2df

    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v2, "\u25a0 Stop recording"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2da
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_75

    .line 300
    :cond_2df
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-eqz v0, :cond_2ee

    const-string v0, "\u21bb \u041d\u0430\u0443\u0447\u0438 \u043d\u0430\u043d\u043e\u0432\u043e"

    const-string v2, "\u21bb Learn again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2da

    .line 301
    :cond_2ee
    const-string v0, "\u25b6 \u041d\u0430\u0443\u0447\u0438 \u0433\u043b\u0430\u0441\u0430 \u043c\u0438"

    const-string v2, "\u25b6 Learn my voice"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2da

    .line 303
    :cond_2f7
    if-nez v7, :cond_303

    const-string v0, "\u041d\u043e\u0432 \u0447\u0438\u043f: \u0432\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u0441 \u043a\u0430\u0431\u0435\u043b \u0432 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u0431\u0443\u0442\u043e\u043d\u0430. \u0417\u0430\u0440\u0435\u0434\u0435\u043d: \u0441\u0430\u043c\u043e \u0433\u043e \u0432\u043a\u043b\u044e\u0447\u0438 \u2014 \u043d\u0430\u043c\u0438\u0440\u0430\u043c \u0433\u043e \u0441\u0430\u043c."

    const-string v2, "New module: plug it into the tablet and press the button. Loaded: just switch it on \u2014 found by itself."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7b

    .line 306
    :cond_303
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_337

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

    goto/16 :goto_7b

    .line 307
    :cond_337
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-eqz v0, :cond_347

    const-string v0, "\u2713 \u0420\u0430\u0431\u043e\u0442\u0438 \u043e\u0442 \u0432\u0441\u044f\u043a\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430, \u0441 \u0432\u0441\u0435\u043a\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u0438 \u0430\u043f\u0430\u0440\u0430\u0442."

    const-string v2, "\u2713 Works from every page, with every suit and unit."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7b

    .line 308
    :cond_347
    const-string v0, ""

    goto/16 :goto_7b
.end method

.method renderFlash()V
    .registers 6

    .prologue
    .line 313
    const-string v1, ""

    .line 314
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 315
    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    packed-switch v2, :pswitch_data_c0

    .line 345
    const-string v0, "\u041d\u0435 \u0441\u0442\u0430\u043d\u0430"

    const-string v1, "Didn\'t work"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u0430\u0431\u0435\u043b\u0430 (\u0437\u0430 \u0434\u0430\u043d\u043d\u0438, \u043d\u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u0437\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0435) \u0438 \u043f\u0440\u043e\u0431\u0432\u0430\u0439 \u043f\u0430\u043a"

    const-string v1, "Check the cable (a data cable) and try again"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 350
    :goto_1b
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xe

    if-le v2, v4, :cond_bc

    const/high16 v2, 0x41f00000    # 30.0f

    :goto_2c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 352
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void

    .line 317
    :pswitch_48
    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0447\u0438\u043f\u0430 \u0441 \u043a\u0430\u0431\u0435\u043b"

    const-string v2, "Plug the module in"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    const-string v1, "USB \u043a\u0430\u0431\u0435\u043b \u043a\u044a\u043c \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u043f\u043e\u0441\u043b\u0435 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041f\u0440\u043e\u0431\u0432\u0430\u0439 \u043f\u0430\u043a\u201c"

    const-string v3, "USB cable to the tablet \u2014 then press Try again"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 322
    :pswitch_59
    const-string v1, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201eOK\u201c"

    const-string v2, "Press OK"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    const-string v1, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043f\u0438\u0442\u0430 \u0434\u0430\u043b\u0438 XEMS \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u043e\u043b\u0437\u0432\u0430 \u0447\u0438\u043f\u0430"

    const-string v3, "The tablet asks to let XEMS use it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 326
    :pswitch_6a
    const-string v2, "\u041f\u043e\u0434\u0433\u043e\u0442\u0432\u044f\u043c \u0447\u0438\u043f\u0430\u2026"

    const-string v3, "Preparing\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    .line 329
    :pswitch_73
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 RST \u0434\u0432\u0430 \u043f\u044a\u0442\u0438"

    const-string v1, "Press RST twice"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v0, "\u041c\u044a\u043d\u0438\u0447\u043a\u043e\u0442\u043e \u043a\u043e\u043f\u0447\u0435 \u0434\u043e \u043a\u0430\u0431\u0435\u043b\u0430 \u2014 \u0431\u044a\u0440\u0437\u043e, \u043a\u0430\u0442\u043e \u0434\u0432\u043e\u0439\u043d\u043e \u0449\u0440\u0430\u043a\u0432\u0430\u043d\u0435. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c \u0441\u0430\u043c."

    const-string v1, "The tiny button by the cable \u2014 fast, like a double click. I go on by myself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1b

    .line 335
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

    .line 336
    const-string v0, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043c \u0441\u043e\u0444\u0442\u0443\u0435\u0440\u0430 \u2014 \u043d\u0435 \u0432\u0430\u0434\u0438 \u043a\u0430\u0431\u0435\u043b\u0430"

    const-string v1, "Loading \u2014 keep the cable in"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    const v0, -0xc74208

    .line 338
    goto/16 :goto_1b

    .line 340
    :pswitch_a8
    const-string v0, "\u0417\u0430\u0440\u0435\u0434\u0435\u043d \u2713"

    const-string v1, "Loaded \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    const-string v0, "\u0427\u0438\u043f\u044a\u0442 \u0441\u0435 \u0440\u0435\u0441\u0442\u0430\u0440\u0442\u0438\u0440\u0430 \u2014 \u043d\u0430\u043c\u0438\u0440\u0430\u043c \u0433\u043e \u0441\u0430\u043c"

    const-string v1, "Restarting \u2014 I find it by myself"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_1b

    .line 351
    :cond_bc
    const/high16 v2, 0x42300000    # 44.0f

    goto/16 :goto_2c

    .line 315
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

    .line 398
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 399
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

    .line 400
    iget v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    const/16 v5, 0x5a

    if-ge v4, v5, :cond_40

    .line 401
    :goto_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    return-void

    .line 400
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
    .registers 14

    .prologue
    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 370
    const/4 v0, 0x0

    move v5, v1

    .line 371
    :goto_f
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v5, v2, :cond_d5

    .line 372
    rem-int/lit8 v2, v5, 0x3

    if-nez v2, :cond_2d

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 374
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    if-nez v5, :cond_9e

    move v0, v1

    :goto_25
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 376
    :cond_2d
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    aget-object v6, v2, v5

    .line 377
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget v2, v2, v5

    const/4 v4, 0x3

    if-lt v2, v4, :cond_a0

    move v4, v3

    .line 378
    :goto_39
    if-eqz v4, :cond_a2

    const-string v2, "  \u2713"

    .line 379
    :goto_3d
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

    if-nez v2, :cond_62

    if-eqz v4, :cond_d0

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->listed:Z

    if-eqz v2, :cond_d0

    :cond_62
    move v2, v3

    .line 380
    :goto_63
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v4

    .line 379
    :goto_6f
    invoke-static {v7, v8, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 381
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 382
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 383
    new-instance v4, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;

    invoke-direct {v4, p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v4, v1, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 385
    rem-int/lit8 v6, v5, 0x3

    if-eqz v6, :cond_96

    .line 386
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 388
    :cond_96
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_f

    .line 374
    :cond_9e
    const/4 v0, 0x5

    goto :goto_25

    :cond_a0
    move v4, v1

    .line 377
    goto :goto_39

    .line 378
    :cond_a2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget v2, v2, v5

    if-lez v2, :cond_cc

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

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3d

    :cond_cc
    const-string v2, ""

    goto/16 :goto_3d

    :cond_d0
    move v2, v1

    .line 379
    goto :goto_63

    .line 380
    :cond_d2
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_6f

    .line 390
    :cond_d5
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v2

    :goto_d8
    rem-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_f8

    .line 391
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v1, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 392
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 393
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 395
    :cond_f8
    return-void
.end method

.method sens(I)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 486
    if-nez p1, :cond_26

    const-string v0, "0.8"

    move-object v1, v0

    .line 487
    :goto_6
    if-nez p1, :cond_30

    const/16 v0, 0x50

    :goto_a
    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    .line 488
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

    .line 489
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 490
    return-void

    .line 486
    :cond_26
    if-ne p1, v2, :cond_2c

    const-string v0, "1.3"

    move-object v1, v0

    goto :goto_6

    :cond_2c
    const-string v0, "1.0"

    move-object v1, v0

    goto :goto_6

    .line 487
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
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 121
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

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 129
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v3, 0x15

    const v4, -0xc74208

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 130
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x42300000    # 44.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    const v5, -0xc74208

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    .line 138
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    .line 144
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

    .line 145
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    .line 146
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    const v3, -0xc74208

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 150
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 158
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 159
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0414\u0443\u043c\u0438\u0442\u0435 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0437\u0430\u043f\u0438\u0448\u0435\u0448 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v4, "Words \u00b7 tap to record again"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    .line 162
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u041a\u043e\u043b\u043a\u043e \u043b\u0435\u0441\u043d\u043e \u043f\u0440\u0438\u0435\u043c\u0430"

    const-string v4, "How easily it accepts"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    .line 165
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43910000    # 290.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->addListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V

    .line 182
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy()Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 183
    sput-object p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->listener:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;

    .line 184
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->flash:I

    .line 186
    :cond_27e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a8

    .line 191
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 193
    :cond_2a8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    return-void
.end method

.method startLearning()V
    .registers 2

    .prologue
    .line 439
    const-string v0, "mute 1"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 440
    const-string v0, "meter 1"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->nextWord()V

    .line 442
    return-void
.end method

.method stopLearning()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 476
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 481
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 482
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 483
    return-void
.end method
