.class final Lcom/isaigu/gymapp/widget/XemsNav$Lift;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lift"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Lift;->key:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 422
    const-string v0, "xems_nav"

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsNav$Lift;->key:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 423
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 424
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_28

    .line 425
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Lift;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    .line 426
    :goto_1f
    if-eqz v0, :cond_27

    .line 427
    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 432
    :cond_27
    :goto_27
    return v0

    .line 425
    :cond_28
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Lift;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_30

    move-result v0

    goto :goto_1f

    .line 430
    :catch_30
    move-exception v0

    .line 431
    const-string v2, "XemsNav.lift"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 432
    goto :goto_27
.end method
