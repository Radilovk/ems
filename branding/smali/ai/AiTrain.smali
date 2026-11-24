.class public final Lcom/isaigu/gymapp/ai/AiTrain;
.super Ljava/lang/Object;
.source "AiTrain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiTrain$Pick;,
        Lcom/isaigu/gymapp/ai/AiTrain$Step;,
        Lcom/isaigu/gymapp/ai/AiTrain$Health;,
        Lcom/isaigu/gymapp/ai/AiTrain$Act;,
        Lcom/isaigu/gymapp/ai/AiTrain$Quick;,
        Lcom/isaigu/gymapp/ai/AiTrain$SendKey;,
        Lcom/isaigu/gymapp/ai/AiTrain$Mic;,
        Lcom/isaigu/gymapp/ai/AiTrain$SendClick;,
        Lcom/isaigu/gymapp/ai/AiTrain$Ask;,
        Lcom/isaigu/gymapp/ai/AiTrain$Answered;,
        Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;,
        Lcom/isaigu/gymapp/ai/AiTrain$Commands;
    }
.end annotation


# static fields
.field static final A_BACK:I = 0x2

.field static final A_CLOSE:I = 0x1

.field static final A_LIVE_CLOSE:I = 0x5

.field static final A_MAKE:I = 0x6

.field static final A_SAVE:I = 0x4

.field static final A_START:I = 0x3

.field static final A_TEACH:I = 0x7

.field static final A_TUNE:I = 0x0

.field static final INTAKE:I = 0x0

.field private static final MAIN:Landroid/os/Handler;

.field static final P_EXP:I = 0x1

.field static final P_FREE:I = 0x5

.field static final P_GOAL:I = 0x2

.field static final P_HEALTH:I = 0x4

.field static final P_KIND:I = 0x3

.field static final P_SEX:I = 0x0

.field static final SUMMARY:I = 0x1

.field static final S_AGE:I = 0x0

.field static final S_HEIGHT:I = 0x1

.field static final S_WEIGHT:I = 0x2

.field private static busy:Z

.field private static draft:Ljava/lang/String;

.field private static free:Z

.field private static freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

.field private static healthOpen:Z

.field private static intakeField:Landroid/widget/EditText;

.field private static lastChanges:Ljava/lang/String;

.field static lastSpoken:Ljava/lang/String;

.field private static liveChat:Z

