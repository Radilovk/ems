.class final Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;
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
    name = "WorkoutsClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 954
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$300()Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 955
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$300()Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V

    .line 957
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_16

    .line 959
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->open(Landroid/app/Activity;)V

    .line 961
    :cond_16
    return-void
.end method
