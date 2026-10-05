.class final Lcom/isaigu/gymapp/bodytech/BtTest$Hold;
.super Ljava/lang/Object;
.source "BtTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hold"
.end annotation


# instance fields
.field final ch:I

.field live:Z

.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V
    .registers 4

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    .line 171
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 172
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->ch:I

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    if-nez v0, :cond_5

    .line 189
    :goto_4
    return-void

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->ch:I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v5, v5, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/bodytech/BtTest;->free:Z

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(Ljava/lang/String;IIIIIZZ)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->ch:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtTest;->say(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 184
    :cond_8d
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const-string v2, "no_suit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 185
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d bodytech \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u043e \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 184
    :goto_99
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtTest;->say(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    goto/16 :goto_4

    .line 186
    :cond_a1
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044a\u0440\u0432\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u2014 \u0441\u043f\u0440\u0438 \u044f, \u0437\u0430 \u0434\u0430 \u0442\u0435\u0441\u0442\u0432\u0430\u0448"

    goto :goto_99
.end method
