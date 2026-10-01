.class final Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;
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
    name = "ModuleClick"
.end annotation


# instance fields
.field private final module:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;->module:I

    .line 486
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 490
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 491
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 493
    :cond_d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;->module:I

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->openModule(Landroid/view/View;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$100(Landroid/view/View;I)V

    .line 494
    return-void
.end method
