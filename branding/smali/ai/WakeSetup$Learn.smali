.class final Lcom/isaigu/gymapp/ai/WakeSetup$Learn;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/isaigu/gymapp/ai/Kws$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Learn"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field final cuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field final mine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field shown:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[F>;",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->shown:I

    .line 248
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->c:Landroid/content/Context;

    .line 249
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->cuts:Ljava/util/List;

    .line 250
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->mine:Ljava/util/List;

    .line 251
    return-void
.end method


# virtual methods
.method public at(F)V
    .registers 5

    .prologue
    .line 282
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 283
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->shown:I

    if-eq v0, v1, :cond_19

    .line 284
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->shown:I

    .line 285
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeSetup$Shown;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WakeSetup$Shown;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_19
    return-void
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 255
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 258
    const/16 v0, 0xa

    :try_start_7
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "xems/kws-pack.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/KwsTrain;->loadPack(Ljava/io/InputStream;)Lcom/isaigu/gymapp/ai/KwsTrain$Pack;

    move-result-object v3

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->mine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v7

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 262
    array-length v0, v0

    add-int/lit16 v0, v0, 0xc80

    add-int/2addr v0, v1

    move v1, v0

    .line 263
    goto :goto_21

    .line 264
    :cond_33
    new-array v2, v1, [F

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->mine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v7

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 267
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v0, v0

    add-int/lit16 v0, v0, 0xc80

    add-int/2addr v0, v1

    move v1, v0

    .line 269
    goto :goto_3c

    .line 270
    :cond_53
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->cuts:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/KwsTrain;->train(Ljava/util/List;[FLcom/isaigu/gymapp/ai/KwsTrain$Pack;JLcom/isaigu/gymapp/ai/Kws$Progress;)Lcom/isaigu/gymapp/ai/Kws;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->saveKws(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Kws;)Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_63} :catch_c5

    move-result v0

    .line 275
    :goto_64
    const-string v2, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own voice model "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_e0

    const-string v1, "learnt"

    :goto_75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " s ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->cuts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " words, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;->mine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " phrases)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void

    .line 272
    :catch_c5
    move-exception v0

    .line 273
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kws train: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_64

    .line 275
    :cond_e0
    const-string v1, "failed"

    goto :goto_75
.end method
