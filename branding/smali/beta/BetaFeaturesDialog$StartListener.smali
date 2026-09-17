.class Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;
.super Ljava/lang/Object;
.source "BetaFeaturesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    iput-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    iget-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_has_activity

    return-void

    :cond_has_activity
    iget-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    iget-object v1, v1, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v2, 0x14

    if-eqz v1, :cond_min_default

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v2

    :cond_min_default
    iget-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    iget-object v1, v1, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v3, 0x50

    if-eqz v1, :cond_max_default

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v3

    :cond_max_default
    iget-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    iget-object v1, v1, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/train/TrainItemManager;II)V

    iget-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->refreshStatusPublic()V

    return-void
.end method
