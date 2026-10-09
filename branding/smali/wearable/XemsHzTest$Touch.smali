.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;
.super Ljava/lang/Object;
.source "XemsHzTest.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsHzTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Touch"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 2

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 240
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 245
    if-nez v0, :cond_25

    .line 246
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 247
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->stop()V

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->run()V

    .line 256
    :cond_24
    :goto_24
    return v3

    .line 251
    :cond_25
    if-eq v0, v3, :cond_2a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 252
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->stop()V

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    const-string v1, "\u0421\u043f\u0440\u044f\u043d\u043e"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->say(Ljava/lang/String;)V

    goto :goto_24
.end method
