.class final Lcom/isaigu/gymapp/bodytech/BtTest;
.super Ljava/lang/Object;
.source "BtTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtTest$Step;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Preset;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Touch;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Hold;
    }
.end annotation


# static fields
.field static final HZ_PRESETS:[I

.field static final LEVEL_PRESETS:[I

.field static final US_PRESETS:[I


# instance fields
.field final a:Landroid/app/Activity;

.field free:Z

.field final handler:Landroid/os/Handler;

.field hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

.field level:I

.field final mac:Ljava/lang/String;

.field final redraw:Ljava/lang/Runnable;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field tHz:I

.field tUs:I

.field tWave:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->HZ_PRESETS:[I

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->US_PRESETS:[I

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    return-void

    .line 22
    nop

    :array_1c
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

    .line 23
    :array_34
    .array-data 4
        0x32
        0x64
        0xc8
        0x168
        0x1c2
        0x1ff
    .end array-data

    .line 33
    :array_44
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
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V
    .registers 7

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 34
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    .line 38
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 41
    iput-object p4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method private field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[III)Landroid/view/View;
    .registers 15

    .prologue
    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, p2, v1, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    .line 110
    const/4 v0, 0x0

    :goto_27
    array-length v1, p4

    if-ge v0, v1, :cond_54

    .line 111
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

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

    .line 112
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    aget v6, p4, v0

    invoke-direct {v5, p0, p6, v6}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 111
    :cond_52
    const/4 v1, 0x0

    goto :goto_37

    .line 115
    :cond_54
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-object v2
.end method


# virtual methods
.method panel()Landroid/view/View;
    .registers 12

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u0422\u0435\u0441\u0442 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0434\u0440\u044a\u0436 \u25b6 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b"

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u0423\u0441\u0435\u0449\u0430\u0448 \u043a\u0430\u043a \u0441\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u044f\u0442 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u0438 \u0444\u043e\u0440\u043c\u0430\u0442\u0430 \u0432\u044a\u0440\u0445\u0443 \u043c\u0443\u0441\u043a\u0443\u043b\u0430. \u0421\u0430\u043c\u043e \u0437\u0430 \u043f\u0440\u043e\u0431\u0430: \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430. \u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u043e\u0442 \u043d\u0430\u0439-\u043d\u0438\u0441\u043a\u043e\u0442\u043e \u043d\u0438\u0432\u043e."

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 51
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

    .line 52
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->free:Z

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(IIZ)I

    move-result v8

    .line 55
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    if-le v0, v8, :cond_4b

    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 56
    :cond_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 57
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 58
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

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtTest;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[III)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const-string v1, "\u0428\u0438\u0440\u0438\u043d\u0430"

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

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/bodytech/BtTest;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;[III)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    .line 61
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 60
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 65
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 70
    const/4 v0, -0x1

    move v1, v0

    :goto_e7
    const/4 v0, 0x3

    if-gt v1, v0, :cond_114

    .line 71
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v9, v0, v9

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    if-ne v0, v1, :cond_112

    const/4 v0, 0x1

    :goto_f7
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v6, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 72
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    const/4 v9, 0x2

    invoke-direct {v6, p0, v9, v1}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v6, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e7

    .line 71
    :cond_112
    const/4 v0, 0x0

    goto :goto_f7

    .line 75
    :cond_114
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0438\u0432\u043e (\u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " %)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
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

    .line 80
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 82
    const/4 v0, 0x0

    :goto_17d
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_188

    .line 83
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v1, v1, v0

    if-le v1, v8, :cond_1f9

    .line 88
    :cond_188
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xc

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->free:Z

    if-eqz v0, :cond_23c

    const-string v0, "\u0422\u0430\u0432\u0430\u043d \u043f\u043e \u0437\u0430\u0440\u044f\u0434: \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    :goto_1b3
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->free:Z

    if-nez v1, :cond_240

    const/4 v1, 0x1

    :goto_1b8
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v2, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->free:Z

    if-eqz v0, :cond_243

    const/4 v0, 0x0

    :goto_1c6
    invoke-direct {v2, p0, v3, v0}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 95
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 96
    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v1, "\u0422\u0430\u0432\u0430\u043d\u044a\u0442 \u043f\u043e \u0437\u0430\u0440\u044f\u0434 \u043f\u0430\u0437\u0438 \u0432\u0438\u0441\u043e\u043a\u0438\u0442\u0435 Hz \u0438 \u0448\u0438\u0440\u043e\u043a\u0438\u0442\u0435 \u0438\u043c\u043f\u0443\u043b\u0441\u0438: \u043f\u0440\u0438 \u0442\u044f\u0445 \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 \u043f\u043e-\u043d\u0438\u0441\u043a\u0430, \u0430 \u043f\u0440\u0438 85 Hz \u00d7 360 \u00b5s \u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0435 \u0434\u043e 99 %. \u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u0441\u0430\u043c\u043e \u0430\u043a\u043e \u0437\u043d\u0430\u0435\u0448 \u043a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438\u0448."

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    return-object v7

    .line 84
    :cond_1f9
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v1, v1, v0

    iget v10, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    if-ne v1, v10, :cond_23a

    const/4 v1, 0x1

    :goto_21b
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v6, v9, v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 85
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    const/4 v9, 0x3

    sget-object v10, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v10, v10, v0

    invoke-direct {v6, p0, v9, v10}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v6, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17d

    .line 84
    :cond_23a
    const/4 v1, 0x0

    goto :goto_21b

    .line 92
    :cond_23c
    const-string v0, "\u0422\u0430\u0432\u0430\u043d \u043f\u043e \u0437\u0430\u0440\u044f\u0434: \u0432\u043a\u043b\u044e\u0447\u0435\u043d"

    goto/16 :goto_1b3

    :cond_240
    const/4 v1, 0x0

    goto/16 :goto_1b8

    .line 93
    :cond_243
    const/4 v0, 0x1

    goto :goto_1c6
.end method

.method say(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    return-void
.end method

.method stop()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    if-eqz v0, :cond_13

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    .line 135
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    const/4 v5, -0x1

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(Ljava/lang/String;IIIIIZZ)Ljava/lang/String;

    .line 136
    return-void
.end method

.method touch(I)Landroid/view/View$OnTouchListener;
    .registers 3

    .prologue
    .line 121
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    return-object v0
.end method
