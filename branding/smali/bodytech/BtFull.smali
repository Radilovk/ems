.class final Lcom/isaigu/gymapp/bodytech/BtFull;
.super Ljava/lang/Object;
.source "BtFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtFull$Close;,
        Lcom/isaigu/gymapp/bodytech/BtFull$Unl;,
        Lcom/isaigu/gymapp/bodytech/BtFull$Pick;,
        Lcom/isaigu/gymapp/bodytech/BtFull$Adj;,
        Lcom/isaigu/gymapp/bodytech/BtFull$Act;,
        Lcom/isaigu/gymapp/bodytech/BtFull$Preset;
    }
.end annotation


# static fields
.field static final GAIN_PRESETS:[I

.field static final HZ_PRESETS:[I

.field static final US_PRESETS:[I


# instance fields
.field final a:Landroid/app/Activity;

.field sel:I

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtFull;->HZ_PRESETS:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtFull;->US_PRESETS:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtFull;->GAIN_PRESETS:[I

    return-void

    .line 22
    nop

    :array_1a
    .array-data 4
        0x0
        0x1
        0xa
        0x1e
        0x32
        0x55
        0x96
        0x12c
        0x258
        0x3e8
    .end array-data

    .line 23
    :array_32
    .array-data 4
        0x0
        0x64
        0xc8
        0x168
        0x1c2
        0x1ff
    .end array-data

    .line 24
    :array_42
    .array-data 4
        0x0
        0x32
        0x64
        0x96
        0xc8
        0x12c
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    .line 32
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V

    .line 34
    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    .line 35
    const-string v0, "\u041f\u044a\u043b\u043d\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u00b7 bodytech"

    const-string v1, "\u0412\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u2014 \u0441\u0432\u043e\u0438 Hz, \u0448\u0438\u0440\u0438\u043d\u0430, \u0444\u043e\u0440\u043c\u0430 \u0438 \u0441\u0438\u043b\u0430"

    const/16 v2, 0x3d4

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 36
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtFull;->render()V

    .line 37
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    invoke-static {p1, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtFull$Close;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtFull$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method private field(Ljava/lang/String;Ljava/lang/String;IZ[II)Landroid/view/View;
    .registers 15

    .prologue
    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;

    invoke-direct {v4, p0, p3, p4}, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;IZ)V

    invoke-static {v0, p2, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 131
    const/4 v0, 0x0

    :goto_2c
    array-length v1, p5

    if-ge v0, v1, :cond_62

    .line 132
    aget v1, p5, v0

    if-nez v1, :cond_59

    if-eqz p3, :cond_59

    const-string v1, "\u0410\u0432\u0442\u043e"

    .line 133
    :goto_37
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    aget v2, p5, v0

    if-ne v2, p6, :cond_60

    const/4 v2, 0x1

    :goto_3e
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v6, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;

    aget v6, p5, v0

    invoke-direct {v2, p0, p3, p4, v6}, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;IZI)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v2, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 132
    :cond_59
    aget v1, p5, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 133
    :cond_60
    const/4 v2, 0x0

    goto :goto_3e

    .line 137
    :cond_62
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    return-object v3
.end method

.method private impulse(Ljava/lang/String;Z)Landroid/view/View;
    .registers 14

    .prologue
    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v6

    .line 106
    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    if-nez v6, :cond_b9

    const-string v2, "\u0410\u0432\u0442\u043e"

    :goto_20
    const/4 v3, 0x1

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtFull;->HZ_PRESETS:[I

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtFull;->field(Ljava/lang/String;Ljava/lang/String;IZ[II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v6

    .line 108
    const-string v1, "\u0428\u0438\u0440\u0438\u043d\u0430"

    if-nez v6, :cond_ce

    const-string v2, "\u0410\u0432\u0442\u043e"

    :goto_40
    const/4 v3, 0x2

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtFull;->US_PRESETS:[I

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtFull;->field(Ljava/lang/String;Ljava/lang/String;IZ[II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    .line 113
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWave(IZ)I

    move-result v5

    .line 114
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u0410\u0432\u0442\u043e"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "\u041a\u0432\u0430\u0434\u0440\u0430\u0442"

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, "\u0421\u0438\u043d\u0443\u0441"

    aput-object v1, v6, v0

    const/4 v0, 0x3

    const-string v1, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "\u0422\u0440\u0430\u043f\u0435\u0446 2"

    aput-object v1, v6, v0

    .line 115
    const/4 v0, -0x1

    move v1, v0

    :goto_92
    const/4 v0, 0x3

    if-gt v1, v0, :cond_e5

    .line 116
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    add-int/lit8 v0, v1, 0x1

    aget-object v9, v6, v0

    if-ne v5, v1, :cond_e3

    const/4 v0, 0x1

    :goto_9e
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 117
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;

    const/4 v9, 0x3

    invoke-direct {v8, p0, v9, p2, v1}, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;IZI)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    .line 106
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_20

    .line 108
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b5s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_40

    .line 116
    :cond_e3
    const/4 v0, 0x0

    goto :goto_9e

    .line 120
    :cond_e5
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-object v7
.end method

.method static stepHz(II)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 143
    if-gtz p0, :cond_9

    if-lez p1, :cond_7

    .line 147
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 143
    goto :goto_6

    .line 144
    :cond_9
    const/16 v2, 0x14

    if-ge p0, v2, :cond_16

    move v2, v0

    .line 145
    :goto_e
    mul-int/2addr v2, p1

    add-int/2addr v2, p0

    .line 146
    if-gez p1, :cond_26

    if-ge v2, v0, :cond_26

    move v0, v1

    goto :goto_6

    .line 144
    :cond_16
    const/16 v2, 0x64

    if-ge p0, v2, :cond_1c

    const/4 v2, 0x5

    goto :goto_e

    :cond_1c
    const/16 v2, 0x12c

    if-ge p0, v2, :cond_23

    const/16 v2, 0xa

    goto :goto_e

    :cond_23
    const/16 v2, 0x32

    goto :goto_e

    .line 147
    :cond_26
    const/16 v0, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_6
.end method

.method static stepUs(II)I
    .registers 5

    .prologue
    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 152
    if-gtz p0, :cond_a

    if-lez p1, :cond_8

    .line 155
    :goto_7
    return v0

    :cond_8
    move v0, v1

    .line 152
    goto :goto_7

    .line 153
    :cond_a
    mul-int/lit8 v2, p1, 0xa

    add-int/2addr v2, p0

    .line 154
    if-gez p1, :cond_13

    if-ge v2, v0, :cond_13

    move v0, v1

    goto :goto_7

    .line 155
    :cond_13
    const/16 v0, 0x1ff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method render()V
    .registers 14

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v2, "\u0411\u0435\u0437 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f"

    const-string v4, "\u0412\u043a\u043b: \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430 \u0432\u0430\u0436\u0430\u0442 \u0432 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0442\u043e\u0447\u043d\u043e \u043a\u0430\u043a\u0442\u043e \u0441\u0430 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u0438 (Hz \u0434\u043e 1000, \u0448\u0438\u0440\u0438\u043d\u0430 \u0434\u043e 511 \u00b5s). \u0418\u0437\u043a\u043b: \u043c\u043e\u0433\u0430\u0442 \u0441\u0430\u043c\u043e \u0434\u0430 \u043d\u0430\u043c\u0430\u043b\u044f\u0442 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0442\u0430 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v5

    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtFull$Unl;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/bodytech/BtFull$Unl;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;)V

    .line 50
    invoke-static {v1, v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0430\u043d\u0430\u043b \u2014 \u043b\u044f\u0432\u043e \u2192 \u0434\u044f\u0441\u043d\u043e"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-array v2, v7, [Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    move v1, v3

    .line 60
    :goto_53
    const/16 v0, 0x8

    if-ge v1, v0, :cond_9e

    .line 61
    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v5

    .line 62
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u00b7 "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    if-ne v5, v0, :cond_9c

    move v0, v7

    :goto_83
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v6, v8, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 63
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;

    invoke-direct {v6, p0, v5}, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    aget-object v6, v2, v3

    invoke-static {v5, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    :cond_9c
    move v0, v3

    .line 62
    goto :goto_83

    .line 66
    :cond_9e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u2192  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->sliderName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    const-string v1, "\u0421\u0438\u043b\u0430 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430 (\u0432\u044a\u0440\u0445\u0443 \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0430)"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtFull;->GAIN_PRESETS:[I

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    .line 73
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v6

    move-object v0, p0

    move v4, v3

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtFull;->field(Ljava/lang/String;Ljava/lang/String;IZ[II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 76
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-direct {p0, v1, v3}, Lcom/isaigu/gymapp/bodytech/BtFull;->impulse(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v1, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-direct {p0, v1, v7}, Lcom/isaigu/gymapp/bodytech/BtFull;->impulse(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xe

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v11, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u043d\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtFull$Act;

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/bodytech/BtFull$Act;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v4, "\u0412\u044a\u0440\u043d\u0438 \u043d\u0430 \u0410\u0432\u0442\u043e"

    const/4 v5, 0x2

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 85
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtFull$Act;

    invoke-direct {v4, p0, v7}, Lcom/isaigu/gymapp/bodytech/BtFull$Act;-><init>(Lcom/isaigu/gymapp/bodytech/BtFull;I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v4, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u043e\u0432\u0438 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u2014 \u043f\u044a\u0440\u0432\u043e \u0441 \u043d\u0438\u0441\u043a\u0430 \u0441\u0438\u043b\u0430. \u0421\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u0435 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e 99 %. \u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0441\u0435 \u0432\u043a\u043b\u044e\u0447\u0432\u0430 \u043e\u0442 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 (\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441) \u2014 \u0442\u0443\u043a \u0441\u0430\u043c\u043e \u043a\u0430\u0437\u0432\u0430\u0448 \u043a\u0430\u043a\u044a\u0432 \u0435 \u043d\u0430 \u0442\u043e\u0437\u0438 \u043a\u0430\u043d\u0430\u043b."

    const/high16 v2, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    invoke-static {v1, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 46
    return-void
.end method
