.class final Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "WiBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ack"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V
    .registers 2

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 365
    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 5

    .prologue
    .line 374
    const-string v0, "suit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wiems write failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

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

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V

    .line 376
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->next()V

    .line 370
    return-void
.end method
