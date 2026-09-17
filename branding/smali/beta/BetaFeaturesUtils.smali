.class public Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;
.super Ljava/lang/Object;
.source "BetaFeaturesUtils.java"


# static fields
.field private static pendingManager:Lcom/isaigu/gymapp/train/TrainItemManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindTrainScreen(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "fragment"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .param p1, "root"    # Landroid/view/View;

    if-eqz p0, :cond_end

    if-nez p1, :cond_has_root

    goto :goto_end

    :cond_has_root
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_has_activity

    goto :goto_end

    :cond_has_activity
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "betaFeaturesButton"

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_has_id

    goto :goto_end

    :cond_has_id
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_has_button

    goto :goto_end

    :cond_has_button
    new-instance v1, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BetaButtonListener;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BetaButtonListener;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_end
    :goto_end
    return-void
.end method

.method public static consumeManager()Lcom/isaigu/gymapp/train/TrainItemManager;
    .locals 1

    sget-object v0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;->pendingManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;->pendingManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method public static showDialog(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .locals 2
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;
    .param p1, "manager"    # Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz p0, :cond_end

    if-nez p1, :cond_has_manager

    goto :goto_end

    :cond_has_manager
    sput-object p1, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;->pendingManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    new-instance v0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    :cond_end
    :goto_end
    return-void
.end method
