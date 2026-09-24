.class final Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;
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
    name = "MenuClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 614
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 615
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->showMenu(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$900(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 619
    :goto_6
    return-void

    .line 616
    :catch_7
    move-exception v0

    .line 617
    const-string v1, "XemsNav.menu"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
