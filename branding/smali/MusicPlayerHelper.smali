.class public final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;
    }
.end annotation


# static fields
.field static final BUTTON_ID:I = 0x7f090226

.field static final LAYOUT_ID:I = 0x7f0b0078

.field static final PICK_AUDIO:I = 0x4255

.field private static dialog:Landroid/support/v7/app/AlertDialog;

.field private static dialogContent:Landroid/view/View;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static levelView:Landroid/widget/TextView;

.field private static final mainHandler:Landroid/os/Handler;

.field private static pickingFile:Z

.field private static selectedUri:Landroid/net/Uri;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static trackView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .line 21
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->openDialog(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)Z
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->canShowOn(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/app/Activity;I)V
    .registers 2

    .line 21
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 21
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .line 21
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .line 21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()V
    .registers 0

    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 43
    if-eqz p0, :cond_27

    if-nez p1, :cond_5

    goto :goto_27

    .line 46
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    if-nez v0, :cond_f

    .line 48
    return-void

    .line 50
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 55
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 44
    :cond_27
    :goto_27
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 240
    if-nez p0, :cond_3

    .line 241
    return-void

    .line 243
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 244
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 245
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method private static canShowOn(Landroid/app/Activity;)Z
    .registers 2

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 p0, 0x0

    return p0

    .line 82
    :cond_4
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_b

    xor-int/2addr p0, v0

    return p0

    .line 83
    :catchall_b
    move-exception p0

    .line 84
    return v0
.end method

.method private static clearDialogRefs()V
    .registers 1

    .line 218
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    .line 219
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 220
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 221
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 222
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 223
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 227
    return-void

    .line 230
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 232
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 233
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 236
    goto :goto_26

    .line 235
    :catchall_25
    move-exception v0

    .line 237
    :goto_26
    return-void
.end method

.method private static dismissDialog()V
    .registers 2

    .line 206
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 208
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    .line 211
    goto :goto_f

    .line 210
    :catchall_e
    move-exception v0

    .line 212
    :goto_f
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 214
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    .line 215
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 125
    const/16 v0, 0x4255

    if-ne p0, v0, :cond_34

    const/4 p0, -0x1

    if-ne p1, p0, :cond_34

    if-nez p2, :cond_d

    goto :goto_34

    .line 128
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 129
    if-nez p0, :cond_14

    .line 130
    return-void

    .line 132
    :cond_14
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    .line 134
    const/4 p1, 0x0

    :try_start_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 135
    if-eqz p1, :cond_2e

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    .line 138
    if-eqz p2, :cond_2e

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2f

    .line 143
    :cond_2e
    goto :goto_30

    .line 142
    :catchall_2f
    move-exception p0

    .line 144
    :goto_30
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackLabel()V

    .line 145
    return-void

    .line 126
    :cond_34
    :goto_34
    return-void
.end method

.method private static openDialog(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 89
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->canShowOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_be

    if-nez p1, :cond_a

    goto/16 :goto_be

    .line 93
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 94
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 97
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    .line 98
    const v0, 0x7f090227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f090228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 100
    const v0, 0x7f090229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 103
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 104
    const v0, 0x7f09022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 108
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 111
    new-instance p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;

    invoke-direct {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 114
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 116
    :cond_ad
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_b2
    .catchall {:try_start_a .. :try_end_b2} :catchall_b3

    .line 120
    goto :goto_bd

    .line 117
    :catchall_b3
    move-exception p1

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 119
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 121
    :goto_bd
    return-void

    .line 90
    :cond_be
    :goto_be
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 249
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 250
    return v1

    .line 253
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 254
    :catchall_c
    move-exception v0

    .line 255
    return v1
.end method

.method private static refreshTrackLabel()V
    .registers 2

    .line 260
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 261
    const v1, 0x7f090227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 263
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 264
    return-void
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 153
    if-eqz p0, :cond_3

    .line 154
    return-object p0

    .line 156
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_12

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 158
    if-eqz p0, :cond_12

    .line 159
    return-object p0

    .line 162
    :cond_12
    if-eqz p1, :cond_1f

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 164
    if-eqz p0, :cond_1f

    .line 165
    return-object p0

    .line 168
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 169
    if-eqz p0, :cond_26

    .line 170
    return-object p0

    .line 172
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 149
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 176
    if-nez p0, :cond_4

    .line 177
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 179
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 180
    return-object v0

    .line 182
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 183
    if-nez p0, :cond_f

    .line 184
    return-object v0

    .line 186
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 187
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 188
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 189
    return-object v2

    .line 186
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 192
    :cond_28
    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 59
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->canShowOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 61
    return-void

    .line 63
    :cond_d
    if-nez p1, :cond_16

    .line 64
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 65
    return-void

    .line 67
    :cond_16
    nop

    .line 68
    nop

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 301
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 302
    const/4 p0, 0x0

    .line 304
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 305
    const/4 p1, 0x1

    .line 307
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 308
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 310
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "% / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    :cond_37
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 317
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 318
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 320
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 321
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :cond_10
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_1c

    .line 325
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 327
    :cond_1c
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 283
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 284
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 287
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    :cond_13
    return-void
.end method

.method public static showPreparing()V
    .registers 2

    .line 292
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 293
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 296
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_13
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 196
    if-nez p0, :cond_3

    .line 197
    return-void

    .line 200
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 202
    goto :goto_d

    .line 201
    :catchall_c
    move-exception p0

    .line 203
    :goto_d
    return-void
.end method

.method private static updateTrackLabel(Landroid/net/Uri;)V
    .registers 3

    .line 267
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 268
    return-void

    .line 270
    :cond_5
    if-nez p0, :cond_e

    .line 271
    const p0, 0x7f0d0112

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 272
    return-void

    .line 274
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 278
    :cond_1b
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 276
    :cond_21
    :goto_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :goto_2a
    return-void
.end method
