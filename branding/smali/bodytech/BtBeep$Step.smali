.class final Lcom/isaigu/gymapp/bodytech/BtBeep$Step;
.super Ljava/lang/Object;
.source "BtBeep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBeep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field final i:I

.field final marks:Ljava/lang/String;

.field final s:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->s:I

    .line 61
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->marks:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->i:I

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 68
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->s:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->current(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->marks:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 77
    :cond_12
    :goto_12
    return-void

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->marks:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5f

    const/16 v0, 0x1a4

    .line 70
    :goto_21
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->gen()Landroid/media/ToneGenerator;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 72
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 73
    # getter for: Lcom/isaigu/gymapp/bodytech/BtBeep;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->access$000()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->s:I

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->marks:Ljava/lang/String;

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;->i:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;-><init>(ILjava/lang/String;I)V

    add-int/lit8 v0, v0, 0x6e

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_12

    .line 74
    :catch_45
    move-exception v0

    .line 75
    const-string v1, "BtBeep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 69
    :cond_5f
    const/16 v0, 0x6e

    goto :goto_21
.end method
