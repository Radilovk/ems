.class final Lcom/isaigu/gymapp/wearable/BandPairing;
.super Ljava/lang/Object;
.source "BandPairing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandPairing$CloseClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;,
        Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;,
        Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;,
        Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;
    }
.end annotation


# static fields
.field private static final handler:Landroid/os/Handler;


# instance fields
.field private final a:Landroid/app/Activity;

.field private busy:Z

.field private closed:Z

.field private dialog:Landroid/app/Dialog;

.field private findBtn:Landroid/widget/TextView;

.field private keyField:Landroid/widget/EditText;

.field private macField:Landroid/widget/EditText;

.field private manual:Landroid/widget/LinearLayout;

.field private manualLink:Landroid/widget/TextView;

.field private final onDone:Ljava/lang/Runnable;

.field private status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->find()V

    return-void
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->failed()V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->saveManual()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandPairing;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->scanFinished(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    return-void
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/wearable/BandPairing;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    return-void
.end method

.method private buildManual(II)Landroid/widget/LinearLayout;
    .registers 14

    .prologue
    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v8, -0x1

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v6, 0x0

    .line 116
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
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

    .line 121
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->field(I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    .line 126
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    const-string v3, "MAC  AA:BB:CC:DD:EE:FF"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    const v3, 0x81001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 129
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v3, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v4, "Choose"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, -0xea9a40

    invoke-static {v2, v3, v4, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 131
    new-instance v3, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 133
    invoke-static {v5, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->field(I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    .line 139
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    const-string v2, "\u041a\u043b\u044e\u0447: 32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v3, "Key: 32 chars 0-9 / a-f"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 143
    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 145
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Save the band"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd182ce

    invoke-static {v1, v2, v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 149
    new-instance v2, Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    .line 151
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-object v0
.end method

.method private close()V
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    .line 291
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_10

    .line 297
    :cond_f
    :goto_f
    return-void

    .line 295
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private failed()V
    .registers 3

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    const-string v0, "\u0412 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u0442\u0435 \u0444\u0430\u0439\u043b\u043e\u0432\u0435 \u043d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447. \u041f\u0440\u043e\u0432\u0435\u0440\u0438, \u0447\u0435 \u0435 \u043b\u043e\u0433\u044a\u0442 \u043d\u0430 Mi Fitness \u0441\u043b\u0435\u0434 \u0441\u0434\u0432\u043e\u044f\u0432\u0430\u043d\u0435, \u0438\u043b\u0438 \u0432\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0447\u043d\u043e."

    const-string v1, "No key in the chosen files. Make sure it is the Mi Fitness log after pairing, or enter it by hand."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private field(I)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    .line 158
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 159
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 162
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 163
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

    .line 164
    return-object v0
.end method

.method private find()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    if-eqz v0, :cond_6

    .line 177
    :goto_5
    return-void

    .line 173
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u043b\u043e\u0433\u0430 \u043d\u0430 Mi Fitness\u2026"

    const-string v1, "Looking for the Mi Fitness log\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    const-string v2, "xems-band-scan"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->close()V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 286
    :cond_c
    return-void
.end method

.method private found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 193
    .line 194
    const-string v1, ""

    .line 195
    const-string v0, ""

    .line 196
    const-string v2, ""

    .line 197
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v1

    move v3, v4

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->key:Ljava/lang/String;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->name:Ljava/lang/String;

    invoke-static {v1, v2, v7, v8}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 200
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    .line 201
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->key:Ljava/lang/String;

    .line 202
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->name:Ljava/lang/String;

    move-object v0, v1

    .line 203
    goto :goto_14

    .line 204
    :cond_35
    if-nez v3, :cond_59

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x20

    if-ne v1, v6, :cond_59

    .line 206
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5f

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    move v3, v5

    .line 220
    :cond_59
    if-nez v3, :cond_79

    .line 221
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->failed()V

    .line 234
    :goto_5e
    return-void

    .line 212
    :cond_5f
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->busy:Z

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    const-string v0, "\u041d\u0430\u043c\u0435\u0440\u0438\u0445 \u043a\u043b\u044e\u0447, \u043d\u043e \u043d\u0435 \u0438 MAC. \u0414\u043e\u043f\u044a\u043b\u043d\u0438 MAC-\u0430."

    const-string v1, "Found a key but no MAC. Add the MAC."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 224
    :cond_79
    if-ne v3, v5, :cond_90

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 225
    const-string v1, "band"

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 227
    :goto_8b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v0, v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->assignBandRole(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    :cond_90
    if-ne v3, v5, :cond_a3

    .line 230
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0435 \u0434\u043e\u0431\u0430\u0432\u0435\u043d\u0430 \u2713"

    const-string v1, "Band added \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_9a
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->finish()V

    goto :goto_5e

    .line 226
    :cond_a1
    const/4 v4, 0x2

    goto :goto_8b

    .line 231
    :cond_a3
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

    goto :goto_9a
.end method

.method private open()V
    .registers 15

    .prologue
    const v13, -0xd5d5d6

    const/high16 v12, 0x41600000    # 14.0f

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    invoke-static {v0, v1, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v2, "text_secondary"

    const v3, -0x655f5a

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v3, "bg_screen"

    const v4, -0xededee

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 58
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 60
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u0434\u0432\u043e\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v7, "Pair a band"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41b00000    # 22.0f

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v6, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v7, "Close"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v8, "bg_elevated"

    .line 70
    invoke-static {v7, v8, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 69
    invoke-static {v5, v6, v7, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    .line 71
    new-instance v6, Lcom/isaigu/gymapp/wearable/BandPairing$CloseClick;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$CloseClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "1. \u0412 Mi Fitness (\u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0442\u0430\u043c): \u041f\u0440\u043e\u0444\u0438\u043b \u2192 \u0417\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u2192 \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u0439 \u043b\u043e\u0433\u043e\u0442\u043e \u043c\u043d\u043e\u0433\u043e \u043f\u044a\u0442\u0438. \u0417\u0430\u043f\u0438\u0441\u0432\u0430 \u0441\u0435 \u0430\u0440\u0445\u0438\u0432 \u0432 Download/wearablelog.\n2. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u0431\u0443\u0442\u043e\u043d\u0430 \u2014 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430\u043c\u0438\u0440\u0430 \u0433\u0440\u0438\u0432\u043d\u0438\u0442\u0435 \u0438 \u043a\u043b\u044e\u0447\u043e\u0432\u0435\u0442\u0435 \u0438\u043c \u0441\u0430\u043c\u043e."

    const-string v6, "1. In Mi Fitness (the band must be paired there): Profile \u2192 About \u2192 tap the logo many times. An archive is saved to Download/wearablelog.\n2. Press the button \u2014 the app finds the bands and their keys by itself."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v12, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 81
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v9, v5, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "\u041d\u0430\u043c\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0438\u0442\u0435"

    const-string v6, "Find the bands"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, -0x1595d5

    invoke-static {v3, v5, v6, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->findBtn:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, ""

    invoke-static {v3, v5, v12, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    .line 90
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v9, v5, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v5, "\u041d\u0435 \u0443\u0441\u043f\u044f\u0432\u0430? \u0412\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0447\u043d\u043e"

    const-string v6, "Not working? Enter by hand"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const-string v7, "bg_elevated"

    .line 94
    invoke-static {v6, v7, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 93
    invoke-static {v3, v5, v6, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/high16 v6, 0x42400000    # 48.0f

    .line 98
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 100
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->buildManual(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 109
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const v3, 0x1030009

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    .line 110
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    return-void
.end method

.method private saveManual()V
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->keyField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 258
    const-string v0, "\u041d\u0435\u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC (12 hex \u0437\u043d\u0430\u043a\u0430)"

    const-string v1, "Invalid MAC (12 hex chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    .line 279
    :goto_2e
    return-void

    .line 261
    :cond_2f
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 262
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 32 hex \u0437\u043d\u0430\u043a\u0430"

    const-string v1, "The key must be 32 hex chars"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    goto :goto_2e

    .line 265
    :cond_41
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string v0, " "

    const-string v4, ""

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 268
    :cond_6d
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_71
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 273
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 274
    const/4 v0, 0x0

    .line 275
    :goto_93
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    invoke-static {v1, v3, v2, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->assignBandRole(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    :cond_98
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0435 \u0434\u043e\u0431\u0430\u0432\u0435\u043d\u0430 \u2713"

    const-string v1, "Band added \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->toast(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandPairing;->finish()V

    goto :goto_2e

    :cond_a7
    move v0, v1

    .line 274
    goto :goto_93
.end method

.method private scanFinished(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 4

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z

    if-eqz v0, :cond_5

    .line 190
    :goto_4
    return-void

    .line 183
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 184
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_4

    .line 187
    :cond_11
    const-string v0, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u0433\u043e \u043f\u0440\u043e\u0447\u0435\u0442\u0430. \u0418\u0437\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b\u0430 \u043e\u0442 Download/wearablelog."

    const-string v1, "Cannot read it automatically. Pick the file from Download/wearablelog."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pick(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    goto :goto_4
.end method

.method private setStatus(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->status:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    const v0, -0x10acb0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    return-void

    .line 251
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
    .line 48
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandPairing;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->open()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 52
    :goto_8
    return-void

    .line 49
    :catch_9
    move-exception v0

    .line 50
    const-string v1, "BandPairing.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private showManual(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->setStatus(Ljava/lang/String;Z)V

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manualLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->manual:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 304
    :goto_a
    return-void

    .line 302
    :catch_b
    move-exception v0

    goto :goto_a
.end method
