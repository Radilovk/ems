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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 18
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 18
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method private static attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 26
    if-nez p0, :cond_3

    .line 27
    return-void

    .line 29
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .registers 4

    .line 122
    if-nez p0, :cond_3

    .line 123
    return-void

    .line 126
    :cond_3
    :try_start_3
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 127
    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f090222

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->attachButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f09021f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    .line 132
    const v0, 0x7f090220

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showIdle()V

    .line 136
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 137
    if-eqz p0, :cond_73

    .line 138
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 139
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveTargetMac(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetMacAddress(Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_74

    .line 143
    :cond_73
    goto :goto_75

    .line 142
    :catchall_74
    move-exception p0

    .line 144
    :goto_75
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .registers 3

    .line 37
    if-nez p0, :cond_3

    .line 38
    return-void

    .line 41
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 42
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 43
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 44
    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    .line 47
    goto :goto_1a

    .line 46
    :catchall_19
    move-exception p0

    .line 48
    :goto_1a
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 2

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->hostDialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxAmount()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 151
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method public static getMinAmount()Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 147
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .line 55
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 56
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 57
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 59
    :cond_a
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_15

    .line 60
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_15
    return-object v0

    .line 65
    :cond_16
    return-object v0
.end method

.method public static resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 87
    if-eqz p0, :cond_28

    .line 88
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_9

    .line 90
    return-object v0

    .line 92
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_14

    .line 94
    return-object v0

    .line 96
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1b

    .line 98
    return-object v0

    .line 100
    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    .line 101
    if-eqz p0, :cond_28

    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    .line 103
    if-eqz p0, :cond_28

    .line 104
    return-object p0

    .line 108
    :cond_28
    if-eqz p1, :cond_35

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 110
    if-eqz p0, :cond_35

    .line 111
    return-object p0

    .line 114
    :cond_35
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 115
    if-eqz p0, :cond_3c

    .line 116
    return-object p0

    .line 118
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static resolveTargetMac(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/lang/String;
    .registers 3

    .line 69
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 70
    return-object v0

    .line 73
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    .line 74
    if-nez p0, :cond_b

    .line 75
    return-object v0

    .line 77
    :cond_b
    const-string v1, "data"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .line 78
    instance-of v1, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_1a

    .line 79
    check-cast p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1b

    return-object p0

    .line 82
    :cond_1a
    goto :goto_1c

    .line 81
    :catchall_1b
    move-exception p0

    .line 83
    :goto_1c
    return-object v0
.end method

.method public static showActive(I)V
    .registers 4

    .line 155
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 156
    const/4 p0, 0x0

    .line 158
    :cond_4
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 159
    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_2b
    return-void
.end method

.method public static showError(I)V
    .registers 2

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :cond_7
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 172
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_10
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 177
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 178
    const v1, 0x7f0d0109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 181
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_13
    return-void
.end method

.method public static showPermission()V
    .registers 2

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 187
    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_a
    return-void
.end method
