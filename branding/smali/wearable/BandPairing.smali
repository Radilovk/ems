.class final Lcom/isaigu/gymapp/wearable/BandPairing;
.super Ljava/lang/Object;
.source "BandPairing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandPairing$CloseClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$PickFileClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;,
        Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;,
        Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;,
        Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;
    }
.end annotation


# static fields
.field private static final handler:Landroid/os/Handler;


# instance fields
.field private final a:Landroid/app/Activity;

.field private busy:Z

.field private choices:Landroid/widget/LinearLayout;

.field private closed:Z

.field private dialog:Landroid/app/Dialog;

.field private findBtn:Landroid/widget/TextView;

.field private keyField:Landroid/widget/EditText;

.field private macField:Landroid/widget/EditText;

.field private manual:Landroid/widget/LinearLayout;

.field private manualLink:Landroid/widget/TextView;

.field private final onDone:Ljava/lang/Runnable;

.field private pickLink:Landroid/widget/TextView;

.field private status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandPairing;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->find()V

    return-void
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/BandPairing;->macResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/wearable/BandPairing;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->failed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->saveManual()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandPairing;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->scanFinished(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    return-void
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->pickFile()V

    return-void
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/BandPairing;->saveBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private assignFirst(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 267
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    const/4 v0, 0x0

    .line 269
    :goto_11
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->assignBandRole(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    :cond_16
    return-void

    .line 268
    :cond_17
    const/4 v0, 0x2

    goto :goto_11
.end method

.method private buildManual(II)Landroid/widget/LinearLayout;
    .registers 14

    .prologue
    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v8, -0x1

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v6, 0x0

    .line 134
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 137
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "\u0420\u044a\u0447\u043d\u043e \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u043d\u0435"

    const-string v3, "Manual entry"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, p1, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->field(I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    .line 144
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    const-string v3, "MAC  AA:BB:CC:DD:EE:FF"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    const v3, 0x81001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 147
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v3, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v4, "Choose"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, -0xea9a40

    invoke-static {v2, v3, v4, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 149
    new-instance v3, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 151
    invoke-static {v5, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->field(I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    const-string v2, "\u041a\u043b\u044e\u0447: 32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v3, "Key: 32 chars 0-9 / a-f"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 161
    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Save the band"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd182ce

    invoke-static {v1, v2, v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 169
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-object v0
.end method

.method private close()V
    .registers 2

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    .line 381
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_10

    .line 387
    :cond_f
    :goto_f
    return-void

    .line 385
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private failed(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 324
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 325
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->pickLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    const-string v0, "cancelled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 328
    const-string v0, "\u0411\u0435\u0437 \u0434\u043e\u0441\u0442\u044a\u043f \u0434\u043e \u043f\u0430\u043f\u043a\u0430\u0442\u0430 \u043b\u043e\u0433\u044a\u0442 \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u0435 \u043f\u0440\u043e\u0447\u0435\u0442\u0435 \u0441\u0430\u043c. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041d\u0430\u043c\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0438\u0442\u0435\u201c \u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u201e\u0418\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u0439 \u0442\u0430\u0437\u0438 \u043f\u0430\u043f\u043a\u0430\u201c."

    const-string v1, "Without access to the folder the log cannot be read by itself. Press \u201cFind the bands\u201d and choose \u201cUse this folder\u201d."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 338
    :goto_21
    return-void

    .line 334
    :cond_22
    const-string v0, "\u0412 \u043b\u043e\u0433\u043e\u0432\u0435\u0442\u0435 \u043d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447. \u0412 Mi Fitness (\u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0442\u0430\u043c) \u043d\u0430\u043f\u0440\u0430\u0432\u0438 \u043d\u043e\u0432 \u043b\u043e\u0433 \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041d\u0430\u043c\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0438\u0442\u0435\u201c \u043f\u0430\u043a \u2014 \u0438\u043b\u0438 \u0432\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0447\u043d\u043e."

    const-string v1, "No key in the logs. In Mi Fitness (with the band paired there) make a new log and press \u201cFind the bands\u201d again \u2014 or enter it by hand."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private field(I)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    .line 176
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 177
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 180
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 181
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "bg_elevated"

    const v3, -0xe0dcd4

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-object v0
.end method

.method private find()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    if-eqz v0, :cond_6

    .line 197
    :goto_5
    return-void

    .line 191
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->choices:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->pickLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u043d\u0430\u0439-\u043d\u043e\u0432\u0438\u044f \u043b\u043e\u0433 \u043d\u0430 Mi Fitness\u2026"

    const-string v1, "Looking for the newest Mi Fitness log\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    const-string v2, "xems-band-scan"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method private findMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 276
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u043d\u0430\u043c\u0435\u0440\u0435\u043d \u2713 \u0422\u044a\u0440\u0441\u044f \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043f\u043e Bluetooth \u2014 \u0434\u0440\u044a\u0436 \u044f \u0434\u043e \u0442\u0430\u0431\u043b\u0435\u0442\u0430\u2026"

    const-string v1, "Key found \u2713 Looking for the band over Bluetooth \u2014 keep it near the tablet\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;

    invoke-direct {v1, p0, p1, p3}, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->find(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;)V

    .line 279
    return-void
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->close()V

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_c
    return-void
.end method

.method private found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 228
    const/4 v3, 0x0

    .line 229
    const-string v1, ""

    .line 230
    const-string v0, ""

    .line 231
    const-string v2, ""

    .line 232
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    .line 233
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->name:Ljava/lang/String;

    invoke-static {v1, v2, v6, v7}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    .line 236
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->key:Ljava/lang/String;

    .line 237
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->name:Ljava/lang/String;

    move-object v0, v1

    .line 238
    goto :goto_13

    .line 239
    :cond_34
    if-nez v3, :cond_58

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_58

    .line 241
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5f

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    move v3, v4

    .line 251
    :cond_58
    if-nez v3, :cond_69

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->failed(Ljava/lang/String;)V

    .line 263
    :goto_5e
    return-void

    .line 247
    :cond_5f
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/BandPairing;->findMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 255
    :cond_69
    if-ne v3, v4, :cond_6e

    .line 256
    invoke-direct {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->assignFirst(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_6e
    if-ne v3, v4, :cond_7f

    .line 259
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0435 \u0434\u043e\u0431\u0430\u0432\u0435\u043d\u0430 \u2713"

    const-string v1, "Band added \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_78
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->finish()V

    goto :goto_5e

    .line 260
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430\u043c\u0435\u0440\u0435\u043d\u0438 \u0433\u0440\u0438\u0432\u043d\u0438: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u0418\u0437\u0431\u0435\u0440\u0438 \u043a\u043e\u044f \u0437\u0430 \u043a\u0430\u043a\u0432\u043e."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bands found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Choose what each is for."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78
.end method

.method private macResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 282
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    if-eqz v0, :cond_8

    .line 313
    :cond_7
    :goto_7
    return-void

    .line 285
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_24

    .line 286
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 287
    aget-object v1, v0, v2

    aget-object v2, v0, v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    aget-object p3, v0, v9

    :cond_20
    invoke-direct {p0, v1, p2, p3}, Lcom/isaigu/gymapp/wearable/BandPairing;->saveBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 290
    :cond_24
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 292
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 293
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u043d\u0430\u043c\u0435\u0440\u0435\u043d \u2713, \u043d\u043e \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u0432\u0438\u0436\u0434\u0430 \u043f\u043e Bluetooth. \u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth, \u0434\u0440\u044a\u0436 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0434\u043e \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041d\u0430\u043c\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0438\u0442\u0435\u201c \u043f\u0430\u043a \u2014 \u0438\u043b\u0438 \u0432\u044a\u0432\u0435\u0434\u0438 MAC-\u0430."

    const-string v1, "Key found \u2713, but the band is not visible over Bluetooth. Turn Bluetooth on, keep the band near the tablet and press \u201cFind the bands\u201d again \u2014 or type the MAC."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 300
    :cond_42
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u043d\u0430\u043c\u0435\u0440\u0435\u043d \u2713 \u041a\u043e\u044f \u0435 \u0442\u0432\u043e\u044f\u0442\u0430 \u0433\u0440\u0438\u0432\u043d\u0430?"

    const-string v1, "Key found \u2713 Which one is your band?"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->choices:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    invoke-static {v0, v1, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    move v1, v2

    .line 303
    :goto_5b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 304
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 305
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v9

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v7, "bg_elevated"

    const v8, -0xd5d5d6

    .line 306
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 305
    invoke-static {v5, v3, v6, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 307
    new-instance v5, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;

    aget-object v6, v0, v2

    aget-object v0, v0, v9

    invoke-direct {v5, p0, v6, p2, v0}, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v6, 0x42800000    # 64.0f

    .line 309
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 311
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->choices:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 305
    :cond_d4
    const-string v3, ""

    goto :goto_8b
.end method

.method private open()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const v12, -0xd5d5d6

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    invoke-static {v0, v1, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "text_secondary"

    const v3, -0x655f5a

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 60
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v3, "bg_screen"

    const v4, -0xededee

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 61
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 63
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u0434\u0432\u043e\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v7, "Pair a band"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v5, v6, v7, v0, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v6, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v7, "Close"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v8, "bg_elevated"

    .line 73
    invoke-static {v7, v8, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 72
    invoke-static {v5, v6, v7, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    .line 74
    new-instance v6, Lcom/isaigu/gymapp/wearable/BandPairing$CloseClick;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$CloseClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "1. \u0412 Mi Fitness (\u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0442\u0430\u043c): \u041f\u0440\u043e\u0444\u0438\u043b \u2192 \u0417\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u2192 \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u0439 \u043b\u043e\u0433\u043e\u0442\u043e \u043c\u043d\u043e\u0433\u043e \u043f\u044a\u0442\u0438. \u0417\u0430\u043f\u0438\u0441\u0432\u0430 \u0441\u0435 \u0430\u0440\u0445\u0438\u0432 \u0432 Download/wearablelog.\n2. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u0431\u0443\u0442\u043e\u043d\u0430 \u2014 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u0430\u043c\u043e \u0432\u0437\u0438\u043c\u0430 \u043d\u0430\u0439-\u043d\u043e\u0432\u0438\u044f \u0430\u0440\u0445\u0438\u0432, \u043a\u043b\u044e\u0447\u0430 \u0438 MAC-\u0430. \u041f\u044a\u0440\u0432\u0438\u044f \u043f\u044a\u0442 Android \u043f\u0438\u0442\u0430 \u0432\u0435\u0434\u043d\u044a\u0436 \u0437\u0430 \u0434\u043e\u0441\u0442\u044a\u043f \u0434\u043e \u043f\u0430\u043f\u043a\u0430\u0442\u0430."

    const-string v6, "1. In Mi Fitness (the band must be paired there): Profile \u2192 About \u2192 tap the logo many times. An archive is saved to Download/wearablelog.\n2. Press the button \u2014 the app takes the newest archive, the key and the MAC by itself. The first time Android asks once for access to the folder."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v3, v5, v6, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 86
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v9, v5, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "\u041d\u0430\u043c\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0438\u0442\u0435"

    const-string v6, "Find the bands"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, -0x1595d5

    invoke-static {v3, v5, v6, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    .line 90
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v3, v5, v6, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v9, v5, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->choices:Landroid/widget/LinearLayout;

    .line 99
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->choices:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->choices:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "\u0418\u0437\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b\u0430 \u0440\u044a\u0447\u043d\u043e"

    const-string v6, "Pick the file by hand"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v7, "bg_elevated"

    .line 103
    invoke-static {v6, v7, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 102
    invoke-static {v3, v5, v6, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->pickLink:Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->pickLink:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->pickLink:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/wearable/BandPairing$PickFileClick;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$PickFileClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v6, 0x42400000    # 48.0f

    .line 107
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 109
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->pickLink:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "\u041d\u0435 \u0443\u0441\u043f\u044f\u0432\u0430? \u0412\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0447\u043d\u043e"

    const-string v6, "Not working? Enter by hand"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v7, "bg_elevated"

    .line 112
    invoke-static {v6, v7, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 111
    invoke-static {v3, v5, v6, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    .line 113
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v6, 0x42400000    # 48.0f

    .line 116
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->buildManual(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 127
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const v3, 0x1030009

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    .line 128
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 131
    return-void
.end method

.method private pickFile()V
    .registers 3

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    if-eqz v0, :cond_5

    .line 225
    :goto_4
    return-void

    .line 222
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pick(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    goto :goto_4
.end method

.method private saveBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 316
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v0, p2, p3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, v0, p2}, Lcom/isaigu/gymapp/wearable/BandPairing;->assignFirst(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0435 \u0434\u043e\u0431\u0430\u0432\u0435\u043d\u0430 \u2713"

    const-string v1, "Band added \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->finish()V

    .line 321
    return-void
.end method

.method private saveManual()V
    .registers 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 355
    const-string v0, "\u041d\u0435\u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC (12 hex \u0437\u043d\u0430\u043a\u0430)"

    const-string v1, "Invalid MAC (12 hex chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    .line 369
    :goto_2d
    return-void

    .line 358
    :cond_2e
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 359
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 32 hex \u0437\u043d\u0430\u043a\u0430"

    const-string v1, "The key must be 32 hex chars"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    goto :goto_2d

    .line 362
    :cond_40
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    const-string v0, " "

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 365
    :cond_6c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_71
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->saveBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private scanFinished(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 4

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    if-eqz v0, :cond_5

    .line 216
    :goto_4
    return-void

    .line 203
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_4

    .line 207
    :cond_11
    if-eqz p1, :cond_17

    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    if-nez v0, :cond_36

    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->tree(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_36

    .line 209
    const-string v0, "\u0415\u0434\u043d\u043e\u043a\u0440\u0430\u0442\u043d\u043e \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435: \u0432 \u043f\u0440\u043e\u0437\u043e\u0440\u0435\u0446\u0430 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0418\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u0439 \u0442\u0430\u0437\u0438 \u043f\u0430\u043f\u043a\u0430\u201c \u2192 \u201e\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u201c. \u041e\u0442\u0442\u0443\u043a \u043d\u0430\u0442\u0430\u0442\u044a\u043a \u043b\u043e\u0433\u044a\u0442 \u0441\u0435 \u0447\u0435\u0442\u0435 \u0441\u0430\u043c."

    const-string v1, "One-time permission: tap \u201cUse this folder\u201d \u2192 \u201cAllow\u201d. From then on the log is read by itself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->grantFolder(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    goto :goto_4

    .line 215
    :cond_36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->failed(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setStatus(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    const v0, -0x10acb0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    return-void

    .line 348
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "text_secondary"

    const v3, -0x655f5a

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method static show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandPairing;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->open()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 55
    :goto_8
    return-void

    .line 52
    :catch_9
    move-exception v0

    .line 53
    const-string v1, "BandPairing.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private showManual(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 394
    :goto_a
    return-void

    .line 392
    :catch_b
    move-exception v0

    goto :goto_a
.end method
