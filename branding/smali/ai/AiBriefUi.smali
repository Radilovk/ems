.class public final Lcom/isaigu/gymapp/ai/AiBriefUi;
.super Ljava/lang/Object;
.source "AiBriefUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;,
        Lcom/isaigu/gymapp/ai/AiBriefUi$Done;,
        Lcom/isaigu/gymapp/ai/AiBriefUi$Go;,
        Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;,
        Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;,
        Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;,
        Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static askedText:Ljava/lang/String;

.field private static busy:Z

.field private static options:[Ljava/lang/String;

.field private static question:Ljava/lang/String;

.field private static result:Ljava/lang/String;

.field private static seq:I

.field private static text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->MAIN:Landroid/os/Handler;

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->result:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiBriefUi;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiBriefUi;->live(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiBriefUi;->submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->askedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static card(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 61
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 62
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    const-string v6, "First time"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u044a\u0442\u0438"

    const-string v6, "A few times"

    .line 64
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v7, "Regularly"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 65
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->guestExperience(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v5

    new-instance v6, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;

    invoke-direct {v6, v1}, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;-><init>(I)V

    .line 63
    invoke-static {p0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v1, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u043f\u043e\u0434 40"

    const-string v6, "under 40"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "40\u201359"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "60+"

    aput-object v6, v4, v5

    .line 68
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->guestAgeBand(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    new-instance v5, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;

    invoke-direct {v5, v8}, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;-><init>(I)V

    .line 67
    invoke-static {p0, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe

    .line 68
    invoke-static {v4, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 67
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_89
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 72
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    const-string v0, "\u2726 \u041e\u043f\u0438\u0448\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438\u043b\u0438 \u043a\u0430\u043a\u0432\u043e \u0438\u0441\u043a\u0430 \u2014 \u201e52 \u0433., \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u044f \u0431\u043e\u043b\u0438, \u0438\u0441\u043a\u0430 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u201c"

    const-string v4, "\u2726 Describe the client or the wish \u2014 \u201c52, low back pain, wants glutes\u201d"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiBriefUi;->field(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    .line 75
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBriefUi$Done;

    invoke-direct {v0, v4, v1}, Lcom/isaigu/gymapp/ai/AiBriefUi$Done;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    if-eqz v0, :cond_155

    const-string v0, "\u2026"

    :goto_bb
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 79
    new-instance v5, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    invoke-direct {v5, v4, v1}, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_172

    const/16 v0, 0xa

    :goto_e5
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    if-eqz v0, :cond_175

    .line 85
    const-string v0, "\u2726 \u043c\u0438\u0441\u043b\u044f\u2026"

    const-string v3, "\u2726 thinking\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_107
    :goto_107
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    if-nez v0, :cond_19a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;

    if-eqz v0, :cond_19a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    if-eqz v0, :cond_19a

    .line 92
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v0, v1

    .line 94
    :goto_12b
    sget-object v4, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_193

    .line 95
    sget-object v4, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    aget-object v4, v4, v0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v4, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v4

    .line 96
    new-instance v5, Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 100
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    .line 78
    :cond_155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438"

    const-string v6, "Tune"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bb

    :cond_172
    move v0, v1

    .line 83
    goto/16 :goto_e5

    .line 86
    :cond_175
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_107

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->result:Ljava/lang/String;

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_107

    .line 102
    :cond_193
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_19a
    return-object v2
.end method

.method static doLive(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    const-string v3, "softer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->reduceAll()V

    .line 209
    const-string v0, "\u221210 % "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 210
    :cond_28
    const-string v3, "stronger"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 211
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->raiseAll()V

    .line 212
    const-string v0, "+5 % "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 213
    :cond_39
    const-string v3, "pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_b

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 217
    const-string v0, "\u275a\u275a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 219
    :cond_58
    const-string v3, "resume"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    const-string v0, "\u25b6 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 223
    :cond_6c
    const-string v3, "skip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 224
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->nextFromPanel()V

    .line 226
    const-string v0, "\u23ed "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 228
    :cond_83
    const-string v3, "to_recovery"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 230
    const-string v0, "\u2192 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 "

    const-string v4, "recovery "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 234
    :cond_a1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderZones()[I

    move-result-object v2

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOff:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ab
    :goto_ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->channel(Ljava/lang/String;)I

    move-result v0

    .line 237
    if-ltz v0, :cond_ab

    if-eqz v2, :cond_ab

    array-length v4, v2

    if-ge v0, v4, :cond_ab

    aget v4, v2, v0

    if-lez v4, :cond_ab

    .line 238
    aget v4, v2, v0

    neg-int v4, v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustChannel(II)V

    .line 239
    sget-object v4, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES_BG:[Ljava/lang/String;

    aget-object v0, v4, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u2014 \u0438\u0437\u043a\u043b. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    .line 242
    :cond_da
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e0
    :goto_e0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->channel(Ljava/lang/String;)I

    move-result v0

    .line 244
    if-ltz v0, :cond_e0

    if-eqz v2, :cond_e0

    array-length v4, v2

    if-ge v0, v4, :cond_e0

    aget v4, v2, v0

    if-nez v4, :cond_e0

    .line 245
    const/16 v4, 0x64

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustChannel(II)V

    .line 246
    sget-object v4, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES_BG:[Ljava/lang/String;

    aget-object v0, v4, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u2014 \u0432\u043a\u043b. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 249
    :cond_10e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_174

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_12f
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 253
    const-string v0, "brief"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOff:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOn:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 250
    :cond_174
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    if-eqz v0, :cond_196

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_196

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12f

    .line 251
    :cond_196
    const-string v0, "\u2726 \u041d\u0435 \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u043a\u043e\u043c\u0430\u043d\u0434\u0430\u0442\u0430 \u2014 \u043a\u0430\u0436\u0438 \u044f \u0441 \u0434\u0440\u0443\u0433\u0438 \u0434\u0443\u043c\u0438."

    const-string v1, "\u2726 Did not get it \u2014 say it another way."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12f
.end method

.method private static field(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 9

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v5, 0x41800000    # 16.0f

    .line 108
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 111
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 112
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 113
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 114
    const v1, 0x24001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 118
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 120
    return-object v0
.end method

.method private static hideKeyboard(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 424
    if-eqz v0, :cond_16

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 429
    :cond_16
    :goto_16
    return-void

    .line 427
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method private static live(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 190
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 201
    :cond_e
    :goto_e
    return-void

    .line 193
    :cond_f
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->local(Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    move-result-object v0

    .line 194
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOff:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 195
    :cond_23
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AiBriefUi;->doLive(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;)V

    goto :goto_e

    .line 198
    :cond_27
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBrief;->menu()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v6

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AiBrief;->requestFields(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    const-string v1, "xems-brief-live"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method static onPlanAnswer(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 142
    sget v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    if-eq p2, v0, :cond_6

    .line 161
    :goto_5
    return-void

    .line 145
    :cond_6
    sput-boolean v5, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 147
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->apply(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v2

    .line 148
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 149
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->aiPicked(Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->fromModel:Z

    if-eqz v0, :cond_8a

    const-string v0, "\u2726 "

    .line 151
    :goto_1e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a7

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    .line 152
    :goto_2c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_aa

    const-string v0, " \u00b7 "

    :goto_50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b0

    move-object v0, v2

    :goto_63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->result:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->question:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->options:Ljava/util/List;

    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    .line 158
    sput-object p1, Lcom/isaigu/gymapp/ai/AiBriefUi;->askedText:Ljava/lang/String;

    .line 160
    :cond_85
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->rerender()V

    goto/16 :goto_5

    .line 150
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\u0431\u0435\u0437 \u0432\u0440\u044a\u0437\u043a\u0430) "

    const-string v3, "(offline) "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    .line 151
    :cond_a7
    const-string v1, ""

    goto :goto_2c

    .line 153
    :cond_aa
    const-string v0, ""

    goto :goto_50

    :cond_ad
    const-string v0, ""

    goto :goto_58

    .line 154
    :cond_b0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b9

    const-string v0, ""

    goto :goto_63

    :cond_b9
    const-string v0, "\u043d\u0438\u0449\u043e \u043d\u043e\u0432\u043e \u2014 \u043f\u043b\u0430\u043d\u044a\u0442 \u043e\u0441\u0442\u0430\u0432\u0430"

    const-string v1, "nothing new \u2014 the plan stays"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63
.end method

.method static openLive(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    .line 167
    if-nez p0, :cond_6

    .line 187
    :goto_5
    return-void

    .line 170
    :cond_6
    const-string v0, "\u201e\u043f\u043e-\u043b\u0435\u043a\u043e\u201c, \u201e\u043f\u0430\u0443\u0437\u0430\u201c, \u201e\u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0433\u043e \u0431\u043e\u043b\u0438\u201c, \u201e\u0431\u0435\u0437 \u0440\u044a\u0446\u0435\u201c\u2026"

    const-string v1, "\u201csofter\u201d, \u201cpause\u201d, \u201cback hurts\u201d, \u201cno arms\u201d\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiBriefUi;->field(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v1

    .line 172
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 173
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 174
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 176
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBriefUi$Done;

    invoke-direct {v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiBriefUi$Done;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    new-instance v3, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    invoke-direct {v3, v1, v6}, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;-><init>(Landroid/widget/EditText;Z)V

    .line 178
    iput-object v2, v3, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->dialog:Landroid/app/AlertDialog;

    .line 179
    const/4 v4, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u041d\u0430\u043f\u0440\u0430\u0432\u0438"

    const-string v6, "Do it"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v4, v5, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 180
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;-><init>(Lcom/isaigu/gymapp/ai/AiBriefUi$Go;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 181
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 182
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 184
    :try_start_81
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_89} :catch_8b

    goto/16 :goto_5

    .line 185
    :catch_8b
    move-exception v0

    goto/16 :goto_5
.end method

.method public static reset()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->result:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    .line 51
    sput-object v1, Lcom/isaigu/gymapp/ai/AiBriefUi;->askedText:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    .line 53
    sget v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    .line 54
    return-void
.end method

.method private static submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 126
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 138
    :cond_e
    :goto_e
    return-void

    .line 129
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    .line 130
    sput-object v1, Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;

    .line 131
    sput-object v1, Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z

    .line 133
    sget v0, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    add-int/lit8 v7, v0, 0x1

    sput v7, Lcom/isaigu/gymapp/ai/AiBriefUi;->seq:I

    .line 134
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->rerender()V

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBrief;->menu()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v6

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AiBrief;->requestFields(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    const-string v1, "xems-brief"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method
