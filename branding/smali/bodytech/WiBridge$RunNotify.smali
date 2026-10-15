.class final Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;
.super Lcom/clj/fastble/callback/BleNotifyCallback;
.source "WiBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunNotify"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V
    .registers 2

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleNotifyCallback;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 403
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .registers 6

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->runNotify([B)Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    .line 424
    :cond_15
    :goto_15
    return-void

    .line 421
    :catch_16
    move-exception v0

    .line 422
    const-string v1, "xems-wiems"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 5

    .prologue
    .line 412
    const-string v0, "suit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wiems notify failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->next()V

    .line 414
    return-void
.end method

.method public onNotifySuccess()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->next()V

    .line 408
    return-void
.end method
