.class final Lcom/isaigu/gymapp/bodytech/BtTest$Touch;
.super Ljava/lang/Object;
.source "BtTest.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Touch"
.end annotation


# instance fields
.field final ch:I

.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V
    .registers 3

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 176
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->ch:I

    .line 177
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 182
    if-nez v0, :cond_27

    .line 183
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 184
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTest;->stop()V

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->ch:I

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    iput-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->run()V

    .line 192
    :cond_26
    :goto_26
    return v4

    .line 188
    :cond_27
    if-eq v0, v4, :cond_2c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 189
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTest;->stop()V

    goto :goto_26
.end method
