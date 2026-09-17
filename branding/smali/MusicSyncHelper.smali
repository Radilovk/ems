.class public Lcom/isaigu/gymapp/dialog/MusicSyncHelper;
.super Ljava/lang/Object;
.source "MusicSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;,
        Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;
    }
.end annotation


# static fields
.field private static hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field private static levelView:Landroid/widget/TextView;

.field private static maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

.field private static minAmount:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 15
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 15
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method private static attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 23
    if-nez p0, :cond_3

    .line 24
    return-void

    .line 26
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public static bind(Landroid/view/View;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .registers 4

    .line 101
    if-nez p0, :cond_3

    .line 102
    return-void

    .line 105
    :cond_3
    :try_start_3
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 106
    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090222

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f09021f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    .line 111
    const v0, 0x7f090220

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    .line 112
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showIdle()V

    .line 115
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 116
    if-eqz p0, :cond_69

    .line 117
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_6a

    .line 120
    :cond_69
    goto :goto_6b

    .line 119
    :catchall_6a
    move-exception p0

    .line 121
    :goto_6b
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .registers 3

    .line 34
    if-nez p0, :cond_3

    .line 35
    return-void

    .line 38
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 39
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 40
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 41
    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    .line 44
    goto :goto_1a

    .line 43
    :catchall_19
    move-exception p0

    .line 45
    :goto_1a
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 2

    .line 48
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxAmount()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 128
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method public static getMinAmount()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 124
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .line 52
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 53
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 54
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 56
    :cond_a
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_15

    .line 57
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_15
    return-object v0

    .line 62
    :cond_16
    return-object v0
.end method

.method public static resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 66
    if-eqz p0, :cond_28

    .line 67
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_9

    .line 69
    return-object v0

    .line 71
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_14

    .line 73
    return-object v0

    .line 75
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1b

    .line 77
    return-object v0

    .line 79
    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    .line 80
    if-eqz p0, :cond_28

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    .line 82
    if-eqz p0, :cond_28

    .line 83
    return-object p0

    .line 87
    :cond_28
    if-eqz p1, :cond_35

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 89
    if-eqz p0, :cond_35

    .line 90
    return-object p0

    .line 93
    :cond_35
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 94
    if-eqz p0, :cond_3c

    .line 95
    return-object p0

    .line 97
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method public static showActive(I)V
    .registers 4

    .line 132
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 133
    const/4 p0, 0x0

    .line 135
    :cond_4
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 136
    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_2b
    return-void
.end method

.method public static showError(I)V
    .registers 2

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 146
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :cond_7
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 149
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_10
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 155
    const v1, 0x7f0d0109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 158
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_13
    return-void
.end method

.method public static showPermission()V
    .registers 2

    .line 163
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 164
    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :cond_a
    return-void
.end method
