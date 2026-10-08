.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ack"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;)V
    .registers 2

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    .line 594
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 595
    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 5

    .prologue
    .line 604
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->lost()V

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->writeFails:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->writeFails:I

    .line 606
    const-string v0, "suit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bodytech write failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

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

    .line 607
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V

    .line 608
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .registers 5

    .prologue
    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->acked()V

    .line 600
    return-void
.end method
