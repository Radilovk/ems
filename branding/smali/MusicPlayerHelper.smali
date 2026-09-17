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

.field private static pickingFile:Z

.field private static selectedUri:Landroid/net/Uri;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static trackView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .registers 2

    .line 19
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 19
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 19
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .registers 1

    .line 19
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .line 19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 39
    if-eqz p0, :cond_27

    if-nez p1, :cond_5

    goto :goto_27

    .line 42
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    if-nez v0, :cond_f

    .line 44
    return-void

    .line 46
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 51
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 211
    if-nez p0, :cond_3

    .line 212
    return-void

    .line 214
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 215
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 216
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method private static clearDialogRefs()V
    .registers 1

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    .line 190
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 191
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 192
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 193
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 194
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 198
    return-void

    .line 201
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 202
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 203
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 204
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 207
    goto :goto_26

    .line 206
    :catchall_25
    move-exception v0

    .line 208
    :goto_26
    return-void
.end method

.method private static dismissDialog()V
    .registers 1

    .line 178
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 180
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 182
    goto :goto_9

    .line 181
    :catchall_8
    move-exception v0

    .line 183
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 185
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    .line 186
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 97
    const/16 v0, 0x4255

    if-ne p0, v0, :cond_34

    const/4 p0, -0x1

    if-ne p1, p0, :cond_34

    if-nez p2, :cond_d

    goto :goto_34

    .line 100
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 101
    if-nez p0, :cond_14

    .line 102
    return-void

    .line 104
    :cond_14
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    .line 106
    const/4 p1, 0x0

    :try_start_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 107
    if-eqz p1, :cond_2e

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    .line 110
    if-eqz p2, :cond_2e

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2f

    .line 115
    :cond_2e
    goto :goto_30

    .line 114
    :catchall_2f
    move-exception p0

    .line 116
    :goto_30
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackLabel()V

    .line 117
    return-void

    .line 98
    :cond_34
    :goto_34
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 220
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 221
    return v1

    .line 224
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 225
    :catchall_c
    move-exception v0

    .line 226
    return v1
.end method

.method private static refreshTrackLabel()V
    .registers 2

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 232
    const v1, 0x7f090227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 234
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 235
    return-void
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 125
    if-eqz p0, :cond_3

    .line 126
    return-object p0

    .line 128
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_12

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 130
    if-eqz p0, :cond_12

    .line 131
    return-object p0

    .line 134
    :cond_12
    if-eqz p1, :cond_1f

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 136
    if-eqz p0, :cond_1f

    .line 137
    return-object p0

    .line 140
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 141
    if-eqz p0, :cond_26

    .line 142
    return-object p0

    .line 144
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 121
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 148
    if-nez p0, :cond_4

    .line 149
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 151
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 152
    return-object v0

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 155
    if-nez p0, :cond_f

    .line 156
    return-object v0

    .line 158
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 159
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 160
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 161
    return-object v2

    .line 158
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 164
    :cond_28
    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 55
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 56
    if-nez p0, :cond_9

    .line 57
    return-void

    .line 59
    :cond_9
    if-nez p1, :cond_12

    .line 60
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 61
    return-void

    .line 63
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 64
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 68
    :try_start_1b
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_bc

    .line 72
    nop

    .line 73
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    .line 74
    const v0, 0x7f090227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f090228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 76
    const v0, 0x7f090229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 79
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 80
    const v0, 0x7f09022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 84
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 87
    new-instance p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 89
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_b6

    .line 90
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 92
    :cond_b6
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 93
    return-void

    .line 69
    :catchall_bc
    move-exception p1

    .line 70
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 71
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 272
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 273
    const/4 p0, 0x0

    .line 275
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 276
    const/4 p1, 0x1

    .line 278
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 279
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 281
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    .line 282
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

    .line 283
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_37
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 288
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 289
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 292
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_10
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_1c

    .line 296
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 298
    :cond_1c
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 254
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 255
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 258
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :cond_13
    return-void
.end method

.method public static showPreparing()V
    .registers 2

    .line 263
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 264
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 267
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :cond_13
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 168
    if-nez p0, :cond_3

    .line 169
    return-void

    .line 172
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 174
    goto :goto_d

    .line 173
    :catchall_c
    move-exception p0

    .line 175
    :goto_d
    return-void
.end method

.method private static updateTrackLabel(Landroid/net/Uri;)V
    .registers 3

    .line 238
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 241
    :cond_5
    if-nez p0, :cond_e

    .line 242
    const p0, 0x7f0d0112

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 243
    return-void

    .line 245
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 249
    :cond_1b
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 247
    :cond_21
    :goto_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_2a
    return-void
.end method
