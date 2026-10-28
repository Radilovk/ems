.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;


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
    .registers 4

    .prologue
    .line 107
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
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    .line 109
    return-void
.end method


# virtual methods
.method allLearned()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget v4, v2, v1

    .line 193
    const/4 v5, 0x3

    if-ge v4, v5, :cond_d

    .line 197
    :goto_c
    return v0

    .line 192
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 197
    :cond_10
    const/4 v0, 0x1

    goto :goto_c
.end method

.method dismissed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    .line 479
    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 481
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->removeListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 483
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 484
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 486
    :cond_1c
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method go()V
    .registers 6

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-nez v0, :cond_7

    .line 325
    :goto_6
    return-void

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 316
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->stopLearning()V

    .line 324
    :goto_e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_6

    .line 318
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_27

    aget-object v3, v1, v0

    .line 320
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 322
    :cond_27
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->startLearning()V

    goto :goto_e
.end method

.method indexOf(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 201
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 202
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 206
    :goto_10
    return v0

    .line 201
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method nextWord()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 348
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 349
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 350
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 351
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 352
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2713"

    const-string v1, "Done \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 353
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    .line 355
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 368
    :goto_32
    return-void

    .line 358
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 359
    iput v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    .line 360
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 362
    if-ltz v0, :cond_4d

    .line 363
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aput v2, v1, v0

    .line 365
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

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_32
.end method

.method public onVoiceLine(Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x2bc

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 409
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 410
    const-string v0, "LIST "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v1

    .line 411
    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_58

    .line 412
    aget-object v3, v2, v0

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 413
    if-lez v3, :cond_40

    .line 414
    aget-object v4, v2, v0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 415
    if-ltz v4, :cond_3d

    .line 416
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget-object v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 411
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 418
    :cond_40
    aget-object v3, v2, v0

    const-string v4, "sens="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 419
    aget-object v3, v2, v0

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    goto :goto_3d

    .line 422
    :cond_58
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->listed:Z

    .line 474
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 475
    :cond_5d
    :goto_5d
    return-void

    .line 423
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

    .line 424
    const-string v0, "ok"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 425
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    .line 426
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 427
    if-ltz v0, :cond_91

    .line 428
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    aput v2, v1, v0

    .line 430
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

    .line 431
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 433
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c7

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 436
    :cond_c7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    .line 438
    :cond_d2
    const-string v0, "timeout"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 439
    const-string v0, "\u041d\u0435 \u0442\u0435 \u0447\u0443\u0445 \u2014 \u043a\u0430\u0436\u0438 \u0433\u043e \u043f\u0430\u043a, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v1, "Didn\'t hear it \u2014 again, a little louder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    .line 440
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5a

    .line 442
    :cond_f8
    const-string v0, "listen"

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    if-lez v0, :cond_5a

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    goto/16 :goto_5a

    .line 445
    :cond_10b
    const-string v0, "LVL "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    array-length v0, v2

    if-le v0, v4, :cond_14b

    .line 446
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    .line 447
    aget-object v0, v2, v4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->floor:I

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 449
    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->level:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->floor:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 450
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 451
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5d

    .line 454
    :cond_14b
    const-string v0, "CNT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_187

    array-length v0, v2

    if-le v0, v1, :cond_187

    .line 455
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v2

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    :goto_161
    if-gt v1, v2, :cond_174

    .line 458
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v1, v2, :cond_171

    const-string v0, " \u00b7 "

    :goto_16b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_161

    .line 458
    :cond_171
    const-string v0, ""

    goto :goto_16b

    .line 460
    :cond_174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 461
    const v0, -0xc74208

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a

    .line 463
    :cond_187
    const-string v0, "CMD "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    array-length v0, v2

    if-le v0, v1, :cond_1c1

    .line 464
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

    .line 465
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a

    .line 467
    :cond_1c1
    const-string v0, "NOCOUNT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 468
    const-string v0, "\u041f\u044a\u0440\u0432\u043e: \u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438"

    const-string v1, "First: one, two, three"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    .line 469
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    goto/16 :goto_5a
.end method

.method public onVoiceState(I)V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 397
    if-eq p1, v1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    :cond_f
    if-ne p1, v1, :cond_16

    .line 402
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 404
    :cond_16
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 405
    return-void
.end method

.method ready()Z
    .registers 3

    .prologue
    .line 188
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
    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-nez v0, :cond_20

    .line 372
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

    .line 374
    :cond_20
    return-void
.end method

.method redo(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v0

    if-nez v0, :cond_7

    .line 338
    :goto_6
    return-void

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 332
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->stopLearning()V

    .line 334
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->startLearning()V

    .line 337
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    goto :goto_6
.end method

.method render()V
    .registers 11

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/high16 v2, 0x42300000    # 44.0f

    const/4 v1, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-eqz v0, :cond_a

    .line 276
    :goto_9
    return-void

    .line 215
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->ready()Z

    move-result v5

    .line 216
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v5, :cond_98

    const v0, -0xc74208

    :goto_15
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 218
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_9c

    move v0, v1

    :goto_24
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    if-nez v5, :cond_a7

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0447\u0438\u043f\u0430"

    const-string v4, "Switch the module on"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    if-ne v0, v7, :cond_9e

    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_65
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderWords()V

    .line 260
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->renderSens()V

    .line 261
    if-nez v5, :cond_206

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    const-string v2, "\u0422\u044a\u0440\u0441\u044f \u0447\u0438\u043f\u0430\u2026"

    const-string v3, "Looking\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 272
    :goto_87
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    if-nez v5, :cond_23d

    const-string v0, "\u0427\u0438\u043f\u044a\u0442 \u043c\u0438\u0433\u0430 \u0441\u0438\u043d\u044c\u043e, \u043a\u043e\u0433\u0430\u0442\u043e \u0435 \u0433\u043e\u0442\u043e\u0432."

    const-string v2, "The module blinks blue when ready."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 216
    :cond_98
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_15

    .line 218
    :cond_9c
    const/4 v0, 0x4

    goto :goto_24

    .line 225
    :cond_9e
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u0433\u043e \u043d\u0430\u0431\u043b\u0438\u0437\u043e \u2014 \u043d\u0438\u0449\u043e \u043d\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u0448"

    const-string v4, "Looking for it \u2014 nothing to press"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 227
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_13a

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x8

    if-le v0, v6, :cond_f7

    move v0, v2

    :goto_cb
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 232
    :goto_df
    const/4 v0, 0x3

    if-ge v2, v0, :cond_100

    .line 233
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->got:I

    if-ge v2, v0, :cond_fa

    const-string v0, "\u25cf"

    :goto_e8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v2, v7, :cond_fd

    const-string v0, "  "

    :goto_f0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_df

    .line 229
    :cond_f7
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_cb

    .line 233
    :cond_fa
    const-string v0, "\u25cb"

    goto :goto_e8

    :cond_fd
    const-string v0, ""

    goto :goto_f0

    .line 235
    :cond_100
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u0436\u0438 \u0433\u043e \u044f\u0441\u043d\u043e, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e, \u0438 \u0437\u0430\u043c\u044a\u043b\u0447\u0438 \u0437\u0430 \u043c\u0438\u0433"

    const-string v4, "Say it clearly, a little louder, then pause"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    :goto_11e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->note:Ljava/lang/String;

    if-eqz v0, :cond_137

    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->noteColor:I

    :goto_129
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_65

    .line 238
    :cond_12e
    const-string v0, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v4, "Listening\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11e

    .line 239
    :cond_137
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_129

    .line 240
    :cond_13a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-nez v0, :cond_178

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const-string v2, "\u0414\u0430 \u043d\u0430\u0443\u0447\u0438\u043c \u0433\u043b\u0430\u0441\u0430 \u0442\u0438"

    const-string v4, "Let\'s learn your voice"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    const-string v2, "8 \u0434\u0443\u043c\u0438 \u043f\u043e 3 \u043f\u044a\u0442\u0438 \u00b7 \u043e\u043a\u043e\u043b\u043e \u043c\u0438\u043d\u0443\u0442\u0430 \u0438 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0430"

    const-string v4, "8 words, 3 times each \u00b7 about 90 s"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_65

    .line 248
    :cond_178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    if-eqz v0, :cond_1ec

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xfa0

    cmp-long v0, v6, v8

    if-gez v0, :cond_1ec

    move v0, v3

    .line 249
    :goto_18a
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_1ee

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heard:Ljava/lang/String;

    :goto_190
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_199

    const/high16 v2, 0x42600000    # 56.0f

    :cond_199
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 251
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_1f7

    iget v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->heardColor:I

    :goto_1a2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    if-eqz v0, :cond_1fa

    const-string v2, ""

    :goto_1b2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_203

    if-nez v0, :cond_203

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e: "

    const-string v6, "Last: "

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 255
    :goto_1e0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_65

    :cond_1ec
    move v0, v1

    .line 248
    goto :goto_18a

    .line 249
    :cond_1ee
    const-string v4, "\u0421\u043b\u0443\u0448\u0430\u043c"

    const-string v7, "Listening"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_190

    .line 251
    :cond_1f7
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1a2

    .line 253
    :cond_1fa
    const-string v2, "\u041a\u0430\u0436\u0438: \u201e\u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438, \u0441\u0442\u0430\u0440\u0442\u201c \u00b7 \u201e\u043f\u0430\u0443\u0437\u0430\u201c \u00b7 \u201e\u0441\u0442\u043e\u043f\u201c"

    const-string v6, "Say: one, two, three, start \u00b7 pause \u00b7 stop"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b2

    .line 256
    :cond_203
    const-string v0, ""

    goto :goto_1e0

    .line 266
    :cond_206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 268
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_225

    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v2, "\u25a0 Stop recording"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_220
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_87

    .line 269
    :cond_225
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-eqz v0, :cond_234

    const-string v0, "\u21bb \u041d\u0430\u0443\u0447\u0438 \u043d\u0430\u043d\u043e\u0432\u043e"

    const-string v2, "\u21bb Learn again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_220

    .line 270
    :cond_234
    const-string v0, "\u25b6 \u041d\u0430\u0443\u0447\u0438 \u0433\u043b\u0430\u0441\u0430 \u043c\u0438"

    const-string v2, "\u25b6 Learn my voice"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_220

    .line 273
    :cond_23d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_271

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

    goto/16 :goto_93

    .line 274
    :cond_271
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->allLearned()Z

    move-result v0

    if-eqz v0, :cond_281

    const-string v0, "\u2713 \u0420\u0430\u0431\u043e\u0442\u0438 \u043e\u0442 \u0432\u0441\u044f\u043a\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430, \u0441 \u0432\u0441\u0435\u043a\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u0438 \u0430\u043f\u0430\u0440\u0430\u0442."

    const-string v2, "\u2713 Works from every page, with every suit and unit."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_93

    .line 275
    :cond_281
    const-string v0, ""

    goto/16 :goto_93
.end method

.method renderSens()V
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 304
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

    .line 305
    iget v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    const/16 v5, 0x5a

    if-ge v4, v5, :cond_40

    .line 306
    :goto_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    return-void

    .line 305
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

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    const/4 v0, 0x0

    move v5, v1

    .line 281
    :goto_a
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v5, v2, :cond_d4

    .line 282
    rem-int/lit8 v2, v5, 0x2

    if-nez v2, :cond_28

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 284
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    if-nez v5, :cond_9e

    move v0, v1

    :goto_20
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 286
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    aget-object v6, v2, v5

    .line 287
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->count:[I

    aget v2, v2, v5

    if-lt v2, v10, :cond_a0

    move v4, v3

    .line 288
    :goto_33
    if-eqz v4, :cond_a2

    const-string v2, "  \u2713"

    .line 289
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

    .line 290
    :goto_5d
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->colorOf(Ljava/lang/String;)I

    move-result v4

    .line 289
    :goto_69
    invoke-static {v7, v8, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 291
    const/high16 v4, 0x41580000    # 13.5f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 292
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 293
    new-instance v4, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;

    invoke-direct {v4, p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 295
    rem-int/lit8 v6, v5, 0x2

    if-ne v6, v3, :cond_96

    .line 296
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 298
    :cond_96
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_a

    .line 284
    :cond_9e
    const/4 v0, 0x6

    goto :goto_20

    :cond_a0
    move v4, v1

    .line 287
    goto :goto_33

    .line 288
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

    .line 289
    goto :goto_5d

    .line 290
    :cond_d1
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_69

    .line 300
    :cond_d4
    return-void
.end method

.method sens(I)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 387
    if-nez p1, :cond_26

    const-string v0, "0.8"

    move-object v1, v0

    .line 388
    :goto_6
    if-nez p1, :cond_30

    const/16 v0, 0x50

    :goto_a
    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens:I

    .line 389
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

    .line 390
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 391
    return-void

    .line 387
    :cond_26
    if-ne p1, v2, :cond_2c

    const-string v0, "1.3"

    move-object v1, v0

    goto :goto_6

    :cond_2c
    const-string v0, "1.0"

    move-object v1, v0

    goto :goto_6

    .line 388
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

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 117
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

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
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

    .line 125
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v3, 0x15

    const v4, -0xc74208

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 126
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    .line 127
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->mic:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->micIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
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

    .line 129
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v11, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    .line 130
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hero:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41f00000    # 30.0f

    const v5, -0xc74208

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dots:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v8, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sub:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    .line 140
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

    .line 141
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    .line 142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    const v3, -0xc74208

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->bar:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 146
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->barBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43a50000    # 330.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 154
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

    .line 155
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0414\u0443\u043c\u0438\u0442\u0435 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0437\u0430\u043f\u0438\u0448\u0435\u0448 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v4, "Words \u00b7 tap to record again"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    .line 158
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->words:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
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

    .line 160
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sensRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43a50000    # 330.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 163
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43910000    # 290.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 174
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->addListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V

    .line 178
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29b

    .line 182
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 184
    :cond_29b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method startLearning()V
    .registers 2

    .prologue
    .line 341
    const-string v0, "mute 1"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 342
    const-string v0, "meter 1"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->nextWord()V

    .line 344
    return-void
.end method

.method stopLearning()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 377
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 382
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 383
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 384
    return-void
.end method
