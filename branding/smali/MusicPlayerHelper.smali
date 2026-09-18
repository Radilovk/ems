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
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;
    }
.end annotation


# static fields
.field static final BUTTON_ID:I = 0x7f090226

.field static final LAYOUT_ID:I = 0x7f0b0078

.field static final PICK_AUDIO:I = 0x4255

.field private static dialog:Landroid/support/v7/app/AlertDialog;

.field private static dialogContent:Landroid/view/View;

.field private static hostFragment:Landroid/support/v4/app/Fragment;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastPickResultMs:J

.field private static levelView:Landroid/widget/TextView;

.field private static final mainHandler:Landroid/os/Handler;

.field private static pendingActivity:Landroid/app/Activity;

.field private static pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static pickingFile:Z

.field private static savedSensitivity:I

.field private static selectedUri:Landroid/net/Uri;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static trackView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mainHandler:Landroid/os/Handler;

    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->savedSensitivity:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/app/Fragment;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;I)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$1002(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1100()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    return-void
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$600()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hideDialogForPicker()V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDialogAfterPick()V

    return-void
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()I
    .registers 1

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v0

    return v0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 3

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;Landroid/support/v4/app/Fragment;)V

    .line 55
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;Landroid/support/v4/app/Fragment;)V
    .registers 5

    .line 61
    if-eqz p0, :cond_4d

    if-nez p1, :cond_5

    goto :goto_4d

    .line 64
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    if-nez v0, :cond_f

    .line 66
    return-void

    .line 68
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 69
    sput-object p2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 74
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "master music button wired, fragment="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_3e
    const-string p1, "null"

    :goto_40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    const-string p1, "attach"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 62
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 334
    if-nez p0, :cond_3

    .line 335
    return-void

    .line 337
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 338
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-void
.end method

.method private static canShowOn(Landroid/app/Activity;)Z
    .registers 4

    .line 151
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 152
    return v0

    .line 155
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 156
    return v0

    .line 158
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    if-eqz p0, :cond_18

    .line 159
    return v0

    .line 162
    :cond_18
    goto :goto_1a

    .line 161
    :catchall_19
    move-exception p0

    .line 163
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method private static clearDialogRefs()V
    .registers 1

    .line 312
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    .line 313
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 314
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 315
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 316
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 317
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 320
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 321
    return-void

    .line 324
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 325
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->savedSensitivity:I

    if-lez v1, :cond_26

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->savedSensitivity:I

    goto :goto_28

    :cond_26
    const/16 v1, 0x14

    :goto_28
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2c

    .line 330
    goto :goto_2d

    .line 329
    :catchall_2c
    move-exception v0

    .line 331
    :goto_2d
    return-void
.end method

.method private static dismissDialog()V
    .registers 2

    .line 287
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 289
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 290
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    .line 292
    goto :goto_f

    .line 291
    :catchall_e
    move-exception v0

    .line 293
    :goto_f
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 295
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    .line 296
    return-void
.end method

.method private static hideDialogForPicker()V
    .registers 2

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->savedSensitivity:I

    .line 300
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 302
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 303
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    .line 305
    goto :goto_15

    .line 304
    :catchall_14
    move-exception v0

    .line 306
    :goto_15
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 308
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V

    .line 309
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .line 167
    const/16 v0, 0x4255

    if-eq p0, v0, :cond_5

    .line 168
    return-void

    .line 170
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 171
    sget-wide v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPickResultMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long p0, v2, v4

    if-gez p0, :cond_14

    .line 172
    return-void

    .line 174
    :cond_14
    sput-wide v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPickResultMs:J

    .line 175
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 176
    const/4 p0, -0x1

    if-ne p1, p0, :cond_40

    if-eqz p2, :cond_40

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 178
    if-eqz p0, :cond_40

    .line 179
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    .line 181
    const/4 p1, 0x0

    :try_start_27
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 182
    if-eqz p1, :cond_3e

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    .line 186
    if-eqz p2, :cond_3e

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3f

    .line 191
    :cond_3e
    goto :goto_40

    .line 190
    :catchall_3f
    move-exception p0

    .line 194
    :cond_40
    :goto_40
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDialogAfterPick()V

    .line 195
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 343
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_c

    .line 344
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->savedSensitivity:I

    if-lez v0, :cond_b

    move v1, v0

    :cond_b
    return v1

    .line 347
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_11

    return v0

    .line 348
    :catchall_11
    move-exception v0

    .line 349
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->savedSensitivity:I

    if-lez v0, :cond_17

    move v1, v0

    :cond_17
    return v1
.end method

