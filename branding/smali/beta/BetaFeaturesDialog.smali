.class public Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "BetaFeaturesDialog.java"


# instance fields
.field private manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

.field private minAmount:Lcom/isaigu/gymapp/widget/AmountView;

.field private statusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .locals 2
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/AmountView;
    .param p2, "value"    # I

    if-nez p1, :cond_has_view

    return-void

    :cond_has_view
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    const-string v0, "%"

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    return-void
.end method

.method private findId(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_has_activity

    const/4 v0, 0x0

    return v0

    :cond_has_activity
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_has_activity

    const/4 v0, 0x0

    return v0

    :cond_has_activity
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private refreshStatus()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->statusText:Landroid/widget/TextView;

    if-nez v0, :cond_has_text

    return-void

    :cond_has_text
    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_running

    const-string v1, "beta_music_status_active"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->getStringId(Ljava/lang/String;)I

    move-result v1

    goto :goto_set

    :cond_running
    const-string v1, "beta_music_status_idle"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->getStringId(Ljava/lang/String;)I

    move-result v1

    :goto_set
    if-eqz v1, :cond_done

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_done
    return-void
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    const v0, 0x7f0b0078

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;->consumeManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const-string v1, "musicMinStrength"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->findId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "musicMaxStrength"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->findId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "musicSyncStatus"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->findId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->statusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    iget-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v2, 0x50

    invoke-direct {p0, v1, v2}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    const-string v1, "musicSyncStart"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->findId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_start

    new-instance v2, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StartListener;-><init>(Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_start
    const-string v1, "musicSyncStop"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->findId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_stop

    new-instance v2, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StopListener;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$StopListener;-><init>(Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_stop
    const-string v1, "betaCloseButton"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->findId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_close

    new-instance v2, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$CloseListener;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$CloseListener;-><init>(Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_close
    invoke-direct {p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->refreshStatus()V

    return-object v0
.end method

.method refreshStatusPublic()V
    .locals 0

    invoke-direct {p0}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->refreshStatus()V

    return-void
.end method
