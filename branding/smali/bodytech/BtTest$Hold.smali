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
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    .line 120
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 121
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->ch:I

    .line 122
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    if-nez v0, :cond_7

    .line 137
    :goto_6
    return-void

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->ch:I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x55

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x168

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x1

    move v7, v6

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(Ljava/lang/String;IIIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 129
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

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtTest;->say(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 132
    :cond_69
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const-string v2, "no_suit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 133
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d bodytech \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u043e \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 132
    :goto_75
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtTest;->say(Ljava/lang/String;)V

    .line 135
    iput-boolean v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    goto :goto_6

    .line 134
    :cond_7b
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044a\u0440\u0432\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u2014 \u0441\u043f\u0440\u0438 \u044f, \u0437\u0430 \u0434\u0430 \u0442\u0435\u0441\u0442\u0432\u0430\u0448"

    goto :goto_75
.end method
