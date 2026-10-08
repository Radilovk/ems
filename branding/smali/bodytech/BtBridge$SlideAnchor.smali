.class final Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SlideAnchor"
.end annotation


# instance fields
.field final gen:J

.field final ms:J

.field final v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;JJ)V
    .registers 6

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 518
    iput-wide p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;->gen:J

    .line 519
    iput-wide p4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;->ms:J

    .line 520
    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 2

    .prologue
    .line 529
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .registers 10

    .prologue
    .line 524
    # getter for: Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;->gen:J

    invoke-direct {v1, v2, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;J)V

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;->ms:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    return-void
.end method
