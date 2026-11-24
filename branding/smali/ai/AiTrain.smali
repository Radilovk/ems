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
        Lcom/isaigu/gymapp/ai/AiTrain$Retune;,
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

.field private static final RETUNE:Ljava/lang/Runnable;

.field static final RETUNE_MS:J = 0x9c4L

.field static final SUMMARY:I = 0x1

.field static final S_AGE:I = 0x0

.field static final S_HEIGHT:I = 0x1

.field static final S_WEIGHT:I = 0x2

.field static busy:Z

.field static draft:Ljava/lang/String;

.field static free:Z

.field static freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

.field static healthOpen:Z

.field private static host:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static intakeField:Landroid/widget/EditText;

.field static lastChanges:Ljava/lang/String;

.field static lastSpoken:Ljava/lang/String;

.field static pending:[Ljava/lang/String;

.field private static retuneCtx:Landroid/content/Context;

.field private static seq:I

.field static view:I

.field static voiceAsk:Z


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

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 1181
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Retune;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiTrain$Retune;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->retuneCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/EditText;Z)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->fire(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    return v0
.end method

.method private static action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 951
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 952
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->mapAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    :goto_a
    return-object v0

    .line 954
    :cond_b
    if-nez p0, :cond_10

    .line 955
    const-string v0, ""

    goto :goto_a

    .line 957
    :cond_10
    const-string v0, "softer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 958
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->reduceAll()V

    .line 959
    const-string v0, "\u0441\u0438\u043b\u0430 \u221210 % \u00b7 "

    const-string v1, "strength \u221210 % \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 961
    :cond_24
    const-string v0, "stronger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 962
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->raiseAll()V

    .line 963
    const-string v0, "\u0441\u0438\u043b\u0430 +5 % \u00b7 "

    const-string v1, "strength +5 % \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 966
    :cond_38
    const-string v0, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 967
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 968
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_4c

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_58

    .line 969
    :cond_4c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 970
    const-string v0, "\u043f\u0430\u0443\u0437\u0430 \u00b7 "

    const-string v1, "pause \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 972
    :cond_58
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_65

    const-string v0, "\u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0435 \u2014 \u043a\u0430\u0436\u0438 \u201e\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u00b7 "

    const-string v1, "it is a rest \u2014 say \u201cgo on\u201d \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 973
    :cond_65
    const-string v0, "\u043d\u0430 \u043f\u0430\u0443\u0437\u0430 \u0435 \u00b7 "

    const-string v1, "it is paused \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 975
    :cond_6e
    const-string v0, "resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "continue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 976
    :cond_7e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435 \u00b7 "

    const-string v1, "going on \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 977
    :cond_8e
    const-string v0, "\u0442\u0435\u0447\u0435 \u00b7 "

    const-string v1, "it is running \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 979
    :cond_98
    const-string v0, "skip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 980
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->nextFromPanel()V

    .line 981
    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435 \u00b7 "

    const-string v1, "the next exercise \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 983
    :cond_b3
    const-string v0, "to_recovery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "to_cooldown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 984
    :cond_c3
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 985
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 "

    const-string v1, "to the recovery \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 987
    :cond_d0
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "double_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 988
    :cond_e0
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setDoublePulse(Z)V

    .line 989
    const-string v0, "double_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 990
    :cond_fb
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "no double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 992
    :cond_105
    const-string v0, ""

    goto/16 :goto_a
.end method

.method static activity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 68
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 69
    if-nez v0, :cond_12

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    .line 70
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 72
    :cond_12
    return-object v0
.end method

.method private static adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x42700000    # 60.0f

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 453
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 454
    const-string v0, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438"

    const-string v3, "Advice"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->advice()[Ljava/lang/String;

    move-result-object v3

    .line 456
    if-nez v3, :cond_100

    .line 457
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_f6

    const-string v0, "\u2726 AI \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u044f \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435\u2026"

    const-string v3, "\u2726 The AI is preparing the advice\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_2b
    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 457
    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 459
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 457
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    :cond_3a
    const v0, 0x3f8ccccd    # 1.1f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 471
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 472
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 473
    const-string v3, "\u2039"

    invoke-static {p0, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 474
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v4, v9}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
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

    .line 477
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v4, v10}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 479
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 480
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_15f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
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

    .line 485
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

    .line 458
    :cond_f6
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u2014 \u043d\u0430\u043f\u0438\u0448\u0438 \u043d\u0435\u0449\u043e \u043d\u0430 AI \u0438\u043b\u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u2726."

    const-string v3, "None yet \u2014 write to the AI or tap \u2726."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    :cond_100
    move v0, v1

    .line 461
    :goto_101
    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3a

    array-length v4, v3

    if-ge v0, v4, :cond_3a

    .line 462
    aget-object v4, v3, v0

    if-eqz v4, :cond_126

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_126

    .line 463
    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, v3, v0

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    .line 485
    :cond_129
    const-string v1, ""

    goto :goto_e6

    .line 487
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

    .line 489
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v1, v7}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    :cond_15f
    const v0, 0x3f99999a    # 1.2f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    return-void
.end method

