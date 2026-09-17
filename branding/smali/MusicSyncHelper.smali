.class public Lcom/isaigu/gymapp/dialog/MusicSyncHelper;
.super Ljava/lang/Object;
.source "MusicSyncHelper.java"


# static fields
.field private static hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field private static levelView:Landroid/widget/TextView;

.field private static maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

.field private static minAmount:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p0, :cond_done

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_done
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .locals 2

    if-nez p0, :cond_has_view

    return-void

    :cond_has_view
    :try_start_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    if-nez v0, :cond_no_dialog

    const/4 v0, 0x0

    return-object v0

    :cond_no_dialog
    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    :goto_loop
    if-nez p0, :cond_no_context

    const/4 p0, 0x0

    return-object p0

    :cond_no_context
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_is_activity

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_is_activity
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-nez v0, :cond_not_wrapper

    const/4 p0, 0x0

    return-object p0

    :cond_not_wrapper
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_loop
.end method

.method public static bind(Landroid/view/View;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "dialog"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    if-nez p0, :cond_has_root

    return-void

    :cond_has_root
    :try_start_0
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    const v0, 0x7f090222

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const v0, 0x7f090220

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showIdle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    return-void
.end method

.method public static getMaxAmount()Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method public static getMinAmount()Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method public static showActive(I)V
    .locals 3

    if-gez p0, :cond_level_ok

    const/4 p0, 0x0

    :cond_level_ok
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_status

    const v1, 0x7f0d0108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_status
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_level

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_level
    return-void
.end method

.method public static showError(I)V
    .locals 1

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_done

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_done
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_hide

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_hide
    return-void
.end method

.method public static showIdle()V
    .locals 2

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_status

    const v1, 0x7f0d0109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_status
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_level

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_level
    return-void
.end method

.method public static showPermission()V
    .locals 2

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_done

    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_done
    return-void
.end method
