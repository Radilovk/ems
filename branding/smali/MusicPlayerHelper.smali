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

.field private static hostActivity:Landroid/app/Activity;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static levelView:Landroid/widget/TextView;

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

    .line 20
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)Lcom/isaigu/gymapp/BaseActivity;
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/app/Activity;)Lcom/isaigu/gymapp/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 39
    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    if-nez p2, :cond_7

    goto :goto_29

    .line 42
    :cond_7
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 43
    if-nez p0, :cond_11

    .line 44
    return-void

    .line 46
    :cond_11
    sput-object p2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 51
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void

    .line 40
    :cond_29
    :goto_29
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 177
    if-nez p0, :cond_3

    .line 178
    return-void

    .line 180
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 181
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method private static clearDialogRefs()V
    .registers 1

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 156
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 157
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 158
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 159
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;

    .line 160
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 163
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 164
    return-void

    .line 167
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 169
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 170
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 173
    goto :goto_26

    .line 172
    :catchall_25
    move-exception v0

    .line 174
    :goto_26
    return-void
.end method

.method private static dismissDialog()V
    .registers 1

    .line 144
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 146
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 148
    goto :goto_9

    .line 147
    :catchall_8
    move-exception v0

    .line 149
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 151
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    .line 152
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 95
    const/16 v0, 0x4255

    if-ne p0, v0, :cond_14

    const/4 p0, -0x1

    if-ne p1, p0, :cond_14

    if-nez p2, :cond_a

    goto :goto_14

    .line 98
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    .line 99
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 100
    return-void

    .line 96
    :cond_14
    :goto_14
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 187
    return v1

    .line 190
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 191
    :catchall_c
    move-exception v0

    .line 192
    return v1
.end method

.method private static resolveActivity(Landroid/app/Activity;)Lcom/isaigu/gymapp/BaseActivity;
    .registers 2

    .line 123
    instance-of v0, p0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v0, :cond_7

    .line 124
    check-cast p0, Lcom/isaigu/gymapp/BaseActivity;

    return-object p0

    .line 126
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 127
    instance-of v0, p0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v0, :cond_12

    .line 128
    check-cast p0, Lcom/isaigu/gymapp/BaseActivity;

    return-object p0

    .line 130
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 103
    if-nez p0, :cond_4

    .line 104
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 106
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 107
    return-object v0

    .line 109
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 110
    if-nez p0, :cond_f

    .line 111
    return-object v0

    .line 113
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 114
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 115
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 116
    return-object v2

    .line 113
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 119
    :cond_28
    return-object v0
.end method

.method public static show(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 55
    if-nez p0, :cond_3

    .line 56
    return-void

    .line 58
    :cond_3
    if-nez p1, :cond_c

    .line 59
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 60
    return-void

    .line 62
    :cond_c
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;

    .line 63
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 64
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 68
    :try_start_17
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_b6

    .line 72
    nop

    .line 73
    const v0, 0x7f090227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 75
    const v0, 0x7f090229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 79
    const v0, 0x7f09022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 83
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 86
    new-instance p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 88
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_b0

    .line 89
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 91
    :cond_b0
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 92
    return-void

    .line 69
    :catchall_b6
    move-exception p1

    .line 70
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 71
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 222
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 223
    const/4 p0, 0x0

    .line 225
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 226
    const/4 p1, 0x1

    .line 228
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 229
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 231
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    .line 232
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

    .line 233
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_37
    return-void
.end method

.method public static showError(I)V
    .registers 2

    .line 238
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 241
    :cond_7
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 242
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :cond_10
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 213
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 214
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 217
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_13
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 134
    if-nez p0, :cond_3

    .line 135
    return-void

    .line 138
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 140
    goto :goto_d

    .line 139
    :catchall_c
    move-exception p0

    .line 141
    :goto_d
    return-void
.end method

.method private static updateTrackLabel(Landroid/net/Uri;)V
    .registers 3

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 198
    return-void

    .line 200
    :cond_5
    if-nez p0, :cond_e

    .line 201
    const p0, 0x7f0d0112

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 202
    return-void

    .line 204
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 208
    :cond_1b
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 206
    :cond_21
    :goto_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_2a
    return-void
.end method
