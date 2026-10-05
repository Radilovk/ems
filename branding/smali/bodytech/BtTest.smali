.class final Lcom/isaigu/gymapp/bodytech/BtTest;
.super Ljava/lang/Object;
.source "BtTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtTest$Preset;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Step;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Touch;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Hold;
    }
.end annotation


# static fields
.field static final GAIN_SAFE_LEVEL:I = 0xa

.field static final HZ_PRESETS:[I

.field static final LEVEL_PRESETS:[I

.field static final PROTO:[Ljava/lang/String;

.field static final PROTO_VAL:[[I

.field static final US_PRESETS:[I


# instance fields
.field final a:Landroid/app/Activity;

.field gain:I

.field final handler:Landroid/os/Handler;

.field hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

.field level:I

.field final mac:Ljava/lang/String;

.field offMs:I

.field onMs:I

.field proto:I

.field final redraw:Ljava/lang/Runnable;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field tHz:I

.field tUs:I

.field tWave:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 24
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->HZ_PRESETS:[I

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->US_PRESETS:[I

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_78

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    .line 28
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u041e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v3

    const-string v1, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 1 kHz"

    aput-object v1, v0, v4

    const-string v1, "\u0420\u0443\u0441\u043a\u0438 2,5 kHz"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->PROTO:[Ljava/lang/String;

    .line 29
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a6

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->PROTO_VAL:[[I

    return-void

    .line 24
    :array_4a
    .array-data 4
        0x1
        0xa
        0x1e
        0x32
        0x55
        0x78
        0x12c
        0x3e8
        0x9c4
        0x1388
        0x2710
    .end array-data

    .line 25
    :array_64
    .array-data 4
        0x32
        0x64
        0xc8
        0x168
        0x1f4
        0x2bc
        0x3e8
        0x640
    .end array-data

    .line 26
    :array_78
    .array-data 4
        0x1
        0x3
        0x5
        0xa
        0x14
        0x1e
        0x32
        0x46
        0x63
    .end array-data

    .line 29
    :array_8e
    .array-data 4
        0x55
        0x168
        0x0
        0x0
    .end array-data

    :array_9a
    .array-data 4
        0x3e8
        0x1f4
        0x4
        0x10
    .end array-data

    :array_a6
    .array-data 4
        0x9c4
        0xc8
        0xa
        0xa
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V
    .registers 7

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 39
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->gain:I

    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 49
    iput-object p4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[IIII)Landroid/view/View;
    .registers 16

    .prologue
    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, p2, v1, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    .line 134
    const/4 v0, 0x0

    :goto_27
    array-length v1, p4

    if-ge v0, v1, :cond_2e

    .line 135
    aget v1, p4, v0

    if-le v1, p7, :cond_3a

    .line 140
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-object v2

    .line 136
    :cond_3a
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    aget v1, p4, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget v1, p4, v0

    if-ne v1, p5, :cond_62

    const/4 v1, 0x1

    :goto_47
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v6, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 137
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    aget v6, p4, v0

    invoke-direct {v5, p0, p6, v6}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 136
    :cond_62
    const/4 v1, 0x0

    goto :goto_47
.end method

.method private small(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;
    .registers 8

    .prologue
    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, p2, v2, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    return-object v0
.end method


# virtual methods
.method panel()Landroid/view/View;
    .registers 12

    .prologue
    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u0422\u0435\u0441\u0442 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0434\u0440\u044a\u0436 \u25b6 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b"

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b, \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430, \u0444\u043e\u0440\u043c\u0430 \u0438 \u043f\u0430\u043a\u0435\u0442\u0438 \u0432\u044a\u0440\u0445\u0443 \u043c\u0443\u0441\u043a\u0443\u043b\u0430. \u0421\u0430\u043c\u043e \u0437\u0430 \u043f\u0440\u043e\u0431\u0430: \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430. \u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u043e\u0442 \u043d\u0438\u0441\u043a\u043e \u043d\u0438\u0432\u043e."

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v9

    .line 63
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    if-le v0, v9, :cond_47

    iput v9, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    .line 66
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    .line 69
    const/4 v0, 0x0

    :goto_5c
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->PROTO:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_88

    .line 70
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->PROTO:[Ljava/lang/String;

    aget-object v5, v1, v0

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    if-ne v1, v0, :cond_86

    const/4 v1, 0x1

    :goto_6c
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v4, v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 71
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, v0}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 70
    :cond_86
    const/4 v1, 0x0

    goto :goto_6c

    .line 74
    :cond_88
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 77
    const/16 v0, 0x30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtTest$Step;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtTest;->HZ_PRESETS:[I

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/bodytech/BtTest;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[IIII)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0428\u0438\u0440\u0438\u043d\u0430 (\u0434\u043e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s \u043f\u0440\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b5s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtTest$Step;

    const/4 v0, 0x1

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtTest;->US_PRESETS:[I

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    const/4 v6, 0x1

    move-object v0, p0

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/bodytech/BtTest;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[IIII)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    .line 81
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 80
    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 85
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 90
    const/4 v0, -0x1

    move v1, v0

    :goto_15d
    const/4 v0, 0x3

    if-gt v1, v0, :cond_18a

    .line 91
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    aget-object v7, v0, v7

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    if-ne v0, v1, :cond_188

    const/4 v0, 0x1

    :goto_16d
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v6, v7, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 92
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7, v1}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v6, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15d

    .line 91
    :cond_188
    const/4 v0, 0x0

    goto :goto_16d

    .line 95
    :cond_18a
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u0438\u0432\u043e (\u0434\u043e 99 %)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " %"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;)V

    invoke-static {v0, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 102
    const/4 v0, 0x0

    :goto_1dc
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_223

    .line 103
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v1, v1, v0

    iget v9, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    if-ne v1, v9, :cond_221

    const/4 v1, 0x1

    :goto_203
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v6, v7, v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 104
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    const/4 v7, 0x3

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v9, v9, v0

    invoke-direct {v6, p0, v7, v9}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1dc

    .line 103
    :cond_221
    const/4 v1, 0x0

    goto :goto_203

    .line 107
    :cond_223
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xc

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 112
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 113
    const-string v2, "\u041f\u0430\u043a\u0435\u0442 \u0432\u043a\u043b."

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    if-nez v0, :cond_336

    const-string v0, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    :goto_259
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtTest$Step;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    invoke-direct {p0, v2, v0, v3}, Lcom/isaigu/gymapp/bodytech/BtTest;->small(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const-string v2, "\u041f\u0430\u0443\u0437\u0430 \u043c\u0435\u0436\u0434\u0443 \u043f\u0430\u043a\u0435\u0442\u0438\u0442\u0435"

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    if-nez v0, :cond_34d

    const-string v0, "\u2014"

    :goto_277
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtTest$Step;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    invoke-direct {p0, v2, v0, v3}, Lcom/isaigu/gymapp/bodytech/BtTest;->small(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    .line 116
    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const-string v0, "\u0423\u0441\u0438\u043b\u0432\u0430\u043d\u0435 (\u043e\u043f\u0438\u0442)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00d7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->gain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtTest$Step;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    invoke-direct {p0, v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTest;->small(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    if-lez v0, :cond_367

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e8

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    add-int/2addr v0, v3

    if-lez v0, :cond_364

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    add-int/2addr v0, v3

    :goto_2e4
    div-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0430\u043a\u0435\u0442\u0430/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_2f4
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0430\u043a\u0435\u0442\u0438\u0442\u0435 \u0433\u0438 \u043f\u0440\u0430\u0432\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0441\u0430\u043c (T2 / T4)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". \u0423\u0441\u0438\u043b\u0432\u0430\u043d\u0435 = \u0440\u0435\u0433\u0438\u0441\u0442\u044a\u0440 STEP_NOR (\u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f\u0442 \u043f\u0440\u0430\u0449\u0430 \u00d71, \u0435\u0444\u0435\u043a\u0442\u044a\u0442 \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d): \u043f\u0440\u0438 \u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u043d\u0438\u0432\u043e\u0442\u043e \u0441\u043b\u0438\u0437\u0430 \u0434\u043e "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    return-object v8

    .line 113
    :cond_336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_259

    .line 115
    :cond_34d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_277

    .line 119
    :cond_364
    const/4 v0, 0x1

    goto/16 :goto_2e4

    :cond_367
    const-string v0, ""

    goto :goto_2f4
.end method

.method say(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    return-void
.end method

.method stop()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    if-eqz v0, :cond_13

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    .line 167
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v8, 0x1

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(Ljava/lang/String;IIIIIIIIZ)Ljava/lang/String;

    .line 168
    return-void
.end method

.method touch(I)Landroid/view/View$OnTouchListener;
    .registers 3

    .prologue
    .line 153
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    return-object v0
.end method
