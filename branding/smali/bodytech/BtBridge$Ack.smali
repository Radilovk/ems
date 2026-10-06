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
    .line 381
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 383
    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 3

    .prologue
    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->lost()V

    .line 393
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V

    .line 394
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .registers 5

    .prologue
    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->acked()V

    .line 388
    return-void
.end method
