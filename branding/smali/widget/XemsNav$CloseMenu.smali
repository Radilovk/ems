.class final Lcom/isaigu/gymapp/widget/XemsNav$CloseMenu;
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
    name = "CloseMenu"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 812
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$300()Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 813
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$300()Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V

    .line 815
    :cond_d
    return-void
.end method