.method private static refreshDialogStatus()V
    .registers 2

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    goto :goto_15

    .line 219
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 221
    :goto_15
    return-void
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 228
    if-eqz p0, :cond_3

    .line 229
    return-object p0

    .line 231
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;

    if-eqz p0, :cond_e

    .line 232
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 233
    if-eqz p0, :cond_e

    .line 234
    return-object p0

    .line 237
    :cond_e
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_1d

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 239
    if-eqz p0, :cond_1d

    .line 240
    return-object p0

    .line 243
    :cond_1d
    if-eqz p1, :cond_2a

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 245
    if-eqz p0, :cond_2a

    .line 246
    return-object p0

    .line 249
    :cond_2a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 250
    if-eqz p0, :cond_31

    .line 251
    return-object p0

    .line 253
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 224
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 257
    if-nez p0, :cond_4

    .line 258
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 260
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 261
    return-object v0

    .line 263
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 264
    if-nez p0, :cond_f

    .line 265
    return-object v0

    .line 267
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 268
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 269
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 270
    return-object v2

    .line 267
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 273
    :cond_28
    return-object v0
.end method

.method private static restoreDialogAfterPick()V
    .registers 4

    .line 198
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingActivity:Landroid/app/Activity;

    .line 199
    if-nez v0, :cond_8

    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    :cond_8
    if-nez v0, :cond_e

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    .line 205
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 206
    if-nez v1, :cond_18

    .line 207
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 209
    :cond_18
    if-eqz v0, :cond_28

    if-nez v1, :cond_1d

    goto :goto_28

    .line 212
    :cond_1d
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;

    invoke-direct {v3, v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void

    .line 210
    :cond_28
    :goto_28
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    if-eqz p1, :cond_24

    const-string v1, "ok"

    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "show.begin"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_30
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showInternal(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    .line 90
    goto :goto_48

    .line 84
    :catchall_34
    move-exception p1

    .line 85
    const-string v0, "show"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 87
    if-eqz p0, :cond_48

    .line 88
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 91
    :cond_48
    :goto_48
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 388
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 389
    const/4 p0, 0x0

    .line 391
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 392
    const/4 p1, 0x1

    .line 394
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 395
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 397
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    .line 398
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

    .line 399
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    :cond_37
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 404
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 405
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 407
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 408
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    :cond_10
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1c

    .line 412
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 414
    :cond_1c
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 370
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 371
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 374
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :cond_13
    return-void
.end method

.method private static showInternal(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 94
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 95
    const-string v0, "show.abort"

    if-nez p0, :cond_10

    .line 96
    const-string p0, "no activity"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_10
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->canShowOn(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 100
    const-string p0, "activity finishing/destroyed"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 103
    :cond_1c
    if-nez p1, :cond_2a

    .line 104
    const-string p1, "no train item"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 106
    return-void

    .line 108
    :cond_2a
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingActivity:Landroid/app/Activity;

    .line 109
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 110
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 111
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 112
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 115
    const p1, 0x7f0d0113

    :try_start_3a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_ef

    .line 120
    nop

    .line 121
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialogContent:Landroid/view/View;

    .line 122
    const v1, 0x7f090227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f090228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 124
    const v1, 0x7f090229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 126
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 127
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTrackLabel(Landroid/net/Uri;)V

    .line 128
    const v1, 0x7f09022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 129
    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f09022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$StopListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshDialogStatus()V

    .line 132
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 135
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 137
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_d5

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 141
    :cond_d5
    :try_start_d5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 142
    const-string v0, "show.ok"

    const-string v1, "dialog visible"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_e2

    .line 147
    goto :goto_ee

    .line 143
    :catchall_e2
    move-exception v0

    .line 144
    const-string v1, "dialog.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissDialog()V

    .line 146
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 148
    :goto_ee
    return-void

    .line 116
    :catchall_ef
    move-exception v0

    .line 117
    const-string v1, "inflate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 119
    return-void
.end method

.method public static showPreparing()V
    .registers 2

    .line 379
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 380
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 382
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 383
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :cond_13
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 277
    if-nez p0, :cond_3

    .line 278
    return-void

    .line 281
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 283
    goto :goto_d

    .line 282
    :catchall_c
    move-exception p0

    .line 284
    :goto_d
    return-void
.end method

.method private static updateTrackLabel(Landroid/net/Uri;)V
    .registers 3

    .line 354
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 355
    return-void

    .line 357
    :cond_5
    if-nez p0, :cond_e

    .line 358
    const p0, 0x7f0d0112

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 359
    return-void

    .line 361
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 365
    :cond_1b
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 363
    :cond_21
    :goto_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :goto_2a
    return-void
.end method
