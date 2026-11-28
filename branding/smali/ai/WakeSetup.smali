.class public final Lcom/isaigu/gymapp/ai/WakeSetup;
.super Ljava/lang/Object;
.source "WakeSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WakeSetup$Again;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Close;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Events;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Sink;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Wait;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Learn;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Meter;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Shown;
    }
.end annotation


# static fields
.field static final CUTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private static final MAIN:Landroid/os/Handler;

.field private static final METER:Ljava/lang/Runnable;

.field static final MINE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field static final OWN:[[Ljava/lang/String;

.field static final STEPS:I

.field static final WORDS:I = 0x8

.field private static asked:Z

.field private static bar:Landroid/view/View;

.field private static dialog:Landroid/app/Dialog;

.field private static dots:Landroid/widget/LinearLayout;

.field private static head:Landroid/widget/TextView;

.field private static host:Landroid/app/Activity;

.field private static meterRest:Landroid/view/View;

.field private static micNote:Landroid/widget/TextView;

.field private static step:I

.field private static sub:Landroid/widget/TextView;

.field static volatile training:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    aput-object v2, v1, v4

    const-string v2, "Training"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u0431\u0440\u0435, \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    aput-object v2, v1, v4

    const-string v2, "Okay, a rest"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u041a\u043e\u043b\u043a\u043e \u0432\u0440\u0435\u043c\u0435 \u043e\u0441\u0442\u0430\u0432\u0430"

    aput-object v2, v1, v4

    const-string v2, "How much time is left"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "\u0422\u0440\u0435\u043d\u0438\u0440\u0430\u0439 \u0431\u0430\u0432\u043d\u043e"

    aput-object v3, v2, v4

    const-string v3, "Train slowly"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->OWN:[[Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->OWN:[[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/isaigu/gymapp/ai/WakeSetup;->STEPS:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->CUTS:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MINE:Ljava/util/List;

    .line 132
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeSetup$Meter;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeSetup$Meter;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->METER:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100()Landroid/view/View;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200()Landroid/view/View;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->meterRest:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    return v0
.end method

.method static synthetic access$708()I
    .registers 2

    .prologue
    .line 21
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    return v0
.end method

.method static synthetic access$800()V
    .registers 0

    .prologue
    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->ask()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->METER:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static ask()V
    .registers 9

    .prologue
    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 206
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ge v0, v5, :cond_b6

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->record()V

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u0436\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c"

    const-string v3, "Say \u201c\u0422\u0440\u0435\u043d\u0435\u0440\u201d"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0430\u0443\u0437\u0430, \u043f\u043e\u0441\u043b\u0435 \u0434\u0443\u043c\u0430\u0442\u0430 \u0441\u0430\u043c\u0430 \u2014 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043e\u0442 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A pause, then the word alone \u2014 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_68
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 221
    :goto_6e
    sget v2, Lcom/isaigu/gymapp/ai/WakeSetup;->STEPS:I

    if-ge v0, v2, :cond_160

    .line 222
    new-instance v4, Landroid/view/View;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 223
    sget v2, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ge v0, v2, :cond_158

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_7f
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v5, v3

    .line 224
    sget v3, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ne v0, v3, :cond_15c

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_8c
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 223
    invoke-static {v2, v5, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v1, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 226
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 227
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 211
    :cond_b6
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    sget v2, Lcom/isaigu/gymapp/ai/WakeSetup;->STEPS:I

    if-ge v0, v2, :cond_153

    .line 212
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->recordContrast()V

    .line 213
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->OWN:[[Ljava/lang/String;

    sget v2, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v2, v2, -0x8

    aget-object v0, v0, v2

    .line 214
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u201e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u201c"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u0435\u0433\u0430 \u0442\u043e\u0432\u0430 \u2014 \u0437\u0430 \u0434\u0430 \u043d\u0435 \u0433\u043e \u0431\u044a\u0440\u043a\u0430 \u0441 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v3, v3, -0x8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043e\u0442 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeSetup;->OWN:[[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now this \u2014 so it never takes it for \u201c\u0422\u0440\u0435\u043d\u0435\u0440\u201d ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v4, v4, -0x8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->OWN:[[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 218
    :cond_153
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->learn()V

    goto/16 :goto_68

    .line 223
    :cond_158
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto/16 :goto_7f

    .line 224
    :cond_15c
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    goto/16 :goto_8c

    .line 229
    :cond_160
    return-void
.end method

.method static begin()V
    .registers 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeSetup;->training:Z

    if-eqz v0, :cond_5

    .line 203
    :goto_4
    return-void

    .line 198
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->clear()V

    .line 199
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->CUTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MINE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->ask()V

    goto :goto_4
.end method

.method static learn()V
    .registers 6

    .prologue
    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeSetup;->training:Z

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->saveExamples(Landroid/content/Context;)V

    .line 235
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const-string v1, "\u0423\u0447\u0430 \u0433\u043b\u0430\u0441\u0430 \u0442\u0438\u2026"

    const-string v2, "Learning your voice\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    const-string v1, "\u041e\u043a\u043e\u043b\u043e \u043c\u0438\u043d\u0443\u0442\u0430. \u041c\u043e\u0436\u0435 \u0434\u0430 \u0437\u0430\u0442\u0432\u043e\u0440\u0438\u0448 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u0441\u0430\u043c."

    const-string v2, "About a minute. You may close this \u2014 it goes on by itself."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->CUTS:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/isaigu/gymapp/ai/WakeSetup;->MINE:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/WakeSetup$Learn;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    const-string v2, "xems-kws-train"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 13

    .prologue
    const/16 v11, 0x11

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-nez p0, :cond_b

    .line 128
    :goto_a
    return-void

    .line 51
    :cond_b
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    .line 52
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 53
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_82

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeSetup;->asked:Z

    if-eqz v0, :cond_82

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 56
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    move v0, v1

    .line 57
    :goto_29
    const-string v3, "wake"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setup: no microphone permission, refused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz v0, :cond_84

    .line 59
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u201e\u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u201c \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u0442\u0435 \u043d\u0430 XEMS \u0438 \u0441\u0435 \u0432\u044a\u0440\u043d\u0438."

    const-string v2, "Allow \u201cMicrophone\u201d in XEMS\'s settings and come back."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    :try_start_52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_67} :catch_68

    goto :goto_a

    .line 65
    :catch_68
    move-exception v0

    .line 66
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_82
    move v0, v2

    .line 56
    goto :goto_29

    .line 70
    :cond_84
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeSetup;->asked:Z

    .line 71
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    .line 72
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WakeSetup;->waitFor(Landroid/app/Activity;I)V

    goto/16 :goto_a

    .line 75
    :cond_8e
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 78
    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83c\udf99  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041d\u0430\u0443\u0447\u0438 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u043d\u0430 \u0433\u043b\u0430\u0441\u0430 \u0442\u0438"

    const-string v6, "Teach the tablet your voice"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    const-string v4, "\u0413\u043e\u0432\u043e\u0440\u0438 \u043a\u0430\u043a\u0442\u043e \u0449\u0435 \u0433\u043e\u0432\u043e\u0440\u0438\u0448 \u0432 \u0437\u0430\u043b\u0430\u0442\u0430: \u0441 \u043d\u043e\u0440\u043c\u0430\u043b\u0435\u043d \u0433\u043b\u0430\u0441, \u043e\u0442 \u043c\u044f\u0441\u0442\u043e\u0442\u043e, \u043a\u044a\u0434\u0435\u0442\u043e \u0441\u0442\u043e\u0438\u0448."

    const-string v5, "Speak as you will in the studio: a normal voice, from where you stand."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    .line 83
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    .line 85
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const-string v4, ""

    const/high16 v5, 0x41f00000    # 30.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    .line 87
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const/16 v5, 0xe

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const-string v4, ""

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    .line 90
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 94
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;

    .line 96
    sget-object v5, Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    sget-object v5, Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/isaigu/gymapp/ai/WakeSetup;->meterRest:Landroid/view/View;

    .line 99
    sget-object v5, Lcom/isaigu/gymapp/ai/WakeSetup;->meterRest:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/16 v5, 0xe

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const-string v4, ""

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;

    .line 102
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 106
    const-string v4, "\u041e\u0442\u043d\u0430\u0447\u0430\u043b\u043e"

    const-string v5, "Start over"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 107
    new-instance v5, Lcom/isaigu/gymapp/ai/WakeSetup$Again;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WakeSetup$Again;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const-string v4, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v5, "Close"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 110
    new-instance v5, Lcom/isaigu/gymapp/ai/WakeSetup$Close;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WakeSetup$Close;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 112
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 117
    :try_start_21b
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x440c0000    # 560.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V
    :try_end_237
    .catch Ljava/lang/Throwable; {:try_start_21b .. :try_end_237} :catch_261

    .line 121
    :goto_237
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;

    .line 123
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeSetup$Events;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeSetup$Events;-><init>()V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->beginSetup(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/WakeSetup$Sink;)V

    .line 125
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->begin()V

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->METER:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->METER:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 119
    :catch_261
    move-exception v1

    goto :goto_237
.end method

.method static waitFor(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    .line 169
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method
