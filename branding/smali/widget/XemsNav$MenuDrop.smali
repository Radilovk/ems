.class final Lcom/isaigu/gymapp/widget/XemsNav$MenuDrop;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MenuDrop"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const v5, 0x3f8a3d71    # 1.08f

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 532
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    .line 533
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_11

    move v0, v1

    .line 556
    :goto_10
    return v0

    .line 536
    :cond_11
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_58

    :pswitch_18
    move v0, v2

    .line 556
    goto :goto_10

    .line 538
    :pswitch_1a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    .line 540
    :pswitch_29
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 541
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    move v0, v2

    .line 542
    goto :goto_10

    .line 545
    :pswitch_31
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 546
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 547
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    .line 548
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()V

    :cond_41
    move v0, v2

    .line 550
    goto :goto_10

    .line 552
    :pswitch_43
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 553
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    const v3, 0x7fffffff

    invoke-static {v2, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->drop(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_10

    .line 536
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_43
        :pswitch_31
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method
