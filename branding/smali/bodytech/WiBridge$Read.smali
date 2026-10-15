.class final Lcom/isaigu/gymapp/bodytech/WiBridge$Read;
.super Lcom/clj/fastble/callback/BleReadCallback;
.source "WiBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Read"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V
    .registers 2

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleReadCallback;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Read;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 383
    return-void
.end method


# virtual methods
.method public onReadFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Read;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->next()V

    .line 395
    return-void
.end method

.method public onReadSuccess([B)V
    .registers 5

    .prologue
    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Read;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->listener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    .line 388
    if-eqz p1, :cond_14

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;->onReceiveBattery(I)V

    .line 389
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Read;->v:Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->next()V

    .line 390
    return-void
.end method
