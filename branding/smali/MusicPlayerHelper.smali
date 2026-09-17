.class public final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OpenListener;,
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

.field private static dialog:Landroid/app/AlertDialog;

.field private static hostActivity:Landroid/app/Activity;

.field private static levelView:Landroid/widget/TextView;

.field private static selectedUri:Landroid/net/Uri;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static trackView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    .line 17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .line 17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 17
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v0

    return v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 17
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    return-void
.end method

.method public static attachButton(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 34
    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    .line 37
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 38
    if-nez p0, :cond_f

    .line 39
    return-void

    .line 41
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 43
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OpenListener;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OpenListener;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void

    .line 35
    :cond_1f
    :goto_1f
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 114
    if-nez p0, :cond_3

    .line 115
    return-void

    .line 117
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private static clearDialogRefs()V
    .registers 1

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 93
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 94
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 95
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 96
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;

    .line 97
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 100
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 101
    return-void

    .line 104
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 106
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 107
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 110
    goto :goto_26

    .line 109
    :catchall_25
    move-exception v0

    .line 111
    :goto_26
    return-void
.end method

.method private static dismissDialog()V
    .registers 1

    .line 81
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 83
    :try_start_4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 85
    goto :goto_9

    .line 84
    :catchall_8
    move-exception v0

    .line 86
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/app/AlertDialog;

    .line 88
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    .line 89
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 73
    const/16 v0, 0x4255

    if-ne p0, v0, :cond_14

    const/4 p0, -0x1

    if-ne p1, p0, :cond_14

    if-nez p2, :cond_a

    goto :goto_14

    .line 76
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 78
    return-void

    .line 74
    :cond_14
    :goto_14
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 124
    return v1

    .line 127
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 128
    :catchall_c
    move-exception v0

    .line 129
    return v1
.end method

.method public static show(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 47
    if-eqz p0, :cond_9b

    if-nez p1, :cond_6

    goto/16 :goto_9b

    .line 50
    :cond_6
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;

    .line 51
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 52
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 54
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    const v0, 0x7f090227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f090228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 57
    const v0, 0x7f090229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 60
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 61
    const v0, 0x7f09022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 67
    new-instance p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/app/AlertDialog;

    .line 69
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 70
    return-void

    .line 48
    :cond_9b
    :goto_9b
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 159
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 160
    const/4 p0, 0x0

    .line 162
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 163
    const/4 p1, 0x1

    .line 165
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 166
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    .line 169
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

    .line 170
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_37
    return-void
.end method

.method public static showError(I)V
    .registers 2

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 178
    :cond_7
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 179
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_10
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 151
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 154
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_13
    return-void
.end method

.method private static updateTrackLabel(Landroid/net/Uri;)V
    .registers 3

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 135
    return-void

    .line 137
    :cond_5
    if-nez p0, :cond_e

    .line 138
    const p0, 0x7f0d0112

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 139
    return-void

    .line 141
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 145
    :cond_1b
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 143
    :cond_21
    :goto_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_2a
    return-void
.end method
