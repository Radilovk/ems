.class final Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;
.super Ljava/lang/Object;
.source "BtBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SlideEnd"
.end annotation


# instance fields
.field final gen:J

.field final v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;J)V
    .registers 4

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 539
    iput-wide p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;->gen:J

    .line 540
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;->gen:J

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideEnd(J)Ljava/util/List;

    move-result-object v0

    .line 546
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 550
    :cond_18
    :goto_18
    return-void

    .line 547
    :catch_19
    move-exception v0

    .line 548
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
