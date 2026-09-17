.class Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BetaButtonListener;
.super Ljava/lang/Object;
.source "BetaFeaturesUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BetaButtonListener;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    iget-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BetaButtonListener;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BetaButtonListener;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iget-object p1, p1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;->showDialog(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    return-void
.end method
