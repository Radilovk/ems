.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Timed"
.end annotation


# instance fields
.field final at:J

.field final cb:Lcom/clj/fastble/callback/BleWriteCallback;

.field final frames:I

.field final from:I

.field final mac:Ljava/lang/String;

.field final to:I


# direct methods
.method constructor <init>(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;IIIJ)V
    .registers 8

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    .line 697
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->mac:Ljava/lang/String;

    .line 698
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->from:I

    .line 699
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->to:I

    .line 700
    iput p5, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->frames:I

    .line 701
    iput-wide p6, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->at:J

    .line 702
    return-void
.end method

.method static name(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 721
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "1"

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "2"

    goto :goto_5

    :cond_c
    const-string v0, "\u043f\u0430\u0443\u0437\u0430"

    goto :goto_5
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 718
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .registers 10

    .prologue
    .line 707
    :try_start_0
    const-string v0, "suit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bodytech switch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->from:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2192"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->to:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->frames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->at:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_63

    .line 712
    :goto_5d
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Timed;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    .line 713
    return-void

    .line 709
    :catch_63
    move-exception v0

    .line 710
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method
