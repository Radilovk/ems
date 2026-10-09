.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;
.super Ljava/lang/Object;
.source "XemsHzTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsHzTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hold"
.end annotation


# instance fields
.field first:Z

.field live:Z

.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->live:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->first:Z

    .line 216
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 217
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->live:Z

    if-nez v0, :cond_6

    .line 232
    :goto_5
    return-void

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->first:Z

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->send(Z)Ljava/lang/String;

    move-result-object v0

    .line 223
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->first:Z

    .line 224
    if-nez v0, :cond_8b

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u0430\u043d\u0430\u043b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->ch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %  (\u043d\u0430 \u0436\u0438\u0446\u0430\u0442\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    div-int/lit8 v2, v2, 0x32

    mul-int/lit8 v2, v2, 0x32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->say(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 229
    :cond_8b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->say(Ljava/lang/String;)V

    .line 230
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->live:Z

    goto/16 :goto_5
.end method