.field private static pending:[Ljava/lang/String;

.field private static seq:I

.field private static view:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    return p0
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    return-object p0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    return p0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    return p0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    return p0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    return p0
.end method

.method static synthetic access$800(Landroid/widget/EditText;Z)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->fire(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    return-object p0
.end method

.method private static action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 743
    if-nez p0, :cond_5

    .line 744
    const-string v0, ""

    .line 774
    :goto_4
    return-object v0

    .line 746
    :cond_5
    const-string v0, "softer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 747
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->reduceAll()V

    .line 748
    const-string v0, "\u0441\u0438\u043b\u0430 \u221210 % \u00b7 "

    const-string v1, "strength \u221210 % \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 750
    :cond_19
    const-string v0, "stronger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 751
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->raiseAll()V

    .line 752
    const-string v0, "\u0441\u0438\u043b\u0430 +5 % \u00b7 "

    const-string v1, "strength +5 % \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 754
    :cond_2d
    const-string v0, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_49

    .line 755
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 756
    const-string v0, "\u043f\u0430\u0443\u0437\u0430 \u00b7 "

    const-string v1, "pause \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 758
    :cond_49
    const-string v0, "resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "continue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 759
    :cond_59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "\u25b6 \u00b7 "

    goto :goto_4

    :cond_62
    const-string v0, ""

    goto :goto_4

    .line 761
    :cond_65
    const-string v0, "skip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->nextFromPanel()V

    .line 763
    const-string v0, "\u23ed \u00b7 "

    goto :goto_4

    .line 765
    :cond_79
    const-string v0, "to_recovery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "to_cooldown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 766
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 767
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 "

    const-string v1, "to the recovery \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 769
    :cond_96
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "double_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 770
    :cond_a6
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setDoublePulse(Z)V

    .line 771
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 772
    :cond_c1
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "no double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 774
    :cond_cb
    const-string v0, ""

    goto/16 :goto_4
.end method

.method private static adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x42700000    # 60.0f

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 369
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 370
    const-string v0, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438"

    const-string v3, "Advice"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->advice()[Ljava/lang/String;

    move-result-object v3

    .line 372
    if-nez v3, :cond_100

    .line 373
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_f6

    const-string v0, "\u2726 AI \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u044f \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435\u2026"

    const-string v3, "\u2726 The AI is preparing the advice\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_2b
    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 373
    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 375
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 373
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    :cond_3a
    const v0, 0x3f8ccccd    # 1.1f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 387
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 388
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 389
    const-string v3, "\u2039"

    invoke-static {p0, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 390
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v4, v9}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u25b6  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0421\u0442\u0430\u0440\u0442"

    const-string v5, "Start"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 393
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v4, v10}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 395
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 396
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_15f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_129

    const-string v1, ", "

    :goto_e6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d2

    .line 374
    :cond_f6
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u2014 \u043d\u0430\u043f\u0438\u0448\u0438 \u043d\u0435\u0449\u043e \u043d\u0430 AI \u0438\u043b\u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u2726."

    const-string v3, "None yet \u2014 write to the AI or tap \u2726."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    :cond_100
    move v0, v1

    .line 377
    :goto_101
    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3a

    array-length v4, v3

    if-ge v0, v4, :cond_3a

    .line 378
    aget-object v4, v3, v0

    if-eqz v4, :cond_126

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_126

    .line 379
    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, v3, v0

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    .line 401
    :cond_129
    const-string v1, ""

    goto :goto_e6

    .line 403
    :cond_12c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0438 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430: "

    const-string v4, "Save to the profile: "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 405
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v1, v7}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    :cond_15f
    const v0, 0x3f99999a    # 1.2f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    return-void
.end method

.method static applyCommands(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v6, -0x1

    .line 613
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1dd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 616
    const-string v1, "up"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "on"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_31
    const/4 v1, 0x1

    move v5, v1

    .line 617
    :goto_33
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->isMuscle()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 619
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->channels()[I

    move-result-object v5

    array-length v9, v5

    const/4 v1, 0x0

    move v3, v1

    move v2, v6

    :goto_41
    if-ge v3, v9, :cond_57

    aget v1, v5, v3

    .line 620
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    iget-boolean v11, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    invoke-static {v1, v10, v11}, Lcom/isaigu/gymapp/ai/AutoSession;->channelStep(ILjava/lang/String;Z)I

    move-result v1

    .line 621
    if-gez v2, :cond_55

    .line 619
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_41

    :cond_53
    move v5, v6

    .line 616
    goto :goto_33

    :cond_55
    move v1, v2

    .line 621
    goto :goto_4f

    .line 623
    :cond_57
    if-ltz v2, :cond_10

    .line 624
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "off"

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "\u0438\u0437\u043a\u043b."

    const-string v2, "off"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 624
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7b

    .line 627
    :cond_99
    const-string v1, "strength"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 628
    iget-boolean v1, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->strengthStep(IZ)I

    move-result v1

    .line 629
    if-ltz v1, :cond_10

    .line 630
    const-string v2, "\u0441\u0438\u043b\u0430 "

    const-string v3, "strength "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 632
    :cond_c2
    if-eqz v0, :cond_101

    const-string v1, "impulse"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 633
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 634
    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v2, "impulse "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 635
    :cond_101
    if-eqz v0, :cond_140

    const-string v1, "pause"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 636
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 637
    const-string v1, "\u043f\u0430\u0443\u0437\u0430 "

    const-string v2, "pause "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 638
    :cond_140
    if-eqz v0, :cond_182

    const-string v1, "frequency"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 639
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v9

    iget-boolean v3, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v3, :cond_17f

    const/4 v3, 0x5

    :goto_15d
    mul-int/2addr v3, v5

    add-int/2addr v3, v9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 640
    const-string v1, "Hz "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 639
    :cond_17f
    const/16 v3, 0xa

    goto :goto_15d

    .line 641
    :cond_182
    if-eqz v0, :cond_10

    const-string v1, "rest"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 642
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v10

    int-to-double v12, v5

    iget-boolean v4, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v4, :cond_1d7

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    :goto_1a8
    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 643
    const-string v1, "\u043f\u043e\u0447\u0438\u0432\u043a\u0438 "

    const-string v2, "rests "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 642
    :cond_1d7
    const-wide v4, 0x3fc3333333333333L    # 0.15

    goto :goto_1a8

    .line 647
    :cond_1dd
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_201

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 648
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const-string v1, "to_recovery"

    :cond_1f9
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e3

    .line 650
    :cond_201
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 189
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 191
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 192
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 193
    sget v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-ne v3, v5, :cond_38

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 194
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 198
    :goto_22
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 200
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void

    .line 196
    :cond_38
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->intake(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_22
.end method

.method static buildLive(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 413
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 414
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 415
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 416
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041a\u0430\u0436\u0438 \u043d\u0430 AI"

    const-string v6, "Tell the AI"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 419
    const-string v0, "\ud83c\udf99 \u0421\u043b\u0443\u0448\u0430\u043c: \u043a\u0430\u0436\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u0443\u0432\u0435\u043b\u0438\u0447\u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430\u201c, \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u043f\u0430\u0443\u0437\u0430\u201c, \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u0441\u0442\u043e\u043f\u201c\u2026"

    const-string v1, "\ud83c\udf99 Listening: say \u201cTrainer, raise the legs\u201d, \u201cTrainer, pause\u201d, \u201cTrainer, stop\u201d\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_45
    const/high16 v6, 0x41500000    # 13.0f

    .line 422
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->isOn()Z

    move-result v1

    if-eqz v1, :cond_db

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 418
    :goto_4f
    invoke-static {p0, v0, v6, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 422
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 418
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 424
    const/16 v0, 0x8

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    const-string v7, "softer"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v7, "stronger"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    const/4 v0, 0x2

    const-string v7, "\u043f\u0430\u0443\u0437\u0430"

    const-string v8, "pause"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v7, "go on"

    .line 425
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v13

    const-string v0, "\u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    const-string v7, "longer rests"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    const/4 v0, 0x5

    const-string v7, "\u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v8, "shorter impulses"

    .line 426
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x6

    const-string v7, "\u043f\u0440\u0435\u0441\u043a\u043e\u0447\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v8, "skip the exercise"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x7

    const-string v7, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, "to the recovery"

    .line 427
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 428
    array-length v7, v6

    move v0, v2

    :goto_b9
    if-ge v0, v7, :cond_df

    aget-object v8, v6, v0

    .line 429
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v8, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v9

    .line 430
    new-instance v10, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    invoke-direct {v10, v8, v11}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {v1, v9}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 421
    :cond_d1
    const-string v0, "\ud83c\udf99 \u0413\u043b\u0430\u0441\u044a\u0442 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d \u2014 \ud83c\udf99 \u0432 \u0442\u0430\u0431\u043b\u043e\u0442\u043e \u0433\u043e \u043f\u0443\u0441\u043a\u0430."

    const-string v1, "\ud83c\udf99 Voice is off \u2014 \ud83c\udf99 on the board turns it on."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_45

    .line 422
    :cond_db
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_4f

    .line 433
    :cond_df
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2039  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041a\u044a\u043c \u0442\u0430\u0431\u043b\u043e\u0442\u043e"

    const-string v6, "To the board"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 439
    invoke-static {p0, v0, v11}, Lcom/isaigu/gymapp/ai/AiTrain;->chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 440
    const v1, 0x3fa66666    # 1.3f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 444
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    return-void
.end method

.method private static chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V
    .registers 12

    .prologue
    .line 456
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 457
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v5

    .line 458
    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p2, :cond_88

    const/4 v0, 0x6

    :goto_10
    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_17
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a0

    .line 459
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 460
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const/high16 v3, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 461
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 462
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v2, :cond_8a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_4f
    const/high16 v3, 0x41600000    # 14.0f

    .line 463
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v7, v3

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v3, :cond_93

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    :goto_5c
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 462
    invoke-static {v2, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 467
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_9c

    const v0, 0x800003

    :goto_7f
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 468
    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_88
    const/4 v0, 0x5

    goto :goto_10

    .line 462
    :cond_8a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto :goto_4f

    .line 463
    :cond_93
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v8, 0x80

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto :goto_5c

    .line 467
    :cond_9c
    const v0, 0x800005

    goto :goto_7f

    .line 470
    :cond_a0
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_bd

    .line 471
    const-string v0, "\u2726 \u043f\u0438\u0448\u0435\u2026"

    const-string v1, "\u2726 typing\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    :cond_bd
    if-eqz p2, :cond_ed

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ed

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    :cond_ed
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_11f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_11f

    .line 477
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 478
    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_fe
    if-ge v0, v3, :cond_117

    aget-object v5, v2, v0

    .line 479
    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 480
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    invoke-direct {v7, v5, p2}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    .line 483
    :cond_117
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    :cond_11f
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiTrain;->inputRow(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    return-void
.end method

.method static close()V
    .registers 0

    .prologue
    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 169
    return-void
.end method

.method private static colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 540
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 541
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 542
    return-object v0
.end method

.method static commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 601
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->applyCommands(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;

    move-result-object v1

    .line 602
    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    .line 603
    new-instance v2, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 604
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 605
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 606
    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 607
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 608
    const-string v0, "ai-train"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void

    .line 604
    :cond_51
    const-string v0, "\u041d\u0435 \u043c\u043e\u0436\u0430\u0445 \u0434\u0430 \u0433\u043e \u043d\u0430\u043f\u0440\u0430\u0432\u044f \u0441\u0435\u0433\u0430."

    const-string v3, "Could not do it now."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private static fire(Landroid/widget/EditText;Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1069
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1071
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1072
    if-eqz v0, :cond_26

    .line 1073
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_26} :catch_3b

    .line 1077
    :cond_26
    :goto_26
    if-nez p1, :cond_33

    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_33

    .line 1078
    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 1082
    :goto_2e
    return-void

    .line 1069
    :cond_2f
    const-string v0, ""

    move-object v1, v0

    goto :goto_10

    .line 1081
    :cond_33
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_2e

    .line 1075
    :catch_3b
    move-exception v0

    goto :goto_26
.end method

.method private static freeColumn(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    const/4 v5, 0x4

    const/high16 v8, 0x41600000    # 14.0f

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 336
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-nez v1, :cond_63

    .line 337
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_5a

    const-string v0, "\u2726 AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430\u2026"

    const-string v1, "\u2726 The AI is writing the workout\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_1b
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 337
    invoke-static {p0, v0, v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 339
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0421\u044a\u0441\u0442\u0430\u0432\u0438"

    const-string v2, "Write it"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :cond_59
    return-void

    .line 338
    :cond_5a
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u2726 \u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u0438\u043b\u0438 \u043d\u0430\u043f\u0438\u0448\u0438 \u043a\u0430\u043a\u0432\u043e \u0438\u0441\u043a\u0430\u0448."

    const-string v1, "Tap \u2726 Write it or say what you want."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 345
    :cond_63
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    .line 347
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 348
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 349
    goto :goto_70

    .line 350
    :cond_83
    add-int/lit16 v1, v1, -0x258

    .line 351
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_151

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    :goto_93
    const/high16 v3, 0x41a00000    # 20.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 352
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 351
    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    const-string v0, "\u0412\u0440\u0435\u043c\u0435"

    const-string v3, "Time"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v1, v1

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043c\u0438\u043d \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 10 \u043c\u0438\u043d \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v4, " min active \u00b7 10 min recovery"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 354
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 353
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    const-string v0, "\u0421\u0438\u043b\u0430"

    const-string v1, "Strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u043e\u0442 0 \u2014 \u043a\u0430\u0447\u0432\u0430\u0448 \u044f \u0441 +"

    const-string v3, "from 0 \u2014 raise it with +"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 356
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 355
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 358
    :goto_f8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_59

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ". "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v8, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14d

    .line 362
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    const/high16 v1, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    :cond_14d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f8

    .line 351
    :cond_151
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "AI workout"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_93
.end method

.method private static inputRow(Landroid/content/Context;Z)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v10, 0x42700000    # 60.0f

    const/high16 v9, 0x42500000    # 52.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x41600000    # 14.0f

    .line 491
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 492
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 493
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 494
    if-eqz p1, :cond_d8

    const-string v0, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0438\u043b\u0438 \u043a\u0430\u0436\u0438\u2026"

    const-string v3, "Write or say\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 496
    if-eqz p1, :cond_e2

    const-string v0, ""

    :goto_29
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    if-nez p1, :cond_34

    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_34

    .line 498
    sput-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    .line 500
    :cond_34
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 501
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 502
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 503
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 504
    const/16 v0, 0x4001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 505
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 506
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 508
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;

    invoke-direct {v0, v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 509
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    const-string v0, "\ud83c\udfa4"

    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 511
    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Mic;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;-><init>(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 513
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 514
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    const-string v0, "\u27a4"

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 516
    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;

    invoke-direct {v3, v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 518
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 519
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    return-object v1

    .line 495
    :cond_d8
    const-string v0, "\u201e52 \u0433., \u0431\u043e\u043b\u043a\u0438 \u0432 \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435, \u0434\u043d\u0435\u0441 \u0435 \u0443\u043c\u043e\u0440\u0435\u043d\u0430\u201c"

    const-string v3, "\u201c52, knee pain, tired today\u201d"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 496
    :cond_e2
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    goto/16 :goto_29
.end method

.method private static intake(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v12, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v5

    .line 205
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 206
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v6, "Client"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    new-array v6, v4, [Ljava/lang/String;

    const-string v0, "\u041c\u044a\u0436"

    const-string v7, "Male"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v7, "Female"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 208
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v7, :cond_294

    move v0, v1

    :goto_3b
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v7, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 207
    invoke-static {p0, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v6, 0x4

    .line 208
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 207
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 210
    const-string v6, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v7, "Age"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u0433."

    const-string v9, "y"

    .line 211
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    invoke-direct {v10, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 210
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 211
    invoke-static {v13, v1, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 210
    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    const-string v6, "\u0420\u044a\u0441\u0442"

    const-string v7, "Height"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cm"

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    invoke-direct {v10, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    .line 213
    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 212
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 213
    invoke-static {v13, v12, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 212
    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    const-string v6, "\u0422\u0435\u0433\u043b\u043e"

    const-string v7, "Weight"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 215
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "kg"

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    invoke-direct {v10, v4}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 214
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 215
    invoke-static {v13, v12, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 214
    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v6

    .line 218
    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_15d

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0418\u0422\u041c "

    const-string v9, "BMI "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "%.1f"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u00b7 "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41500000    # 13.0f

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    cmpl-double v0, v6, v10

    if-ltz v0, :cond_297

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 219
    :goto_151
    invoke-static {p0, v8, v9, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v6, 0x6

    .line 220
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 219
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_15d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442 EMS"

    const-string v7, "First EMS"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    const-string v6, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u044a\u0442\u0438"

    const-string v7, "A few times"

    .line 223
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v6, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v7, "Regularly"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 224
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 222
    invoke-static {p0, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 224
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 222
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 228
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Training"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 230
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v3

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 229
    invoke-static {p0, v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x4

    .line 230
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 229
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29b

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29b

    move v0, v2

    .line 232
    :goto_1fd
    if-eqz v0, :cond_22d

    .line 233
    new-array v3, v4, [Ljava/lang/String;

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Active"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v7, "Passive"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 234
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v7, :cond_29e

    move v0, v1

    :goto_21c
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 233
    invoke-static {p0, v3, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 234
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 233
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_22d
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->anyHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v0

    if-nez v0, :cond_237

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    if-eqz v0, :cond_2a1

    :cond_237
    move v0, v2

    .line 237
    :goto_238
    new-array v7, v4, [Ljava/lang/String;

    const-string v3, "\u0417\u0434\u0440\u0430\u0432"

    const-string v8, "Healthy"

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v3, "\u0418\u043c\u0430 \u043f\u0440\u043e\u0431\u043b\u0435\u043c"

    const-string v8, "Has an issue"

    .line 238
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    if-eqz v0, :cond_2a3

    move v3, v2

    :goto_251
    new-instance v8, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 237
    invoke-static {p0, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 238
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 237
    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    if-eqz v0, :cond_32c

    .line 240
    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 241
    :goto_26a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2d7

    .line 242
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v8, v3, v0

    .line 243
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v3, v9, :cond_2a5

    const-string v3, "postpartum"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_291

    const-string v3, "diastasis"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_291

    const-string v3, "menopause"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a5

    .line 241
    :cond_291
    :goto_291
    add-int/lit8 v0, v0, 0x1

    goto :goto_26a

    :cond_294
    move v0, v2

    .line 208
    goto/16 :goto_3b

    .line 220
    :cond_297
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_151

    :cond_29b
    move v0, v1

    .line 231
    goto/16 :goto_1fd

    :cond_29e
    move v0, v2

    .line 234
    goto/16 :goto_21c

    :cond_2a1
    move v0, v1

    .line 236
    goto :goto_238

    :cond_2a3
    move v3, v1

    .line 238
    goto :goto_251

    .line 246
    :cond_2a5
    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v9

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_2d4

    const-string v3, "\u2713 "

    :goto_2b2
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v10, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 248
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v9, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v7, v3}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_291

    .line 247
    :cond_2d4
    const-string v3, ""

    goto :goto_2b2

    :cond_2d7
    move v0, v1

    .line 251
    :goto_2d8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_324

    .line 252
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v8, v3, v0

    .line 253
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v3, v9, :cond_2f2

    const-string v3, "pregnancy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f2

    .line 251
    :goto_2ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d8

    .line 256
    :cond_2f2
    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v9

    .line 257
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_321

    const-string v3, "\u2298 "

    :goto_2ff
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v10, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 258
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v9, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v7, v3}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_2ef

    .line 257
    :cond_321
    const-string v3, ""

    goto :goto_2ff

    .line 261
    :cond_324
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    :cond_32c
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u041e\u0449\u0435 \u043d\u0435\u0449\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430?"

    const-string v6, "Anything else about the client?"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->inputRow(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441 AI"

    const-string v6, "Tune with AI"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 269
    new-instance v5, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->enrolled(Landroid/content/Context;)Z

    move-result v5

    .line 273
    if-eqz v5, :cond_3fc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udf99  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c \u2713 \u00b7 \u0437\u0430\u043f\u0438\u0448\u0438 \u043f\u0430\u043a"

    const-string v6, "\u201cTrainer\u201d \u2713 \u00b7 record again"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 274
    :goto_3bf
    if-eqz v5, :cond_419

    const/4 v0, 0x3

    .line 273
    :goto_3c2
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-static {p0, v13}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    return-void

    .line 274
    :cond_3fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udf99  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0443\u0447\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c (30 s)"

    const-string v6, "Teach \u201cTrainer\u201d (30 s)"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3bf

    :cond_419
    move v0, v4

    goto :goto_3c2
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    .line 533
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 534
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    return-object v0
.end method

.method private static line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 524
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 525
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 526
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 528
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    return-object v0
.end method

.method static liveApply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 708
    if-nez v0, :cond_d

    .line 709
    const-string v0, ""

    .line 730
    :goto_c
    return-object v0

    .line 711
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 715
    :cond_2c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v1, :cond_ef

    .line 716
    :cond_3c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_46
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v2, :cond_120

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 717
    :goto_50
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v3, :cond_126

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 718
    :goto_5a
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v4, :cond_12c

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v10

    add-double/2addr v4, v8

    .line 716
    :goto_67
    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 719
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_8b

    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v2, "impulse "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_8b
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_ac

    const-string v1, "\u043f\u0430\u0443\u0437\u0430 "

    const-string v2, "pause "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_ac
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v1, :cond_c7

    const-string v1, "Hz "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_c7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v1, :cond_ef

    const-string v1, "\u043f\u043e\u0447\u0438\u0432\u043a\u0438 "

    const-string v2, "rests "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v2

    sub-double/2addr v2, v8

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    .line 723
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_ef
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    if-eqz v1, :cond_114

    .line 726
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->endActiveIn(DJ)V

    .line 727
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 "

    const-string v1, "to the recovery \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_111
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_114
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 716
    :cond_11a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    goto/16 :goto_46

    :cond_120
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    goto/16 :goto_50

    .line 717
    :cond_126
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    goto/16 :goto_5a

    .line 718
    :cond_12c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    goto/16 :goto_67

    .line 728
    :cond_132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043e\u0449\u0435 "

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 "

    const-string v2, " more active min \u00b7 "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_111
.end method

.method static liveChatOpen()Z
    .registers 1

    .prologue
    .line 172
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    return v0
.end method

.method private static liveLocal(Lcom/isaigu/gymapp/ai/AiBrief$Patch;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 734
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 737
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 739
    :cond_23
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 547
    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 549
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-nez v4, :cond_72

    const-string v4, "WARMUP"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    if-eqz v1, :cond_2d

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-le v4, v5, :cond_72

    :cond_2d
    :goto_2d
    move-object v1, v0

    .line 552
    goto :goto_9

    .line 553
    :cond_2f
    if-nez v1, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 554
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v1, v0

    .line 556
    :cond_42
    if-eqz v1, :cond_4c

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    move-object v0, v2

    .line 564
    :goto_4d
    return-object v0

    .line 559
    :cond_4e
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 560
    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_54

    goto :goto_4d

    .line 564
    :cond_69
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    goto :goto_4d

    :cond_72
    move-object v0, v1

    goto :goto_2d
.end method

.method static onAnswer(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 654
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    if-eq p1, v0, :cond_7

    .line 703
    :goto_6
    return-void

    .line 657
    :cond_7
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 658
    if-nez p0, :cond_42

    .line 660
    invoke-static {p3, p2}, Lcom/isaigu/gymapp/ai/AiBrief;->local(Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    move-result-object v0

    .line 661
    if-eqz p2, :cond_2d

    .line 662
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveLocal(Lcom/isaigu/gymapp/ai/AiBrief$Patch;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 668
    :goto_17
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 669
    const-string v1, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u043d\u0430\u043f\u0440\u0430\u0432\u0438\u0445 \u043a\u0430\u043a\u0432\u043e\u0442\u043e \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u043e\u0442 \u0434\u0443\u043c\u0438\u0442\u0435."

    const-string v2, "No AI connection \u2014 I did what I understood from the words."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 671
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_6

    .line 664
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiBrief;->apply(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 665
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 666
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto :goto_17

    .line 675
    :cond_42
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 676
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_55
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_92

    .line 678
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_65
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    .line 679
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_71
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_7d
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 681
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    .line 682
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_92

    .line 684
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    sget v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->setVeto(III)V

    .line 687
    :cond_92
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 688
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->applyAuto(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v2

    .line 689
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 690
    const-string v0, ""

    .line 691
    if-eqz p2, :cond_130

    .line 692
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveApply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;

    move-result-object v0

    .line 696
    :goto_a5
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    if-eqz v3, :cond_c8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v3

    if-nez v3, :cond_c8

    .line 697
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_bd

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 698
    :cond_bd
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v4

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->adviceLines()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v4, v5, v3}, Lcom/isaigu/gymapp/ai/AiProfile;->saveAdvice(Landroid/content/Context;JLjava/util/List;)V

    .line 700
    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_138

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_135

    const-string v1, ""

    :goto_e8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_f4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 701
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 702
    const-string v3, "ai-train"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_13b

    const-string v1, "live "

    :goto_10c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_127
    move-object v0, v1

    .line 676
    goto/16 :goto_55

    :cond_12a
    move v0, v2

    .line 678
    goto/16 :goto_65

    :cond_12d
    move v0, v2

    .line 679
    goto/16 :goto_71

    .line 694
    :cond_130
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_a5

    .line 700
    :cond_135
    const-string v1, " \u00b7 "

    goto :goto_e8

    :cond_138
    const-string v1, ""

    goto :goto_f4

    .line 702
    :cond_13b
    const-string v1, "plan "

    goto :goto_10c
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 108
    :cond_b
    :goto_b
    return-void

    .line 69
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_2c

    .line 71
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_20

    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->root(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_b

    .line 74
    :cond_20
    const-string v0, "\u0422\u0435\u0447\u0435 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v1, "An automatic session is running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 78
    :cond_2c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_36

    .line 80
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 83
    :cond_36
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->beginSetup(Landroid/content/Context;)V

    .line 84
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 86
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 87
    iput-boolean v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    .line 88
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_54

    .line 89
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_89

    const/16 v0, 0xa6

    :goto_52
    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 91
    :cond_54
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 92
    iput v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 94
    :cond_5c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 95
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->resetAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 96
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->start(Landroid/app/Activity;)Z

    .line 97
    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 98
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    .line 99
    sput-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 100
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    .line 101
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 102
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    .line 103
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 105
    sput-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 106
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->root(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_b

    .line 89
    :cond_89
    const/16 v0, 0xb2

    goto :goto_52
.end method

.method static openLive()V
    .registers 1

    .prologue
    .line 449
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 451
    return-void
.end method

.method static planJson()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 787
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 788
    if-nez v6, :cond_c

    move-object v0, v4

    .line 804
    :goto_b
    return-object v0

    .line 791
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"program\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"active_min\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v8, v1

    div-double/2addr v8, v10

    .line 792
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"recovery_min\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    int-to-double v8, v1

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"cr10\":\""

    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"phases\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v2, v3

    .line 794
    :goto_62
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_df

    .line 795
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 796
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    move-object v5, v4

    .line 797
    :goto_7b
    if-lez v2, :cond_dc

    const-string v1, ","

    :goto_7f
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "{\"name\":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ",\"min\":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v8, v0

    div-double/2addr v8, v10

    .line 798
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 799
    if-eqz v5, :cond_c9

    .line 800
    const-string v0, ",\"hz\":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"on\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"off\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    :cond_c9
    const/16 v0, 0x7d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_62

    .line 796
    :cond_d2
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-object v5, v1

    goto :goto_7b

    .line 797
    :cond_dc
    const-string v1, ""

    goto :goto_7f

    .line 804
    :cond_df
    const-string v0, "]}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b
.end method

.method private static rebuild()V
    .registers 0

    .prologue
    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->rebuild()V

    .line 182
    return-void
.end method

.method private static root(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method static runJson()Ljava/lang/String;
    .registers 6

    .prologue
    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 809
    if-nez v1, :cond_8

    .line 810
    const/4 v0, 0x0

    .line 813
    :goto_7
    return-object v0

    .line 812
    :cond_8
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"phase\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_9c

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    :goto_1b
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"min_done\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"state\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"tune\":{\"on\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 815
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"off\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"hz_pct\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"rest_pct\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 816
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 813
    :cond_9c
    const-string v0, ""

    goto/16 :goto_1b
.end method

.method static send(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 570
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v1, :cond_15

    .line 597
    :cond_14
    :goto_14
    return-void

    .line 573
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 574
    if-nez p3, :cond_1e

    .line 575
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->userSaid(Ljava/lang/String;)V

    .line 577
    :cond_1e
    if-nez p2, :cond_24

    .line 578
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 580
    :cond_24
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 581
    if-eqz p2, :cond_36

    .line 583
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v1

    .line 584
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 585
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V

    goto :goto_14

    .line 589
    :cond_36
    sput-boolean v6, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 591
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->planJson()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_49

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->runJson()Ljava/lang/String;

    move-result-object v0

    :cond_49
    invoke-static {v1, v5, v2, v0, p2}, Lcom/isaigu/gymapp/ai/AiCoach;->requestFieldsAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 592
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_78

    if-nez p2, :cond_78

    .line 593
    :goto_53
    if-eqz v6, :cond_5d

    .line 594
    const-string v0, "\"kind\":\"coach\""

    const-string v1, "\"kind\":\"workout\""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 596
    :cond_5d
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AiTrain$Ask;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Z)V

    const-string v1, "xems-ai-train"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_14

    .line 592
    :cond_78
    const/4 v6, 0x0

    goto :goto_53
.end method

.method private static signed(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 783
    if-lez p0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method static start(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 992
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_2f

    .line 993
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-nez v0, :cond_14

    .line 994
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u2726 \u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v1, "First \u2726 write the workout."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1014
    :goto_13
    return-void

    .line 998
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    .line 999
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 1000
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_2b

    .line 1002
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 1004
    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->go()V

    goto :goto_13

    .line 1008
    :cond_2f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    if-nez v0, :cond_38

    .line 1009
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 1011
    :cond_38
    if-eqz p1, :cond_44

    :goto_3a
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoSession;->startDirect(Landroid/content/Context;)V

    .line 1012
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    .line 1013
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_13

    :cond_44
    move-object p1, p0

    .line 1011
    goto :goto_3a
.end method

.method private static summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/4 v13, -0x2

    const/high16 v12, 0x41500000    # 13.0f

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v5

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 287
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 288
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v4, "Ready program"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "\u2726 \u041d\u043e\u0432\u0430 \u043e\u0442 AI"

    const-string v4, "\u2726 New by the AI"

    .line 289
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_55

    move v0, v1

    :goto_2e
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v8, 0x5

    invoke-direct {v4, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 288
    invoke-static {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 289
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 288
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_57

    .line 291
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->freeColumn(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 292
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f866666    # 1.05f

    invoke-direct {v0, v2, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 331
    :goto_54
    return-void

    :cond_55
    move v0, v2

    .line 289
    goto :goto_2e

    .line 296
    :cond_57
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 297
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 298
    iget-object v3, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v3, v4, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v3, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 303
    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v4, "active"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_bd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 302
    invoke-static {p0, v0, v12, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x2

    .line 303
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 302
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v0

    .line 305
    const-string v3, "\u0412\u0440\u0435\u043c\u0435"

    const-string v4, "Time"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v0, v2

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " + "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v8, v0, v1

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " \u043c\u0438\u043d \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 "

    const-string v9, " min active \u00b7 "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x2

    aget v0, v0, v8

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043c\u0438\u043d \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, " min recovery"

    .line 306
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    .line 306
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 305
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 308
    if-eqz v8, :cond_212

    .line 309
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    if-lez v0, :cond_2e3

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    iget v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 310
    :goto_146
    sget v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    if-lez v3, :cond_2e7

    sget v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 311
    :goto_14c
    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    if-lez v4, :cond_2eb

    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 312
    :goto_152
    const-string v9, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v10, "Impulse"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " Hz \u00b7 "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v10, "on"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u043f\u0430\u0443\u0437\u0430"

    const-string v4, "pause"

    .line 313
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b5s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {p0, v9, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 312
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_212

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2726 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AI \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 (\u0431\u0435\u0448\u0435 "

    const-string v4, "The AI changed the program\'s impulse (was "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v12, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 317
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 315
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_212
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Double impulse"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_2ef

    iget-boolean v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_2ef

    .line 321
    const-string v0, "\u0434\u0430, \u0432 \u043f\u0430\u0443\u0437\u0438\u0442\u0435"

    const-string v4, "yes, in the pauses"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_22a
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 321
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 320
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    const-string v0, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435"

    const-string v3, "Feel"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v5, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v5, :cond_2f9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2013"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_263
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043e\u0442 10"

    const-string v5, " of 10"

    .line 323
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 323
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 322
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const-string v0, "\u0421\u0438\u043b\u0430"

    const-string v3, "Strength"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u043e\u0442 0 \u2014 \u043a\u0430\u0447\u0432\u0430\u0448 \u044f \u0441 + \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v4, "from 0 \u2014 you raise it with + during the session"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 325
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 324
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c9

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2726 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v12, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_2c9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f866666    # 1.05f

    invoke-direct {v0, v2, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_54

    .line 303
    :cond_2d9
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v4, "passive"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bd

    .line 309
    :cond_2e3
    iget v0, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto/16 :goto_146

    .line 310
    :cond_2e7
    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    goto/16 :goto_14c

    .line 311
    :cond_2eb
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    goto/16 :goto_152

    .line 321
    :cond_2ef
    const-string v0, "\u043d\u0435"

    const-string v4, "no"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22a

    .line 322
    :cond_2f9
    const-string v0, ""

    goto/16 :goto_263
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 821
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 824
    :goto_8
    return-void

    .line 822
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static trim(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 778
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method static tune(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 971
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 972
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 973
    :cond_12
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 975
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 976
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 977
    sput v4, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 978
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 979
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 981
    :cond_4a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 982
    :goto_54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_61

    .line 983
    invoke-static {p0, v0, v3, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 988
    :goto_5d
    return-void

    .line 981
    :cond_5e
    const-string v0, ""

    goto :goto_54

    .line 985
    :cond_61
    const-string v0, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u0438 \u0434\u0430\u0439 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435."

    const-string v1, "Tune the session for this client and give the advice."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_5d
.end method

.method static voice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAct(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method private static voiceAct(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    sput-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    .line 132
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_17

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    :cond_17
    move-object v0, v3

    .line 163
    :goto_18
    return-object v0

    .line 135
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v4, :cond_50

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_50

    move v0, v1

    .line 136
    :goto_28
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v4

    .line 137
    if-nez v0, :cond_d3

    .line 138
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "resume"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 139
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_52

    .line 140
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->tune(Landroid/content/Context;)V

    .line 141
    const-string v0, "\u041d\u0430\u0433\u043b\u0430\u0441\u044f\u043c"

    const-string v1, "Tuning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_50
    move v0, v2

    .line 135
    goto :goto_28

    .line 143
    :cond_52
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->start(Landroid/content/Context;Landroid/app/Activity;)V

    .line 144
    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 146
    :cond_66
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    .line 148
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0435\u043d\u043e"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 150
    :cond_7c
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_cc

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    if-eqz v0, :cond_c9

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ae
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 153
    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u0430\u0445"

    const-string v1, "Noted"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 151
    :cond_c9
    const-string v0, ""

    goto :goto_ae

    .line 155
    :cond_cc
    invoke-static {p0, p1, v2, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 156
    const-string v0, ""

    goto/16 :goto_18

    .line 158
    :cond_d3
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ef

    .line 159
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    if-eqz v0, :cond_ec

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ec

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    goto/16 :goto_18

    :cond_ec
    move-object v0, v3

    goto/16 :goto_18

    .line 162
    :cond_ef
    invoke-static {p0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 163
    const-string v0, ""

    goto/16 :goto_18
.end method

.method static voiceState()V
    .registers 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_7

    .line 120
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 122
    :cond_7
    return-void
.end method
