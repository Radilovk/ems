.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TestTouch"
.end annotation


# instance fields
.field final ch:I

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V
    .registers 3

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 384
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->ch:I

    .line 385
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 389
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 390
    if-nez v0, :cond_27

    .line 391
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 392
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->stopHold()V

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->ch:I

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    iput-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    .line 395
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->run()V

    .line 403
    :cond_26
    :goto_26
    return v4

    .line 398
    :cond_27
    if-eq v0, v4, :cond_2c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 399
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->stopHold()V

    goto :goto_26
.end method