.method static applyCommands(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;
    .registers 13

    .prologue
    .line 667
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 668
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->applyMap(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_a
    return-object v0

    .line 670
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_259

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 673
    const-string v1, "up"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "on"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :cond_3b
    const/4 v1, 0x1

    move v5, v1

    .line 674
    :goto_3d
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->isMuscle()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 675
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->channels()[I

    move-result-object v1

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    iget-boolean v3, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    invoke-static {v1, v2, v3, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->channelStep([ILjava/lang/String;ZI)I

    move-result v1

    .line 676
    if-ltz v1, :cond_1a

    .line 677
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "off"

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const-string v1, "\u0438\u0437\u043a\u043b."

    const-string v3, "off"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    .line 678
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 673
    :cond_7f
    const/4 v1, -0x1

    move v5, v1

    goto :goto_3d

    .line 677
    :cond_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " %"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_75

    .line 680
    :cond_96
    const-string v1, "strength"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 681
    iget-boolean v3, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    const-string v1, "set"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    const/4 v1, -0x1

    .line 682
    :goto_ad
    const-string v2, "set"

    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 681
    :goto_b9
    invoke-static {v5, v3, v1, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->strengthStep(IZII)I

    move-result v1

    .line 683
    if-ltz v1, :cond_1a

    .line 684
    const-string v2, "\u0441\u0438\u043b\u0430 "

    const-string v3, "strength "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 681
    :cond_d6
    iget v1, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    goto :goto_ad

    .line 682
    :cond_d9
    const/4 v2, -0x1

    goto :goto_b9

    .line 686
    :cond_db
    if-eqz v0, :cond_11a

    const-string v1, "impulse"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 687
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

    .line 688
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

    goto/16 :goto_1a

    .line 689
    :cond_11a
    if-eqz v0, :cond_159

    const-string v1, "pause"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 690
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

    .line 691
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

    goto/16 :goto_1a

    .line 692
    :cond_159
    if-eqz v0, :cond_19b

    const-string v1, "frequency"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 693
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v8

    iget-boolean v3, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v3, :cond_198

    const/4 v3, 0x5

    :goto_176
    mul-int/2addr v3, v5

    add-int/2addr v3, v8

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 694
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

    goto/16 :goto_1a

    .line 693
    :cond_198
    const/16 v3, 0xa

    goto :goto_176

    .line 695
    :cond_19b
    if-eqz v0, :cond_1d7

    const-string v1, "width"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 696
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTunePwPct()I

    move-result v2

    iget-boolean v1, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v1, :cond_1d4

    const/4 v1, 0x5

    :goto_1b0
    mul-int/2addr v1, v5

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTunePw(I)V

    .line 697
    const-string v1, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 "

    const-string v2, "depth "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTunePwPct()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 696
    :cond_1d4
    const/16 v1, 0xa

    goto :goto_1b0

    .line 698
    :cond_1d7
    const-string v1, "second"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 699
    const-string v1, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v2, "second impulse "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->secondStep(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 700
    :cond_1fe
    if-eqz v0, :cond_1a

    const-string v1, "rest"

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 701
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v8

    int-to-double v10, v5

    iget-boolean v4, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v4, :cond_253

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    :goto_224
    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 702
    const-string v1, "\u043f\u043e\u0447\u0438\u0432\u043a\u0438 "

    const-string v2, "rests "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 703
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 701
    :cond_253
    const-wide v4, 0x3fc3333333333333L    # 0.15

    goto :goto_224

    .line 706
    :cond_259
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_285

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 707
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/ai/AiTrain;->commonAction(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;

    move-result-object v2

    .line 708
    if-eqz v2, :cond_276

    move-object v1, v2

    :goto_272
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25f

    :cond_276
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_280

    const-string v1, "to_recovery"

    :cond_280
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_272

    .line 710
    :cond_285
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a
.end method

.method static applyMap(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 834
    const-string v1, "up"

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "on"

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_2b
    const/4 v1, 0x1

    .line 835
    :goto_2c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->isMuscle()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 836
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->channels()[I

    move-result-object v5

    .line 837
    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/MapRunner;->channelLevel(I)I

    move-result v6

    .line 838
    const-string v2, "set"

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    iget v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 840
    :goto_49
    invoke-static {v5, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->setChannels([II)I

    move-result v1

    .line 841
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "off"

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "\u0438\u0437\u043a\u043b."

    const-string v1, "off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 834
    :cond_79
    const/4 v1, -0x1

    goto :goto_2c

    .line 838
    :cond_7b
    const-string v2, "off"

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const/4 v1, 0x0

    goto :goto_49

    .line 839
    :cond_87
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    if-lez v2, :cond_90

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    :goto_8d
    mul-int/2addr v1, v2

    add-int/2addr v1, v6

    goto :goto_49

    :cond_90
    const/4 v2, 0x1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v7, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->step(IZ)I

    move-result v2

    goto :goto_8d

    .line 841
    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    .line 843
    :cond_b0
    const-string v2, "strength"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 844
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v2

    .line 845
    const-string v5, "set"

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 847
    :goto_ca
    const-string v1, "\u0441\u0438\u043b\u0430 "

    const-string v2, "strength "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->setStrength(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 845
    :cond_e5
    iget v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    if-lez v5, :cond_ee

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 846
    :goto_eb
    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_ca

    :cond_ee
    const/4 v5, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->step(IZ)I

    move-result v0

    goto :goto_eb

    .line 848
    :cond_fa
    const-string v2, "impulse"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 849
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    add-int/2addr v0, v1

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->tune(III)V

    .line 850
    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v1, "impulse "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 851
    :cond_12b
    const-string v2, "pause"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13f

    const-string v2, "rest"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 852
    :cond_13f
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    add-int/2addr v1, v2

    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->tune(III)V

    .line 853
    const-string v0, "\u043f\u0430\u0443\u0437\u0430 "

    const-string v1, "pause "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 854
    :cond_166
    const-string v2, "frequency"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 855
    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    sget v5, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    sget v6, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v0, :cond_197

    const/4 v0, 0x5

    :goto_17b
    mul-int/2addr v0, v1

    add-int/2addr v0, v6

    invoke-static {v2, v5, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->tune(III)V

    .line 856
    const-string v0, "Hz "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 855
    :cond_197
    const/16 v0, 0xa

    goto :goto_17b

    .line 857
    :cond_19a
    const-string v2, "width"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 858
    const/16 v2, -0x1e

    const/16 v5, 0x1e

    sget v6, Lcom/isaigu/gymapp/ai/MapRunner;->tunePwPct:I

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v0, :cond_1e1

    const/4 v0, 0x5

    :goto_1af
    mul-int/2addr v0, v1

    add-int/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->tunePwPct:I

    .line 859
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->tune(III)V

    .line 860
    const-string v0, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 "

    const-string v1, "depth "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tunePwPct:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 858
    :cond_1e1
    const/16 v0, 0xa

    goto :goto_1af

    .line 861
    :cond_1e4
    const-string v2, "second"

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 862
    const-wide v6, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sget-wide v10, Lcom/isaigu/gymapp/ai/MapRunner;->secondScale:D

    int-to-double v12, v1

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v0, :cond_236

    const-wide v0, 0x3fa999999999999aL    # 0.05

    :goto_201
    mul-double/2addr v0, v12

    add-double/2addr v0, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->secondScale:D

    .line 863
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->tune(III)V

    .line 864
    const-string v0, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v1, "second impulse "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v6, Lcom/isaigu/gymapp/ai/MapRunner;->secondScale:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 862
    :cond_236
    const-wide v0, 0x3fb999999999999aL    # 0.1

    goto :goto_201

    .line 867
    :cond_23c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_242
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_268

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiTrain;->commonAction(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;

    move-result-object v1

    .line 869
    if-eqz v1, :cond_259

    move-object v0, v1

    :goto_255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_242

    :cond_259
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_263

    const-string v0, "to_recovery"

    :cond_263
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->mapAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_255

    .line 871
    :cond_268
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 267
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiWizard;->build(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 268
    return-void
.end method

.method static buildOld(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 273
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 276
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 277
    sget v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-ne v3, v5, :cond_38

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 278
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 282
    :goto_22
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 284
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void

    .line 280
    :cond_38
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->intake(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_22
.end method

.method static changed()V
    .registers 3

    .prologue
    .line 1198
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1199
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1200
    :cond_14
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1202
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 1203
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-nez v0, :cond_3b

    .line 1204
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 1208
    :goto_2a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 1209
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_37
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->retuneLater(Landroid/content/Context;)V

    .line 1211
    return-void

    .line 1206
    :cond_3b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    goto :goto_2a

    .line 1210
    :cond_3f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->retuneCtx:Landroid/content/Context;

    goto :goto_37
.end method

.method static chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V
    .registers 12

    .prologue
    .line 498
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 499
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v5

    .line 500
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

    .line 501
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 502
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const/high16 v3, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 503
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

    .line 504
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v2, :cond_8a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_4f
    const/high16 v3, 0x41600000    # 14.0f

    .line 505
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

    .line 504
    invoke-static {v2, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 508
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 509
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_9c

    const v0, 0x800003

    :goto_7f
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 510
    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_88
    const/4 v0, 0x5

    goto :goto_10

    .line 504
    :cond_8a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto :goto_4f

    .line 505
    :cond_93
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v8, 0x80

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto :goto_5c

    .line 509
    :cond_9c
    const v0, 0x800005

    goto :goto_7f

    .line 512
    :cond_a0
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_bd

    .line 513
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

    .line 515
    :cond_bd
    if-eqz p2, :cond_ed

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ed

    .line 516
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

    .line 518
    :cond_ed
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_11f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_11f

    .line 519
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 520
    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_fe
    if-ge v0, v3, :cond_117

    aget-object v5, v2, v0

    .line 521
    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 522
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    invoke-direct {v7, v5, p2}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    .line 525
    :cond_117
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    :cond_11f
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiTrain;->inputRow(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    return-void
.end method

.method static close()V
    .registers 2

    .prologue
    .line 242
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->close()V

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->close()V

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 246
    return-void
.end method

.method private static colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 582
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 583
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 584
    return-object v0
.end method

.method static commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 654
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->applyCommands(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSpeak;->natural(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    .line 656
    new-instance v2, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 657
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 658
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 659
    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 660
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 661
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6b

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSpeak;->natural(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->speakBack(Ljava/lang/String;)V

    .line 662
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

    .line 663
    return-void

    .line 657
    :cond_62
    const-string v0, "\u041d\u0435 \u043c\u043e\u0436\u0430\u0445 \u0434\u0430 \u0433\u043e \u043d\u0430\u043f\u0440\u0430\u0432\u044f \u0441\u0435\u0433\u0430."

    const-string v3, "Could not do it now."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 661
    :cond_6b
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    goto :goto_3c
.end method

.method static commonAction(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 879
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v2

    .line 880
    const-string v0, "music_toggle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 881
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 882
    const-string v0, "\u043c\u0443\u0437\u0438\u043a\u0430 \u00b7 "

    const-string v1, "music \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    :goto_18
    return-object v0

    .line 884
    :cond_19
    const-string v0, "music_next"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "music_prev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 885
    :cond_29
    const-string v0, "music_next"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    :goto_32
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    .line 886
    const-string v0, "music_next"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u043f\u0435\u0441\u0435\u043d \u00b7 "

    const-string v1, "next song \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 885
    :cond_46
    const/4 v0, -0x1

    goto :goto_32

    .line 887
    :cond_48
    const-string v0, "\u043f\u0440\u0435\u0434\u0438\u0448\u043d\u0430 \u043f\u0435\u0441\u0435\u043d \u00b7 "

    const-string v1, "previous song \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 889
    :cond_51
    const-string v0, "end_in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 890
    if-eqz p1, :cond_95

    iget v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    :goto_5d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 891
    if-eqz v2, :cond_97

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/ai/MapRunner;->endAtMs:J

    .line 896
    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043a\u0440\u0430\u0439 \u0441\u043b\u0435\u0434 "

    const-string v3, "the end in "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d \u00b7 "

    const-string v2, " min \u00b7 "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_95
    move v0, v1

    .line 890
    goto :goto_5d

    .line 893
    :cond_97
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->endIn(I)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 894
    const-string v0, ""

    goto/16 :goto_18

    .line 898
    :cond_a1
    const-string v0, "ask_time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 899
    if-eqz v2, :cond_b5

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->minutesLeft()I

    move-result v0

    .line 900
    :goto_af
    if-gez v0, :cond_ba

    const-string v0, ""

    goto/16 :goto_18

    .line 899
    :cond_b5
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->minutesLeft()I

    move-result v0

    goto :goto_af

    .line 900
    :cond_ba
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    const-string v3, "left "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d \u00b7 "

    const-string v2, " min \u00b7 "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 902
    :cond_e1
    const-string v0, "ask_hr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 903
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v0

    if-lez v0, :cond_11a

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043f\u0443\u043b\u0441 "

    const-string v2, "pulse "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 905
    :cond_11a
    const-string v0, "\u043d\u044f\u043c\u0430 \u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "no pulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 907
    :cond_124
    const-string v0, "ask_strength"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 908
    if-eqz v2, :cond_138

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v0

    .line 909
    :goto_132
    if-gez v0, :cond_13d

    const-string v0, ""

    goto/16 :goto_18

    .line 908
    :cond_138
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderLevel()I

    move-result v0

    goto :goto_132

    .line 909
    :cond_13d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0441\u0438\u043b\u0430 "

    const-string v3, "strength "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 911
    :cond_15e
    const/4 v0, 0x0

    goto/16 :goto_18
.end method

.method private static fire(Landroid/widget/EditText;Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1374
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1376
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1377
    if-eqz v0, :cond_26

    .line 1378
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_26} :catch_41

    .line 1382
    :cond_26
    :goto_26
    if-nez p1, :cond_39

    .line 1383
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1388
    :goto_34
    return-void

    .line 1374
    :cond_35
    const-string v0, ""

    move-object v1, v0

    goto :goto_10

    .line 1387
    :cond_39
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_34

    .line 1380
    :catch_41
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

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-nez v1, :cond_63

    .line 421
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_5a

    const-string v0, "\u2726 AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430\u2026"

    const-string v1, "\u2726 The AI is writing the workout\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_1b
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 421
    invoke-static {p0, v0, v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 423
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 421
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
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

    .line 425
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    :cond_59
    return-void

    .line 422
    :cond_5a
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u2726 \u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u0438\u043b\u0438 \u043d\u0430\u043f\u0438\u0448\u0438 \u043a\u0430\u043a\u0432\u043e \u0438\u0441\u043a\u0430\u0448."

    const-string v1, "Tap \u2726 Write it or say what you want."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 429
    :cond_63
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    .line 431
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

    .line 432
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 433
    goto :goto_70

    .line 434
    :cond_83
    add-int/lit16 v1, v1, -0x258

    .line 435
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

    .line 436
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 435
    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
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

    .line 438
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 437
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
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

    .line 440
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 439
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 442
    :goto_f8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_59

    .line 443
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    .line 444
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

    .line 445
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14d

    .line 446
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    const/high16 v1, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    :cond_14d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f8

    .line 435
    :cond_151
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "AI workout"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_93
.end method

.method static inputRow(Landroid/content/Context;Z)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v10, 0x42700000    # 60.0f

    const/high16 v9, 0x42500000    # 52.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x41600000    # 14.0f

    .line 533
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 534
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 535
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 536
    if-eqz p1, :cond_d8

    const-string v0, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0438\u043b\u0438 \u043a\u0430\u0436\u0438\u2026"

    const-string v3, "Write or say\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 538
    if-eqz p1, :cond_e2

    const-string v0, ""

    :goto_29
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    if-nez p1, :cond_34

    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    if-nez v0, :cond_34

    .line 540
    sput-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    .line 542
    :cond_34
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 543
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 544
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 545
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 546
    const/16 v0, 0x4001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 547
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 548
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

    .line 549
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 550
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;

    invoke-direct {v0, v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 551
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    const-string v0, "\ud83c\udfa4"

    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 553
    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Mic;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;-><init>(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 555
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 556
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    const-string v0, "\u27a4"

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 558
    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;

    invoke-direct {v3, v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 560
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 561
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    return-object v1

    .line 537
    :cond_d8
    const-string v0, "\u201e52 \u0433., \u0431\u043e\u043b\u043a\u0438 \u0432 \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435, \u0434\u043d\u0435\u0441 \u0435 \u0443\u043c\u043e\u0440\u0435\u043d\u0430\u201c"

    const-string v3, "\u201c52, knee pain, tired today\u201d"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 538
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

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v5

    .line 289
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 290
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v6, "Client"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
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

    .line 292
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v7, :cond_294

    move v0, v1

    :goto_3b
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v7, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 291
    invoke-static {p0, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v6, 0x4

    .line 292
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 291
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 294
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

    .line 295
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AiTrain$Step;

    invoke-direct {v10, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Step;-><init>(I)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 294
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 295
    invoke-static {v13, v1, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 294
    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
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

    .line 297
    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 296
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 297
    invoke-static {v13, v12, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 296
    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
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

    .line 299
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

    .line 298
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 299
    invoke-static {v13, v12, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 298
    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v6

    .line 302
    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_15d

    .line 303
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

    .line 304
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

    .line 303
    :goto_151
    invoke-static {p0, v8, v9, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v6, 0x6

    .line 304
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 303
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
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

    .line 307
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v6, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v7, "Regularly"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 308
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 306
    invoke-static {p0, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 308
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 306
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 312
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Training"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
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

    .line 314
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v3

    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 313
    invoke-static {p0, v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x4

    .line 314
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 313
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
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

    .line 316
    :goto_1fd
    if-eqz v0, :cond_22d

    .line 317
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

    .line 318
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v7, :cond_29e

    move v0, v1

    :goto_21c
    new-instance v7, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 317
    invoke-static {p0, v3, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 318
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 317
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_22d
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->anyHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v0

    if-nez v0, :cond_237

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    if-eqz v0, :cond_2a1

    :cond_237
    move v0, v2

    .line 321
    :goto_238
    new-array v7, v4, [Ljava/lang/String;

    const-string v3, "\u0417\u0434\u0440\u0430\u0432"

    const-string v8, "Healthy"

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v3, "\u0418\u043c\u0430 \u043f\u0440\u043e\u0431\u043b\u0435\u043c"

    const-string v8, "Has an issue"

    .line 322
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    if-eqz v0, :cond_2a3

    move v3, v2

    :goto_251
    new-instance v8, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 321
    invoke-static {p0, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 322
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 321
    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    if-eqz v0, :cond_32c

    .line 324
    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 325
    :goto_26a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2d7

    .line 326
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v8, v3, v0

    .line 327
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

    .line 325
    :cond_291
    :goto_291
    add-int/lit8 v0, v0, 0x1

    goto :goto_26a

    :cond_294
    move v0, v2

    .line 292
    goto/16 :goto_3b

    .line 304
    :cond_297
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_151

    :cond_29b
    move v0, v1

    .line 315
    goto/16 :goto_1fd

    :cond_29e
    move v0, v2

    .line 318
    goto/16 :goto_21c

    :cond_2a1
    move v0, v1

    .line 320
    goto :goto_238

    :cond_2a3
    move v3, v1

    .line 322
    goto :goto_251

    .line 330
    :cond_2a5
    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v9

    .line 331
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

    .line 332
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v9, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {v7, v3}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_291

    .line 331
    :cond_2d4
    const-string v3, ""

    goto :goto_2b2

    :cond_2d7
    move v0, v1

    .line 335
    :goto_2d8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_324

    .line 336
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v8, v3, v0

    .line 337
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v3, v9, :cond_2f2

    const-string v3, "pregnancy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f2

    .line 335
    :goto_2ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d8

    .line 340
    :cond_2f2
    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v9

    .line 341
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

    .line 342
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v9, v8}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-virtual {v7, v3}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_2ef

    .line 341
    :cond_321
    const-string v3, ""

    goto :goto_2ff

    .line 345
    :cond_324
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    :cond_32c
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 350
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

    .line 351
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->inputRow(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
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

    .line 353
    new-instance v5, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->enrolled(Landroid/content/Context;)Z

    move-result v5

    .line 357
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

    .line 358
    :goto_3bf
    if-eqz v5, :cond_419

    const/4 v0, 0x3

    .line 357
    :goto_3c2
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-static {p0, v13}, Lcom/isaigu/gymapp/ai/AiTrain;->colParams(Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    return-void

    .line 358
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
    .line 575
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 576
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    return-object v0
.end method

.method static line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 566
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 567
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 568
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 570
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    return-object v0
.end method

.method static live()Z
    .registers 2

    .prologue
    .line 196
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 197
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 196
    :goto_1f
    return v0

    .line 197
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static liveApply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->cmds:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->cmds:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->cmds:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->applyCommands(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Ljava/lang/String;

    move-result-object v0

    .line 771
    :goto_14
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveTune(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    move-object v0, v1

    :cond_1f
    :goto_1f
    return-object v0

    .line 770
    :cond_20
    const-string v0, ""

    goto :goto_14

    .line 772
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method private static liveLocal(Lcom/isaigu/gymapp/ai/AiBrief$Patch;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 822
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
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

    .line 825
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 827
    :cond_23
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static liveTune(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 776
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 777
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 780
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->mapAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 782
    :cond_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v0, :cond_a5

    .line 784
    :cond_3d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 785
    :goto_47
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 786
    :goto_51
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v2, :cond_dc

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 785
    :goto_5b
    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->tune(III)V

    .line 787
    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v1, "impulse "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043f\u0430\u0443\u0437\u0430 "

    const-string v2, "pause "

    .line 788
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s, Hz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    .line 789
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_a5
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_ba

    .line 792
    const-string v0, "to_recovery"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->mapAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_ba
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 818
    :goto_be
    return-object v0

    .line 784
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto/16 :goto_47

    :cond_d4
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOff:I

    goto/16 :goto_47

    .line 785
    :cond_d8
    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->tuneOn:I

    goto/16 :goto_51

    .line 786
    :cond_dc
    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->tuneHzPct:I

    goto/16 :goto_5b

    .line 796
    :cond_e0
    if-nez v0, :cond_e5

    .line 797
    const-string v0, ""

    goto :goto_be

    .line 799
    :cond_e5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_104

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 801
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->action(Lcom/isaigu/gymapp/ai/AutoEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f0

    .line 803
    :cond_104
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v1, :cond_1c7

    .line 804
    :cond_114
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_1f2

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11e
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v2, :cond_1f8

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 805
    :goto_128
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v3, :cond_1fe

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 806
    :goto_132
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v4, :cond_204

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v10

    add-double/2addr v4, v8

    .line 804
    :goto_13f
    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setTune(IIID)V

    .line 807
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_163

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

    .line 808
    :cond_163
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_184

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

    .line 809
    :cond_184
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v1, :cond_19f

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

    .line 810
    :cond_19f
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v1, :cond_1c7

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

    .line 811
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_1c7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    if-eqz v1, :cond_1ec

    .line 814
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->endActiveIn(DJ)V

    .line 815
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_20a

    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 "

    const-string v1, "to the recovery \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_1ec
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->trim(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_be

    .line 804
    :cond_1f2
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v1

    goto/16 :goto_11e

    :cond_1f8
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    goto/16 :goto_128

    .line 805
    :cond_1fe
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v3

    goto/16 :goto_132

    .line 806
    :cond_204
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneRest()D

    move-result-wide v4

    goto/16 :goto_13f

    .line 816
    :cond_20a
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

    goto :goto_1e9
.end method

.method static mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 589
    .line 590
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

    .line 591
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

    .line 594
    goto :goto_9

    .line 595
    :cond_2f
    if-nez v1, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v1, v0

    .line 598
    :cond_42
    if-eqz v1, :cond_4c

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    move-object v0, v2

    .line 606
    :goto_4d
    return-object v0

    .line 601
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

    .line 602
    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_54

    goto :goto_4d

    .line 606
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

.method private static mapAction(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 915
    const-string v0, "softer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 916
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v0

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0441\u0438\u043b\u0430 "

    const-string v3, "strength "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->setStrength(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    :goto_37
    return-object v0

    .line 919
    :cond_38
    const-string v0, "stronger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 920
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v0

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0441\u0438\u043b\u0430 "

    const-string v3, "strength "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0x14

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->setStrength(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 923
    :cond_6f
    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 924
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "\u043d\u0430 \u043f\u0430\u0443\u0437\u0430 \u0435 \u00b7 "

    const-string v1, "it is paused \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 925
    :cond_86
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/MapRunner;->pause(Z)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "\u043f\u0430\u0443\u0437\u0430 \u00b7 "

    const-string v1, "pause \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_95
    const-string v0, ""

    goto :goto_37

    .line 927
    :cond_98
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "continue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 928
    :cond_a8
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 929
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->go()V

    .line 930
    const-string v0, "\u0441\u0442\u0430\u0440\u0442 \u00b7 "

    const-string v1, "start \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    .line 932
    :cond_bb
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isPaused()Z

    move-result v0

    if-nez v0, :cond_cb

    const-string v0, "\u0442\u0435\u0447\u0435 \u00b7 "

    const-string v1, "it is running \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    .line 933
    :cond_cb
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->pause(Z)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435 \u00b7 "

    const-string v1, "going on \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    :cond_dc
    const-string v0, ""

    goto/16 :goto_37

    .line 935
    :cond_e0
    const-string v0, "skip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 936
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->skip()Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u00b7 "

    const-string v1, "the next one \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    :cond_f8
    const-string v0, ""

    goto/16 :goto_37

    .line 938
    :cond_fc
    const-string v0, "double_on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    const-string v0, "double_off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 939
    :cond_10c
    const-string v0, "double_off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    .line 940
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    if-eqz v0, :cond_122

    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "no double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    .line 941
    :cond_122
    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    const-string v1, "double impulse \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    .line 943
    :cond_12c
    const-string v0, "to_recovery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13c

    const-string v0, "to_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 944
    :cond_13c
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    .line 945
    const-string v0, "\u043a\u0440\u0430\u0439 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u00b7 "

    const-string v1, "the workout ends \u00b7 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    .line 947
    :cond_149
    const-string v0, ""

    goto/16 :goto_37
.end method

.method static mapEnded()V
    .registers 1

    .prologue
    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->close()V

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->forget()V

    .line 204
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-nez v0, :cond_d

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->stop()V

    .line 207
    :cond_d
    return-void
.end method

.method static onAnswer(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 714
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    if-eq p1, v0, :cond_7

    .line 765
    :goto_6
    return-void

    .line 717
    :cond_7
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 718
    if-nez p0, :cond_4d

    .line 720
    invoke-static {p3, p2}, Lcom/isaigu/gymapp/ai/AiBrief;->local(Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    move-result-object v0

    .line 721
    if-eqz p2, :cond_38

    .line 722
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveLocal(Lcom/isaigu/gymapp/ai/AiBrief$Patch;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 728
    :goto_17
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 729
    const-string v1, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u043d\u0430\u043f\u0440\u0430\u0432\u0438\u0445 \u043a\u0430\u043a\u0432\u043e\u0442\u043e \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u043e\u0442 \u0434\u0443\u043c\u0438\u0442\u0435."

    const-string v2, "No AI connection \u2014 I did what I understood from the words."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 731
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 732
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 733
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI."

    const-string v1, "No AI connection."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->speakBack(Ljava/lang/String;)V

    goto :goto_6

    .line 724
    :cond_38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiBrief;->apply(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 725
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 726
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto :goto_17

    .line 736
    :cond_4d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 737
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_14b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_60
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_70
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    .line 740
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_7c
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 741
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_88
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 742
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    .line 743
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_9d

    .line 745
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    sget v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->setVeto(III)V

    .line 748
    :cond_9d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 749
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->applyAuto(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v2

    .line 750
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 751
    const-string v0, ""

    .line 752
    if-eqz p2, :cond_154

    .line 753
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->liveApply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_b0
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    if-eqz v3, :cond_d3

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v3

    if-nez v3, :cond_d3

    .line 758
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 759
    :cond_c8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v4

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->adviceLines()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v4, v5, v3}, Lcom/isaigu/gymapp/ai/AiProfile;->saveAdvice(Landroid/content/Context;JLjava/util/List;)V

    .line 761
    :cond_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_159

    const-string v1, ""

    :goto_f3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_ff
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 763
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    if-eqz v1, :cond_15f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15f

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->spoken(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_122
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->speakBack(Ljava/lang/String;)V

    .line 764
    const-string v3, "ai-train"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_168

    const-string v1, "live "

    :goto_130
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

    :cond_14b
    move-object v0, v1

    .line 737
    goto/16 :goto_60

    :cond_14e
    move v0, v2

    .line 739
    goto/16 :goto_70

    :cond_151
    move v0, v2

    .line 740
    goto/16 :goto_7c

    .line 755
    :cond_154
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_b0

    .line 761
    :cond_159
    const-string v1, " \u00b7 "

    goto :goto_f3

    :cond_15c
    const-string v1, ""

    goto :goto_ff

    .line 763
    :cond_15f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSpeak;->natural(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->spoken(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_122

    .line 764
    :cond_168
    const-string v1, "plan "

    goto :goto_130
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    :cond_b
    :goto_b
    return-void

    .line 80
    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->host:Ljava/lang/ref/WeakReference;

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->open(Landroid/app/Activity;)V

    goto :goto_b

    .line 85
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_45

    .line 87
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_39

    .line 88
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_35

    .line 89
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->open(Landroid/app/Activity;)V

    goto :goto_b

    .line 91
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->open(Landroid/app/Activity;)V

    goto :goto_b

    .line 94
    :cond_39
    const-string v0, "\u0422\u0435\u0447\u0435 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v1, "An automatic session is running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 98
    :cond_45
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_4f

    .line 100
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 103
    :cond_4f
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->beginSetup(Landroid/content/Context;)V

    .line 104
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    .line 105
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 106
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    iput-boolean v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    .line 108
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_6d

    .line 109
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_ac

    const/16 v0, 0xa6

    :goto_6b
    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 111
    :cond_6d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 112
    iput v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 114
    :cond_75
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 115
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->resetAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->reset()V

    .line 117
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->start(Landroid/app/Activity;)Z

    .line 118
    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 119
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    .line 120
    sput-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 121
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 122
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    .line 123
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 125
    sput-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 126
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 128
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->open(Landroid/app/Activity;)V

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_b

    .line 130
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiTrain;->retuneNow(Landroid/content/Context;)V

    goto/16 :goto_b

    .line 109
    :cond_ac
    const/16 v0, 0xb2

    goto :goto_6b
.end method

.method static planJson()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 1005
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 1006
    if-nez v6, :cond_c

    move-object v0, v4

    .line 1022
    :goto_b
    return-object v0

    .line 1009
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

    .line 1010
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

    .line 1011
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

    .line 1012
    :goto_62
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_df

    .line 1013
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1014
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    move-object v5, v4

    .line 1015
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

    .line 1016
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1017
    if-eqz v5, :cond_c9

    .line 1018
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

    .line 1020
    :cond_c9
    const/16 v0, 0x7d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_62

    .line 1014
    :cond_d2
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-object v5, v1

    goto :goto_7b

    .line 1015
    :cond_dc
    const-string v1, ""

    goto :goto_7f

    .line 1022
    :cond_df
    const-string v0, "]}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b
.end method

.method static rebuild()V
    .registers 1

    .prologue
    .line 255
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->refresh()V

    .line 261
    :goto_9
    return-void

    .line 259
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->refresh()V

    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->refresh()V

    goto :goto_9
.end method

.method static retuneLater(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 1214
    if-nez p0, :cond_3

    .line 1220
    :goto_2
    return-void

    .line 1217
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->retuneCtx:Landroid/content/Context;

    .line 1218
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1219
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method static retuneNow(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1224
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1225
    if-eqz p0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1236
    :cond_10
    :goto_10
    return-void

    .line 1228
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->retuneCtx:Landroid/content/Context;

    .line 1229
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 1230
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 1231
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-nez v0, :cond_23

    .line 1232
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 1234
    :cond_23
    const-string v0, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u0438 \u0434\u0430\u0439 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435."

    const-string v1, "Tune the session for this client and give the advice."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_10
.end method

.method private static root(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    .line 250
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
    .line 1026
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 1027
    if-nez v1, :cond_8

    .line 1028
    const/4 v0, 0x0

    .line 1031
    :goto_7
    return-object v0

    .line 1030
    :cond_8
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1031
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

    .line 1032
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

    .line 1033
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

    .line 1034
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

    .line 1031
    :cond_9c
    const-string v0, ""

    goto/16 :goto_1b
.end method

.method static safety(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Z
    .registers 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "pause"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "resume"

    .line 618
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    .line 617
    :goto_27
    return v0

    .line 618
    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method static say(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1247
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 1258
    :cond_d
    :goto_d
    return-void

    .line 1250
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1251
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 1252
    if-eqz p2, :cond_29

    .line 1253
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->userSpoke(Ljava/lang/String;)V

    .line 1257
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_d

    .line 1255
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->userSaid(Ljava/lang/String;)V

    goto :goto_20
.end method

.method static send(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 5

    .prologue
    .line 612
    if-eqz p2, :cond_f

    if-nez p3, :cond_f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->awaitingAnswer()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    .line 613
    return-void

    .line 612
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static send(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 623
    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_15

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v1, :cond_16

    .line 650
    :cond_15
    :goto_15
    return-void

    .line 626
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 627
    if-nez p3, :cond_1f

    .line 628
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiCoach;->userSaid(Ljava/lang/String;)V

    .line 630
    :cond_1f
    if-nez p2, :cond_25

    .line 631
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 633
    :cond_25
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 634
    if-eqz p2, :cond_3f

    .line 636
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v1

    .line 637
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    if-eqz p4, :cond_3b

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->safety(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 638
    :cond_3b
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V

    goto :goto_15

    .line 642
    :cond_3f
    sput-boolean v7, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 643
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 644
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->planJson()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_52

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->runJson()Ljava/lang/String;

    move-result-object v0

    :cond_52
    invoke-static {v1, v5, v2, v0, p2}, Lcom/isaigu/gymapp/ai/AiCoach;->requestFieldsAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 645
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_84

    if-nez p2, :cond_84

    move v6, v7

    .line 646
    :goto_5d
    if-eqz v6, :cond_67

    .line 647
    const-string v0, "\"kind\":\"coach\""

    const-string v1, "\"kind\":\"workout\""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    :cond_67
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    if-nez p4, :cond_86

    :goto_77
    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AiTrain$Ask;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;ZZ)V

    const-string v1, "xems-ai-train"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_15

    :cond_84
    move v6, v4

    .line 645
    goto :goto_5d

    :cond_86
    move v7, v4

    .line 649
    goto :goto_77
.end method

.method static setNum(II)V
    .registers 6

    .prologue
    .line 1185
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1186
    if-nez p0, :cond_18

    .line 1187
    const/16 v1, 0xe

    const/16 v2, 0x5a

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 1193
    :goto_14
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 1194
    return-void

    .line 1188
    :cond_18
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2a

    .line 1189
    const/16 v1, 0x82

    const/16 v2, 0xdc

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    goto :goto_14

    .line 1191
    :cond_2a
    const/16 v1, 0x23

    const/16 v2, 0xc8

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    goto :goto_14
.end method

.method private static signed(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1001
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

.method private static speakBack(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 233
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAsk:Z

    if-eqz v0, :cond_14

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAsk:Z

    .line 235
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    :goto_11
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;)V

    .line 238
    :cond_14
    return-void

    .line 236
    :cond_15
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e."

    const-string v1, "Done."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method static spoken(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    if-eqz p0, :cond_71

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_71

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_20
    :goto_20
    if-eqz p0, :cond_96

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7d

    const-string v0, " "

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 223
    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_50
    const/4 v0, 0x0

    move v1, v0

    :goto_52
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_96

    .line 226
    if-nez v1, :cond_80

    const-string v0, " "

    :goto_5e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    .line 217
    :cond_71
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 218
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 221
    :cond_7d
    const-string v0, ""

    goto :goto_30

    .line 226
    :cond_80
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_93

    const-string v0, " \u0438\u043b\u0438 "

    const-string v3, " or "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    :cond_93
    const-string v0, ", "

    goto :goto_5e

    .line 229
    :cond_96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static start(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1283
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_58

    .line 1284
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_19

    .line 1285
    :cond_d
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u2726 \u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v1, "First \u2726 write the workout."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1319
    :goto_18
    return-void

    .line 1289
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    .line 1290
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->close()V

    .line 1291
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 1292
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    .line 1293
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiAnnounce;->reset()V

    .line 1294
    sput-boolean v2, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    .line 1295
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_3d

    .line 1297
    sput-boolean v2, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    .line 1298
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_18

    .line 1300
    :cond_3d
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->go()V

    .line 1301
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->started()V

    .line 1302
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->isOn()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1303
    if-eqz p1, :cond_52

    :goto_4b
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WakeListener;->start(Landroid/app/Activity;)Z

    .line 1305
    :cond_4e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->refresh()V

    goto :goto_18

    .line 1303
    :cond_52
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_4b

    .line 1309
    :cond_58
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->RETUNE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1310
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiTrain;->seq:I

    .line 1311
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    .line 1312
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    if-nez v0, :cond_70

    .line 1313
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 1315
    :cond_70
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->close()V

    .line 1316
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->started()V

    .line 1317
    if-eqz p1, :cond_7f

    :goto_78
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoSession;->startDirect(Landroid/content/Context;)V

    .line 1318
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_18

    :cond_7f
    move-object p1, p0

    .line 1317
    goto :goto_78
.end method

.method private static summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/4 v13, -0x2

    const/high16 v12, 0x41500000    # 13.0f

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v5

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 371
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 372
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v4, "Ready program"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "\u2726 \u041d\u043e\u0432\u0430 \u043e\u0442 AI"

    const-string v4, "\u2726 New by the AI"

    .line 373
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

    .line 372
    invoke-static {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 373
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 372
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_57

    .line 375
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiTrain;->freeColumn(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 376
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f866666    # 1.05f

    invoke-direct {v0, v2, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 415
    :goto_54
    return-void

    :cond_55
    move v0, v2

    .line 373
    goto :goto_2e

    .line 380
    :cond_57
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 381
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 382
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

    .line 384
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

    .line 385
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
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

    .line 387
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

    .line 386
    invoke-static {p0, v0, v12, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x2

    .line 387
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 386
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v0

    .line 389
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

    .line 390
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    .line 390
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 389
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 392
    if-eqz v8, :cond_212

    .line 393
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    if-lez v0, :cond_2e3

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    iget v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 394
    :goto_146
    sget v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    if-lez v3, :cond_2e7

    sget v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 395
    :goto_14c
    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    if-lez v4, :cond_2eb

    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 396
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

    .line 397
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

    .line 396
    invoke-static {p0, v9, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 397
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 396
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_212

    .line 399
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

    .line 401
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 399
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_212
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Double impulse"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_2ef

    iget-boolean v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_2ef

    .line 405
    const-string v0, "\u0434\u0430, \u0432 \u043f\u0430\u0443\u0437\u0438\u0442\u0435"

    const-string v4, "yes, in the pauses"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_22a
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 405
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 404
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
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

    .line 407
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->line(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 407
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 406
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
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

    .line 409
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 408
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c9

    .line 411
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

    .line 413
    :cond_2c9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f866666    # 1.05f

    invoke-direct {v0, v2, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->adviceAndChat(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_54

    .line 387
    :cond_2d9
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v4, "passive"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bd

    .line 393
    :cond_2e3
    iget v0, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto/16 :goto_146

    .line 394
    :cond_2e7
    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    goto/16 :goto_14c

    .line 395
    :cond_2eb
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    goto/16 :goto_152

    .line 405
    :cond_2ef
    const-string v0, "\u043d\u0435"

    const-string v4, "no"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22a

    .line 406
    :cond_2f9
    const-string v0, ""

    goto/16 :goto_263
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1039
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 1042
    :goto_8
    return-void

    .line 1040
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static trim(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 996
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
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

    .line 1262
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1263
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1264
    :cond_12
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1266
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 1267
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 1268
    sput v4, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 1269
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

    .line 1270
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 1272
    :cond_4a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1273
    :goto_54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_61

    .line 1274
    invoke-static {p0, v0, v3, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 1279
    :goto_5d
    return-void

    .line 1272
    :cond_5e
    const-string v0, ""

    goto :goto_54

    .line 1276
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
    .line 149
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAct(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method private static voiceAct(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 155
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    .line 156
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-nez v1, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_e
    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 191
    :cond_1c
    :goto_1c
    return-object v0

    .line 159
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->live()Z

    move-result v1

    .line 160
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v2

    .line 161
    if-nez v1, :cond_7d

    .line 162
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "resume"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 163
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->go()V

    .line 165
    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 167
    :cond_4b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->start(Landroid/content/Context;Landroid/app/Activity;)V

    .line 168
    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 170
    :cond_5f
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    .line 172
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0435\u043d\u043e"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 174
    :cond_75
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAsk:Z

    .line 175
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 176
    const-string v0, ""

    goto :goto_1c

    .line 178
    :cond_7d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->awaitingAnswer()Z

    move-result v1

    .line 179
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiCoach;->userSpoke(Ljava/lang/String;)V

    .line 180
    if-eqz v1, :cond_94

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->safety(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 181
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAsk:Z

    .line 182
    invoke-static {p0, p1, v3, v3, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    .line 183
    const-string v0, ""

    goto :goto_1c

    .line 185
    :cond_94
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 186
    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ai/AiTrain;->commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V

    .line 187
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastSpoken:Ljava/lang/String;

    goto/16 :goto_1c

    .line 189
    :cond_ad
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->voiceAsk:Z

    .line 190
    invoke-static {p0, p1, v3, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 191
    const-string v0, ""

    goto/16 :goto_1c
.end method

.method static voiceState()V
    .registers 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_7

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 146
    :cond_7
    return-void
.end method
