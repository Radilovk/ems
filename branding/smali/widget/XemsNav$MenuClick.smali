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

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 657
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 658
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->showMenu(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$900(Landroid/view/View;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    .line 661
    goto :goto_d

    .line 659
    :catchall_7
    move-exception p1

    .line 660
    const-string v0, "XemsNav.menu"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    :goto_d
    return-void
.end method
