.class final Lcom/isaigu/gymapp/bodytech/BtTest;
.super Ljava/lang/Object;
.source "BtTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Preset;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Touch;,
        Lcom/isaigu/gymapp/bodytech/BtTest$Hold;
    }
.end annotation


# static fields
.field static final LEVEL_PRESETS:[I


# instance fields
.field final a:Landroid/app/Activity;

.field final handler:Landroid/os/Handler;

.field hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

.field level:I

.field final mac:Ljava/lang/String;

.field final redraw:Ljava/lang/Runnable;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final tHz:I

.field final tUs:I

.field final tWave:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x3
        0x5
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V
    .registers 7

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 29
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    .line 33
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->mac:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 36
    iput-object p4, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    .line 37
    return-void
.end method


# virtual methods
.method panel()Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/4 v3, 0x1

    const/4 v10, -0x2

    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 43
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 45
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v6, "\u0414\u0440\u044a\u0436 \u25b6 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b \u2014 \u0443\u0441\u0435\u0449\u0430\u0448 \u0433\u043e"

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v6, v7, v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v6, "\u041e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 85 Hz. \u0422\u0430\u043a\u0430 \u043d\u0430\u043c\u0438\u0440\u0430\u0448 \u043a\u043e\u0439 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434 \u0435 \u043a\u043e\u0439. \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v5, v6, v11, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 50
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const-string v6, "\u041d\u0438\u0432\u043e"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    new-instance v9, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;)V

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 55
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    new-array v5, v3, [Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v0, v1

    .line 59
    :goto_97
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_dc

    .line 60
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v8, v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " %"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v2, v2, v0

    iget v9, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    if-ne v2, v9, :cond_da

    move v2, v3

    :goto_be
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v7, v8, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 61
    new-instance v7, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;

    sget-object v8, Lcom/isaigu/gymapp/bodytech/BtTest;->LEVEL_PRESETS:[I

    aget v8, v8, v0

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    aget-object v8, v5, v1

    invoke-static {v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_da
    move v2, v1

    .line 60
    goto :goto_be

    .line 64
    :cond_dc
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-object v4
.end method

.method say(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    return-void
.end method

.method stop()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    if-eqz v0, :cond_13

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest$Hold;->live:Z

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest;->hold:Lcom/isaigu/gymapp/bodytech/BtTest$Hold;

    .line 84
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

    .line 85
    return-void
.end method

.method touch(I)Landroid/view/View$OnTouchListener;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTest$Touch;-><init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V

    return-object v0
.end method
