.class final Lcom/isaigu/gymapp/widget/XemsNav$ProceduresClick;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProceduresClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 438
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 439
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 441
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_16

    .line 443
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->openProcedures(Landroid/app/Activity;)V

    .line 445
    :cond_16
    return-void
.end method
