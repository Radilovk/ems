.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sheet"
.end annotation


# instance fields
.field final HZ_PRESETS:[I

.field final US_PRESETS:[I

.field final a:Landroid/app/Activity;

.field final handler:Landroid/os/Handler;

.field hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

.field level:I

.field final open:[Z

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field tHz:I

.field tUs:I

.field tWave:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    .line 87
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tWave:I

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_b0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->HZ_PRESETS:[I

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_c8

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->US_PRESETS:[I

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->handler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 95
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 96
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c bodytech"

    const-string v1, "\u041a\u0430\u043d\u0430\u043b\u0438 C1\u2013C8 \u2192 \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0438 \u043d\u0430 XEMS"

    const/16 v2, 0x3d4

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 98
    const-string v0, "\u041f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435"

    invoke-static {p1, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v2, "\u041f\u043e\u0434\u0440\u0435\u0434\u0438 \u043b\u044f\u0432\u043e \u2192 \u0434\u044f\u0441\u043d\u043e"

    invoke-static {p1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 103
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 108
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    return-void

    .line 88
    :array_b0
    .array-data 4
        0x1
        0xa
        0x1e
        0x32
        0x55
        0x78
        0xc8
        0x190
        0x2bc
        0x3e8
    .end array-data

    .line 89
    :array_c8
    .array-data 4
        0x32
        0x64
        0xc8
        0x168
        0x1c2
        0x1ff
    .end array-data
.end method


# virtual methods
.method channel(I)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v13, 0x40c00000    # 6.0f

    const/16 v11, 0x22

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    const-string v0, ""

    :goto_57
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const-string v0, "\u0418\u043c\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430"

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 230
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 231
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 232
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 233
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 234
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 236
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I

    move-result v3

    .line 239
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v8, "\u25b2"

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    if-lez v3, :cond_146

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_a4
    invoke-static {v7, v8, v9, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v7

    .line 240
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;

    invoke-direct {v0, p0, p1, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v9, "\u25bc"

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 242
    const/4 v0, 0x7

    if-ge v3, v0, :cond_14a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 241
    :goto_bb
    invoke-static {v8, v9, v10, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 243
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;

    invoke-direct {v3, p0, p1, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v9, 0x42080000    # 34.0f

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v8, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 246
    invoke-virtual {v2, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v7, "\u25b6"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {v0, v7, v8, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 249
    new-instance v7, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;

    invoke-direct {v7, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 254
    new-array v8, v4, [Landroid/widget/LinearLayout;

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v9

    move v0, v1

    .line 256
    :goto_113
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    array-length v2, v2

    if-ge v0, v2, :cond_155

    .line 257
    if-gez v0, :cond_14e

    move v2, v1

    .line 258
    :goto_11b
    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->sliderName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v3

    if-ne v3, v2, :cond_153

    move v3, v4

    :goto_128
    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v10, v11, v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 259
    new-instance v10, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;

    invoke-direct {v10, p0, v5, p1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget-object v10, v8, v5

    invoke-static {v2, v10, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    .line 227
    :cond_140
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 239
    :cond_146
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_a4

    .line 242
    :cond_14a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_bb

    .line 257
    :cond_14e
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    aget v2, v2, v0

    goto :goto_11b

    :cond_153
    move v3, v5

    .line 258
    goto :goto_128

    .line 262
    :cond_155
    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0420\u0430\u0431\u043e\u0442\u0438 \u0432 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 265
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1c8

    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u25b4"

    :goto_192
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v2, v2, p1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 271
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 272
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1c7

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->params(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_1c7
    return-object v6

    .line 268
    :cond_1c8
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u25be"

    goto :goto_192
.end method

.method field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;
    .registers 8

    .prologue
    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, p2, v2, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    return-object v0
.end method

.method params(I)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v10, -0x2

    const/16 v9, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 281
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 282
    const-string v0, "\u0421\u0438\u043b\u0430"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    invoke-direct {v4, p0, p1, v7}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v0, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v0

    .line 285
    const-string v3, "\u0428\u0438\u0440\u0438\u043d\u0430"

    if-nez v0, :cond_cd

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_50
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    invoke-direct {v4, p0, p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v3, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 286
    invoke-static {v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 285
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 289
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 290
    invoke-static {p1, v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 291
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v3

    .line 292
    const-string v4, "Hz \u043e\u0441\u043d\u043e\u0432\u0435\u043d"

    if-nez v0, :cond_e2

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_7e
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    const/4 v6, 0x2

    invoke-direct {v5, p0, p1, v6}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v4, v0, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    const-string v4, "Hz \u0432\u0442\u043e\u0440\u0438"

    if-nez v3, :cond_f6

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_96
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    const/4 v5, 0x3

    invoke-direct {v3, p0, p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v4, v0, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 295
    invoke-static {v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 294
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v2, "\u0410\u0432\u0442\u043e = \u043a\u0430\u043a\u0442\u043e \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. Hz \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u043c\u043e\u0433\u0430\u0442 \u0441\u0430\u043c\u043e \u0434\u0430 \u043d\u0430\u043c\u0430\u043b\u044f\u0442 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0442\u0430 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 299
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 300
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    return-object v1

    .line 285
    :cond_cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u00b5s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 292
    :cond_e2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 294
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_96
.end method

.method render()V
    .registers 14

    .prologue
    const/4 v10, 0x4

    const/4 v12, -0x2

    const/4 v5, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->testPanel()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 189
    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    move v6, v4

    .line 192
    :goto_36
    const/16 v0, 0x8

    if-ge v6, v0, :cond_5c

    .line 193
    if-ge v6, v10, :cond_57

    move-object v0, v1

    .line 194
    :goto_3d
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->channel(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    if-eqz v6, :cond_4b

    if-ne v6, v10, :cond_59

    :cond_4b
    move v3, v4

    :goto_4c
    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_36

    :cond_57
    move-object v0, v2

    .line 193
    goto :goto_3d

    .line 194
    :cond_59
    const/16 v3, 0xa

    goto :goto_4c

    .line 196
    :cond_5c
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v11, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 201
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    new-array v6, v5, [Landroid/widget/LinearLayout;

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    .line 206
    const/4 v0, -0x1

    move v1, v0

    :goto_9c
    const/4 v0, 0x3

    if-gt v1, v0, :cond_c9

    .line 207
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v9, v0, v9

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v0

    if-ne v0, v1, :cond_c7

    move v0, v5

    :goto_ae
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 208
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;

    invoke-direct {v8, p0, v5, v4, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget-object v9, v6, v4

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9c

    :cond_c7
    move v0, v4

    .line 207
    goto :goto_ae

    .line 211
    :cond_c9
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v5, "\u0421\u0438\u043b\u0430 (\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438)"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0430"

    const/high16 v7, 0x41a00000    # 20.0f

    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-static {v1, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 216
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v11, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 182
    return-void
.end method

.method stopHold()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    if-eqz v1, :cond_13

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    iput-boolean v0, v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->live:Z

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    .line 176
    :cond_13
    const/4 v4, -0x1

    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(IIIIIZ)Ljava/lang/String;

    .line 177
    return-void
.end method

.method testField(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[III)Landroid/view/View;
    .registers 15

    .prologue
    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, p2, v1, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    .line 161
    const/4 v0, 0x0

    :goto_27
    array-length v1, p4

    if-ge v0, v1, :cond_54

    .line 162
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget v1, p4, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget v1, p4, v0

    if-ne v1, p5, :cond_52

    const/4 v1, 0x1

    :goto_37
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v6, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 163
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;

    aget v6, p4, v0

    invoke-direct {v5, p0, p6, v6}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 162
    :cond_52
    const/4 v1, 0x0

    goto :goto_37

    .line 166
    :cond_54
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-object v2
.end method

.method testPanel()Landroid/view/View;
    .registers 12

    .prologue
    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0422\u0435\u0441\u0442 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0434\u0440\u044a\u0436 \u25b6 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b"

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0423\u0441\u0435\u0449\u0430\u0448 \u043a\u0430\u043a \u0441\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u044f\u0442 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u0438 \u0444\u043e\u0440\u043c\u0430\u0442\u0430 \u0432\u044a\u0440\u0445\u0443 \u043c\u0443\u0441\u043a\u0443\u043b\u0430. \u0421\u0430\u043c\u043e \u0437\u0430 \u043f\u0440\u043e\u0431\u0430: \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430. \u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u043e\u0442 \u043d\u0430\u0439-\u043d\u0438\u0441\u043a\u043e\u0442\u043e \u043d\u0438\u0432\u043e."

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(II)I

    move-result v8

    .line 125
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    if-le v0, v8, :cond_49

    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    .line 126
    :cond_49
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 127
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestStep;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestStep;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->HZ_PRESETS:[I

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->testField(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[III)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const-string v1, "\u0428\u0438\u0440\u0438\u043d\u0430"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b5s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestStep;

    const/4 v0, 0x1

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestStep;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->US_PRESETS:[I

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->testField(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[III)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 131
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 130
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 135
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 140
    const/4 v0, -0x1

    move v1, v0

    :goto_e5
    const/4 v0, 0x3

    if-gt v1, v0, :cond_112

    .line 141
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v9, v0, v9

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tWave:I

    if-ne v0, v1, :cond_110

    const/4 v0, 0x1

    :goto_f5
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v6, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 142
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;

    const/4 v9, 0x2

    invoke-direct {v6, p0, v9, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v6, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e5

    .line 141
    :cond_110
    const/4 v0, 0x0

    goto :goto_f5

    .line 145
    :cond_112
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0438\u0432\u043e (\u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " % \u043f\u0440\u0438 \u0442\u0435\u0437\u0438 Hz \u0438 \u0448\u0438\u0440\u0438\u043d\u0430)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-static {v1, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-object v7
.end method
