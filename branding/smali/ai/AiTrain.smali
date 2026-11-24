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
        Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;
    }
.end annotation


# static fields
.field static final A_BACK:I = 0x2

.field static final A_CLOSE:I = 0x1

.field static final A_LIVE_CLOSE:I = 0x5

.field static final A_MAKE:I = 0x6

.field static final A_SAVE:I = 0x4

.field static final A_START:I = 0x3

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

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/widget/EditText;Z)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->fire(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    return v0
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

.method static synthetic access$600()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    return p0
.end method

.method private static action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 595
    if-nez p0, :cond_5

    .line 596
    const-string v0, ""

    .line 626
    :goto_4
    return-object v0

    .line 598
    :cond_5
    const-string v0, "softer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 599
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->reduceAll()V

    .line 600
    const-string v0, "\u0441\u0438\u043b\u0430 \u221210 % \u00b7 "

    const-string v1, "strength \u221210 % \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 602
    :cond_19
    const-string v0, "stronger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 603
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->raiseAll()V

    .line 604
    const-string v0, "\u0441\u0438\u043b\u0430 +5 % \u00b7 "

    const-string v1, "strength +5 % \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 606
    :cond_2d
    const-string v0, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_49

    .line 607
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 608
    const-string v0, "\u043f\u0430\u0443\u0437\u0430 \u00b7 "

    const-string v1, "pause \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 610
    :cond_49
    const-string v0, "resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "continue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 611
    :cond_59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "\u25b6 \u00b7 "

    goto :goto_4

    :cond_62
    const-string v0, ""

    goto :goto_4

    .line 613
    :cond_65
    const-string v0, "skip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 614
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->nextFromPanel()V

    .line 615
    const-string v0, "\u23ed \u00b7 "

    goto :goto_4

    .line 617
    :cond_79
    const-string v0, "to_recovery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "to_cooldown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 618
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 619
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 "

    const-string v1, "to the recovery \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 621
    :cond_96
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "double_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 622
    :cond_a6
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setDoublePulse(Z)V

    .line 623
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 624
    :cond_c1
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "no double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 626
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

    .line 298
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 299
    const-string v0, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438"

    const-string v3, "Advice"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->advice()[Ljava/lang/String;

    move-result-object v3

    .line 301
    if-nez v3, :cond_100

    .line 302
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_f6

    const-string v0, "\u2726 AI \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u044f \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435\u2026"

    const-string v3, "\u2726 The AI is preparing the advice\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_2b
    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 302
    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 304
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 302
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    :cond_3a
    const v0, 0x3f8ccccd    # 1.1f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 316
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 317
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 318
    const-string v3, "\u2039"

    invoke-static {p0, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 319
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v4, v9}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
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

    .line 322
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v4, v10}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 324
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 325
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_15f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
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

    .line 330
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

    .line 303
    :cond_f6
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u2014 \u043d\u0430\u043f\u0438\u0448\u0438 \u043d\u0435\u0449\u043e \u043d\u0430 AI \u0438\u043b\u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u2726."

    const-string v3, "None yet \u2014 write to the AI or tap \u2726."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    :cond_100
    move v0, v1

    .line 306
    :goto_101
    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3a

    array-length v4, v3

    if-ge v0, v4, :cond_3a

    .line 307
    aget-object v4, v3, v0

    if-eqz v4, :cond_126

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_126

    .line 308
    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, v3, v0

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    .line 330
    :cond_129
    const-string v1, ""

    goto :goto_e6

    .line 332
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

    .line 334
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v1, v7}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_15f
    const v0, 0x3f99999a    # 1.2f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-void
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 132
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 134
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 135
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 136
    sget v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-ne v3, v5, :cond_38

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 137
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 141
    :goto_22
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void

    .line 139
    :cond_38
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->intake(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_22
.end method

.method static buildLive(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    .line 342
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 343
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 344
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 345
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2726 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u041a\u0430\u0436\u0438 \u043d\u0430 AI"

    const-string v5, "Tell the AI"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    new-instance v4, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 348
    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    const-string v7, "softer"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const-string v6, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v7, "stronger"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const-string v6, "\u043f\u0430\u0443\u0437\u0430"

    const-string v7, "pause"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const-string v6, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v7, "go on"

    .line 349
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const-string v6, "\u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    const-string v7, "longer rests"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    const-string v6, "\u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v7, "shorter impulses"

    .line 350
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x6

    const-string v6, "\u043f\u0440\u0435\u0441\u043a\u043e\u0447\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v7, "skip the exercise"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x7

    const-string v6, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v7, "to the recovery"

    .line 351
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 352
    array-length v6, v5

    const/4 v0, 0x0

    :goto_94
    if-ge v0, v6, :cond_ae

    aget-object v7, v5, v0

    .line 353
    const/4 v8, 0x0

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v8

    .line 354
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    const/4 v10, 0x1

    invoke-direct {v9, v7, v10}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {v4, v8}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 357
    :cond_ae
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2039  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u041a\u044a\u043c \u0442\u0430\u0431\u043b\u043e\u0442\u043e"

    const-string v5, "To the board"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 359
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 363
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 364
    const v3, 0x3fa66666    # 1.3f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 368
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    return-void
.end method

.method private static chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V
    .registers 12

    .prologue
    .line 380
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 381
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v5

    .line 382
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

    .line 383
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 384
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const/high16 v3, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 385
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

    .line 386
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v2, :cond_8a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_4f
    const/high16 v3, 0x41600000    # 14.0f

    .line 387
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

    .line 386
    invoke-static {v2, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 390
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 391
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_9c

    const v0, 0x800003

    :goto_7f
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 392
    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_88
    const/4 v0, 0x5

    goto :goto_10

    .line 386
    :cond_8a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto :goto_4f

    .line 387
    :cond_93
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v8, 0x80

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto :goto_5c

    .line 391
    :cond_9c
    const v0, 0x800005

    goto :goto_7f

    .line 394
    :cond_a0
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_bd

    .line 395
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

    .line 397
    :cond_bd
    if-eqz p2, :cond_ed

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ed

    .line 398
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

    .line 400
    :cond_ed
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_11f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_11f

    .line 401
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 402
    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_fe
    if-ge v0, v3, :cond_117

    aget-object v5, v2, v0

    .line 403
    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 404
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    invoke-direct {v7, v5, p2}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    .line 407
    :cond_117
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    :cond_11f
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiTrain;->inputRow(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    return-void
.end method

.method static close()V
    .registers 0

    .prologue
    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 112
    return-void
.end method

.method private static colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 464
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 465
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 466
    return-object v0
.end method

.method private static fire(Landroid/widget/EditText;Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 911
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 913
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 914
    if-eqz v0, :cond_26

    .line 915
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_26} :catch_3b

    .line 919
    :cond_26
    :goto_26
    if-nez p1, :cond_33

    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_33

    .line 920
    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 924
    :goto_2e
    return-void

    .line 911
    :cond_2f
    const-string v0, ""

    move-object v1, v0

    goto :goto_10

    .line 923
    :cond_33
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_2e

    .line 917
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

    .line 264
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-nez v1, :cond_63

    .line 266
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_5a

    const-string v0, "\u2726 AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430\u2026"

    const-string v1, "\u2726 The AI is writing the workout\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_1b
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 266
    invoke-static {p0, v0, v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 268
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 266
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
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

    .line 270
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    :cond_59
    return-void

    .line 267
    :cond_5a
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u2726 \u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u0438\u043b\u0438 \u043d\u0430\u043f\u0438\u0448\u0438 \u043a\u0430\u043a\u0432\u043e \u0438\u0441\u043a\u0430\u0448."

    const-string v1, "Tap \u2726 Write it or say what you want."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 274
    :cond_63
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    .line 276
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

    .line 277
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 278
    goto :goto_70

    .line 279
    :cond_83
    add-int/lit16 v1, v1, -0x258

    .line 280
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

    .line 281
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 280
    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
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

    .line 283
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
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

    .line 285
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 284
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 287
    :goto_f8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_59

    .line 288
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    .line 289
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

    .line 290
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14d

    .line 291
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    const/high16 v1, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :cond_14d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f8

    .line 280
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

    .line 415
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 416
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 417
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 418
    if-eqz p1, :cond_d8

    const-string v0, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0438\u043b\u0438 \u043a\u0430\u0436\u0438\u2026"

    const-string v3, "Write or say\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 420
    if-eqz p1, :cond_e2

    const-string v0, ""

    :goto_29
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    if-nez p1, :cond_34

    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_34

    .line 422
    sput-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    .line 424
    :cond_34
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 425
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 426
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 427
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 428
    const/16 v0, 0x4001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 429
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 430
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

    .line 431
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 432
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;

    invoke-direct {v0, v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 433
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    const-string v0, "\ud83c\udfa4"

    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 435
    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Mic;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;-><init>(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 437
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 438
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    const-string v0, "\u27a4"

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 440
    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;

    invoke-direct {v3, v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 442
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 443
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    return-object v1

    .line 419
    :cond_d8
    const-string v0, "\u201e52 \u0433., \u0431\u043e\u043b\u043a\u0438 \u0432 \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435, \u0434\u043d\u0435\u0441 \u0435 \u0443\u043c\u043e\u0440\u0435\u043d\u0430\u201c"

    const-string v3, "\u201c52, knee pain, tired today\u201d"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 420
    :cond_e2
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    goto/16 :goto_29
.end method

.method private static intake(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 148
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 149
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "\u041c\u044a\u0436"

    const-string v5, "Male"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "\u0416\u0435\u043d\u0430"

    const-string v5, "Female"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 151
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_2bb

    const/4 v0, 0x0

    :goto_37
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 150
    invoke-static {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x4

    .line 151
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 150
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 153
    const-string v3, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v4, "Age"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0433."

    const-string v6, "y"

    .line 154
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 153
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 154
    invoke-static {v4, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 153
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const-string v3, "\u0420\u044a\u0441\u0442"

    const-string v4, "Height"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cm"

    const/high16 v6, 0x41a00000    # 20.0f

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    .line 156
    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 155
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    .line 156
    invoke-static {v4, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 155
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const-string v3, "\u0422\u0435\u0433\u043b\u043e"

    const-string v4, "Weight"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 158
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kg"

    const/high16 v6, 0x41a00000    # 20.0f

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 157
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    .line 158
    invoke-static {v4, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 157
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v4

    .line 161
    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_16d

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0418\u0422\u041c "

    const-string v6, "BMI "

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x41500000    # 13.0f

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_2be

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_160
    const/4 v4, 0x1

    .line 162
    invoke-static {p0, v3, v6, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x6

    .line 163
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 162
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_16d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442 EMS"

    const-string v5, "First EMS"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u044a\u0442\u0438"

    const-string v5, "A few times"

    .line 166
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v5, "Regularly"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 167
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v3

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 165
    invoke-static {p0, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x8

    .line 167
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 165
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 171
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "Training"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 173
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 172
    invoke-static {p0, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    .line 173
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 172
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c2

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c2

    const/4 v0, 0x1

    .line 175
    :goto_21a
    if-eqz v0, :cond_24f

    .line 176
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v5, "Active"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x1

    const-string v4, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v5, "Passive"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 177
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v4, :cond_2c5

    const/4 v0, 0x0

    :goto_23c
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 176
    invoke-static {p0, v1, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 177
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 176
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_24f
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->anyHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v0

    if-nez v0, :cond_259

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    if-eqz v0, :cond_2c8

    :cond_259
    const/4 v0, 0x1

    .line 180
    :goto_25a
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "\u0417\u0434\u0440\u0430\u0432"

    const-string v6, "Healthy"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "\u0418\u043c\u0430 \u043f\u0440\u043e\u0431\u043b\u0435\u043c"

    const-string v6, "Has an issue"

    .line 181
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    if-eqz v0, :cond_2ca

    const/4 v1, 0x1

    :goto_276
    new-instance v5, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 180
    invoke-static {p0, v4, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v4, 0x8

    .line 181
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 180
    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    if-eqz v0, :cond_353

    .line 183
    new-instance v4, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 184
    const/4 v0, 0x0

    :goto_291
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2fe

    .line 185
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v5, v1, v0

    .line 186
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v6, :cond_2cc

    const-string v1, "postpartum"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b8

    const-string v1, "diastasis"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b8

    const-string v1, "menopause"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cc

    .line 184
    :cond_2b8
    :goto_2b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_291

    .line 151
    :cond_2bb
    const/4 v0, 0x1

    goto/16 :goto_37

    .line 163
    :cond_2be
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_160

    .line 174
    :cond_2c2
    const/4 v0, 0x0

    goto/16 :goto_21a

    .line 177
    :cond_2c5
    const/4 v0, 0x1

    goto/16 :goto_23c

    .line 179
    :cond_2c8
    const/4 v0, 0x0

    goto :goto_25a

    .line 181
    :cond_2ca
    const/4 v1, 0x0

    goto :goto_276

    .line 189
    :cond_2cc
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v6

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_2fb

    const-string v1, "\u2713 "

    :goto_2d9
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v1, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 191
    new-instance v6, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v6, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_2b8

    .line 190
    :cond_2fb
    const-string v1, ""

    goto :goto_2d9

    .line 194
    :cond_2fe
    const/4 v0, 0x0

    :goto_2ff
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_34b

    .line 195
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v5, v1, v0

    .line 196
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v6, :cond_319

    const-string v1, "pregnancy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_319

    .line 194
    :goto_316
    add-int/lit8 v0, v0, 0x1

    goto :goto_2ff

    .line 199
    :cond_319
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v6

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_348

    const-string v1, "\u2298 "

    :goto_326
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v1, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 201
    new-instance v6, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v6, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_316

    .line 200
    :cond_348
    const-string v1, ""

    goto :goto_326

    .line 204
    :cond_34b
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_353
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u041e\u0449\u0435 \u043d\u0435\u0449\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430?"

    const-string v3, "Anything else about the client?"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->inputRow(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441 AI"

    const-string v3, "Tune with AI"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 212
    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    const-string v1, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v2, "Close"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    .line 457
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 458
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    return-object v0
.end method

.method private static line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 448
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 449
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 450
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 452
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    return-object v0
.end method

.method static liveApply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 559
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 560
    if-nez v0, :cond_d

    .line 561
    const-string v0, ""

    .line 582
    :goto_c
    return-object v0

    .line 563
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
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

    .line 565
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 567
    :cond_2c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v1, :cond_ef

    .line 568
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

    .line 569
    :goto_50
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v3, :cond_126

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 570
    :goto_5a
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v4, :cond_12c

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v10

    add-double/2addr v4, v8

    .line 568
    :goto_67
    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 571
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

    .line 572
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

    .line 573
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

    .line 574
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

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_ef
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    if-eqz v1, :cond_114

    .line 578
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->endActiveIn(DJ)V

    .line 579
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

    .line 582
    :cond_114
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 568
    :cond_11a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    goto/16 :goto_46

    :cond_120
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    goto/16 :goto_50

    .line 569
    :cond_126
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    goto/16 :goto_5a

    .line 570
    :cond_12c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    goto/16 :goto_67

    .line 580
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
    .line 115
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    return v0
.end method

.method private static liveLocal(Lcom/isaigu/gymapp/ai/AiBrief$Patch;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 586
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
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

    .line 589
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 591
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

    .line 471
    .line 472
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

    .line 473
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

    .line 476
    goto :goto_9

    .line 477
    :cond_2f
    if-nez v1, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v1, v0

    .line 480
    :cond_42
    if-eqz v1, :cond_4c

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    move-object v0, v2

    .line 488
    :goto_4d
    return-object v0

    .line 483
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

    .line 484
    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_54

    goto :goto_4d

    .line 488
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

    .line 516
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    if-eq p1, v0, :cond_7

    .line 555
    :goto_6
    return-void

    .line 519
    :cond_7
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 520
    if-nez p0, :cond_42

    .line 522
    invoke-static {p3, p2}, Lcom/isaigu/gymapp/ai/AiBrief;->local(Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    move-result-object v0

    .line 523
    if-eqz p2, :cond_2d

    .line 524
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveLocal(Lcom/isaigu/gymapp/ai/AiBrief$Patch;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 530
    :goto_17
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 531
    const-string v1, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u043d\u0430\u043f\u0440\u0430\u0432\u0438\u0445 \u043a\u0430\u043a\u0432\u043e\u0442\u043e \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u043e\u0442 \u0434\u0443\u043c\u0438\u0442\u0435."

    const-string v2, "No AI connection \u2014 I did what I understood from the words."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 533
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 534
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_6

    .line 526
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiBrief;->apply(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 527
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 528
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto :goto_17

    .line 537
    :cond_42
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 538
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_55
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 540
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->applyAuto(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v2

    .line 541
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 542
    const-string v0, ""

    .line 543
    if-eqz p2, :cond_ef

    .line 544
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveApply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_6a
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    if-eqz v3, :cond_8d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v3

    if-nez v3, :cond_8d

    .line 549
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_82

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 550
    :cond_82
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v4

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->adviceLines()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v4, v5, v3}, Lcom/isaigu/gymapp/ai/AiProfile;->saveAdvice(Landroid/content/Context;JLjava/util/List;)V

    .line 552
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f4

    const-string v1, ""

    :goto_ad
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 554
    const-string v3, "ai-train"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_fa

    const-string v1, "live "

    :goto_d1
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

    :cond_ec
    move-object v0, v1

    .line 538
    goto/16 :goto_55

    .line 546
    :cond_ef
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_6a

    .line 552
    :cond_f4
    const-string v1, " \u00b7 "

    goto :goto_ad

    :cond_f7
    const-string v1, ""

    goto :goto_b9

    .line 554
    :cond_fa
    const-string v1, "plan "

    goto :goto_d1
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

    .line 107
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

    if-ne v0, v2, :cond_86

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
    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 97
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    .line 98
    sput-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 99
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    .line 100
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 101
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 103
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 104
    sput-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 105
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    .line 106
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->root(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_b

    .line 89
    :cond_86
    const/16 v0, 0xb2

    goto :goto_52
.end method

.method static openLive()V
    .registers 1

    .prologue
    .line 373
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z

    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 375
    return-void
.end method

.method static planJson()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 639
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 640
    if-nez v6, :cond_c

    move-object v0, v4

    .line 656
    :goto_b
    return-object v0

    .line 643
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

    .line 644
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

    .line 645
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

    .line 646
    :goto_62
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_df

    .line 647
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 648
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    move-object v5, v4

    .line 649
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

    .line 650
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 651
    if-eqz v5, :cond_c9

    .line 652
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

    .line 654
    :cond_c9
    const/16 v0, 0x7d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_62

    .line 648
    :cond_d2
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-object v5, v1

    goto :goto_7b

    .line 649
    :cond_dc
    const-string v1, ""

    goto :goto_7f

    .line 656
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
    .line 124
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->rebuild()V

    .line 125
    return-void
.end method

.method private static root(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 119
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    .line 120
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
    .line 660
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 661
    if-nez v1, :cond_8

    .line 662
    const/4 v0, 0x0

    .line 665
    :goto_7
    return-object v0

    .line 664
    :cond_8
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 665
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

    .line 666
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

    .line 667
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

    .line 668
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

    .line 665
    :cond_9c
    const-string v0, ""

    goto/16 :goto_1b
.end method

.method static send(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 494
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v1, :cond_15

    .line 513
    :cond_14
    :goto_14
    return-void

    .line 497
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 498
    if-nez p3, :cond_1e

    .line 499
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->userSaid(Ljava/lang/String;)V

    .line 501
    :cond_1e
    if-nez p2, :cond_24

    .line 502
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 504
    :cond_24
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 505
    sput-boolean v6, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 506
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->planJson()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_39

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->runJson()Ljava/lang/String;

    move-result-object v0

    :cond_39
    invoke-static {v1, v5, v2, v0, p2}, Lcom/isaigu/gymapp/ai/AiCoach;->requestFieldsAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 508
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_68

    if-nez p2, :cond_68

    .line 509
    :goto_43
    if-eqz v6, :cond_4d

    .line 510
    const-string v0, "\"kind\":\"coach\""

    const-string v1, "\"kind\":\"workout\""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_4d
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

    .line 508
    :cond_68
    const/4 v6, 0x0

    goto :goto_43
.end method

.method private static signed(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 635
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

.method private static summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    .line 224
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 225
    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v7, "Ready program"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "\u2726 \u041d\u043e\u0432\u0430 \u043e\u0442 AI"

    const-string v7, "\u2726 New by the AI"

    .line 226
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_53

    move v0, v1

    :goto_2c
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 225
    invoke-static {p0, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 226
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 225
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_55

    .line 228
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->freeColumn(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 229
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f866666    # 1.05f

    invoke-direct {v0, v2, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 260
    :goto_52
    return-void

    :cond_53
    move v0, v2

    .line 226
    goto :goto_2c

    .line 233
    :cond_55
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 234
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 235
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u00b7 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_26d

    .line 240
    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "active"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_bb
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 239
    invoke-static {p0, v0, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 240
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 239
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v6, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v0

    .line 242
    const-string v6, "\u0412\u0440\u0435\u043c\u0435"

    const-string v7, "Time"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v0, v2

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v1

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u043c\u0438\u043d \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 "

    const-string v9, " min active \u00b7 "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v0, v0, v12

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u043c\u0438\u043d \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, " min recovery"

    .line 243
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0x8

    .line 243
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 242
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiTrain;->mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1a4

    .line 246
    const-string v6, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v7, "Impulse"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Hz \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v9, "on"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u043f\u0430\u0443\u0437\u0430"

    const-string v9, "pause"

    .line 247
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u00b5s"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 247
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 246
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_1a4
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v6, "Double impulse"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_277

    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_277

    .line 250
    const-string v0, "\u0434\u0430, \u0432 \u043f\u0430\u0443\u0437\u0438\u0442\u0435"

    const-string v3, "yes, in the pauses"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_1bc
    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 250
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 249
    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const-string v0, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435"

    const-string v3, "Feel"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v7, :cond_281

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2013"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043e\u0442 10"

    const-string v6, " of 10"

    .line 252
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 251
    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
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

    .line 254
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 253
    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25d

    .line 256
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

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_25d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f866666    # 1.05f

    invoke-direct {v0, v2, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_52

    .line 240
    :cond_26d
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v7, "passive"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bb

    .line 250
    :cond_277
    const-string v0, "\u043d\u0435"

    const-string v3, "no"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 251
    :cond_281
    const-string v0, ""

    goto/16 :goto_1f5
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 673
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 676
    :goto_8
    return-void

    .line 674
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static trim(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 630
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
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
