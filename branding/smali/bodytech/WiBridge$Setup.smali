.class final Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;
.super Ljava/lang/Object;
.source "WiBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Setup"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V
    .registers 2

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 433
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 438
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->subscribe()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 442
    :cond_13
    :goto_13
    return-void

    .line 439
    :catch_14
    move-exception v0

    .line 440
    const-string v1, "xems-wiems"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
