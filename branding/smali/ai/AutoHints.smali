.class public final Lcom/isaigu/gymapp/ai/AutoHints;
.super Ljava/lang/Object;
.source "AutoHints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoHints$Open;
    }
.end annotation


# static fields
.field private static final EXAMPLE_S:J = 0xcL

.field private static final EXAMPLE_T0:J

.field private static final FEELING_MS:J = 0x61a8L

.field private static final NOTICE_MS:[J

.field private static final WIDTH_DP:I = 0x280

.field private static card:Landroid/widget/LinearLayout;

.field private static count:Landroid/widget/TextView;

.field private static cue:Landroid/widget/TextView;

.field private static dialog:Landroid/app/Dialog;

.field private static exBox:Landroid/widget/LinearLayout;

.field private static exName:Landroid/widget/TextView;

.field private static figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field private static head:Landroid/widget/TextView;

.field private static hint:Landroid/widget/TextView;

.field private static lastPhase:I

.field private static lastTone:I

.field private static mid:Landroid/widget/LinearLayout;

.field private static next:Landroid/widget/TextView;

.field private static notice:Landroid/widget/TextView;

.field private static phaseStartMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_14

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    .line 47
    sput v2, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 49
    sput v2, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    return-void

    .line 28
    :array_14
    .array-data 8
        0xfa0
        0x1770
        0x2328
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alertActive(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 80
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 81
    if-lt v2, v0, :cond_2c

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, p0, v4

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v2, v3, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_2c

    .line 81
    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    .line 82
    goto :goto_2b
.end method

.method private static build(Landroid/app/Activity;)Z
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 105
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 106
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 108
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoHints$Open;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AutoHints$Open;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 111
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    .line 112
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const-string v3, "\u0410\u0432\u0442\u043e \u203a"

    const-string v4, "Auto \u203a"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    .line 118
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    .line 120
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    new-instance v2, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 123
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    invoke-virtual {v2, v4, v5, v9, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 124
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const-string v2, ""

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v8, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    .line 126
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 128
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 132
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const-string v2, ""

    const/high16 v3, 0x41d00000    # 26.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    .line 134
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const-string v2, ""

    const/high16 v3, 0x41f00000    # 30.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    .line 136
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    .line 141
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const-string v2, ""

    const/high16 v3, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v2, v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    .line 143
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    .line 145
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :try_start_1a0
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 150
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 151
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 152
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 155
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 156
    if-nez v2, :cond_1d1

    .line 157
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 177
    :goto_1d0
    return v0

    .line 160
    :cond_1d1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 163
    const/high16 v4, 0x44200000    # 640.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 164
    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 165
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 166
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 167
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 168
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x20

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 171
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_21d
    .catch Ljava/lang/Throwable; {:try_start_1a0 .. :try_end_21d} :catch_21f

    move v0, v1

    .line 173
    goto :goto_1d0

    .line 174
    :catch_21f
    move-exception v1

    .line 175
    const-string v2, "AutoHints.build"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    goto :goto_1d0
.end method

.method static hide()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 90
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    .line 92
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_14

    .line 96
    :cond_b
    :goto_b
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 97
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 98
    sput v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 99
    sput v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    .line 100
    return-void

    .line 93
    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method static isShowing()Z
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static refresh()V
    .registers 4

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_41

    if-eqz v1, :cond_41

    .line 58
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_41

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_41

    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoHints;->alertActive(J)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3a
    const/4 v0, 0x1

    .line 61
    :goto_3b
    if-nez v0, :cond_43

    .line 62
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 75
    :cond_40
    :goto_40
    return-void

    .line 60
    :cond_41
    const/4 v0, 0x0

    goto :goto_3b

    .line 65
    :cond_43
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 66
    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoHints;->build(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 71
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHints;->update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_40

    .line 72
    :catch_6d
    move-exception v0

    .line 73
    const-string v1, "AutoHints.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method private static update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    .registers 16

    .prologue
    .line 182
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v5

    .line 184
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v6

    .line 185
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v7

    .line 186
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    if-eq v0, v1, :cond_22

    .line 187
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 188
    sput-wide p1, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    .line 190
    :cond_22
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v6, :cond_262

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v3, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 \u043e\u0431\u0449\u043e "

    const-string v3, " \u00b7 total "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 197
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_270

    .line 198
    const/4 v3, 0x2

    .line 199
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isResumeWaiting()Z

    move-result v0

    if-eqz v0, :cond_266

    .line 200
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v2, "HR is down \u2014 Resume in Auto"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_90
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v7

    .line 222
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2cf

    const/4 v2, 0x0

    :goto_99
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    if-lez v1, :cond_2d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    sget v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    if-eq v3, v0, :cond_104

    .line 226
    sput v3, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    .line 227
    if-nez v3, :cond_2d7

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 228
    :goto_c5
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v8, 0x3e0f5c29    # 0.14f

    invoke-static {v2, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v8, 0x41900000    # 18.0f

    .line 229
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    .line 228
    invoke-static {v2, v8, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    if-nez v3, :cond_2e3

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_ea
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 232
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 233
    const/16 v2, 0x44

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_104
    const/4 v0, 0x0

    .line 239
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    .line 241
    if-eqz v1, :cond_137

    if-ltz v2, :cond_137

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_137

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_137

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v3, v3, v2

    array-length v3, v3

    if-lez v3, :cond_137

    .line 242
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 243
    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    sub-long v2, p1, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    const-wide/16 v8, 0xc

    div-long/2addr v2, v8

    array-length v1, v0

    int-to-long v8, v1

    rem-long/2addr v2, v8

    long-to-int v1, v2

    aget-object v0, v0, v1

    .line 245
    :cond_137
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2e7

    if-eqz v0, :cond_2e7

    const/4 v1, 0x0

    :goto_13e
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    if-eqz v0, :cond_16a

    .line 247
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 248
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0440\u0438\u043c\u0435\u0440: "

    const-string v8, "Example: "

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_16a
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v6, :cond_2eb

    const-string v1, "WARMUP"

    iget-object v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2eb

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-nez v1, :cond_2eb

    iget-boolean v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v1, :cond_2eb

    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    sub-long v2, p1, v2

    const-wide/16 v8, 0x61a8

    cmp-long v1, v2, v8

    if-gez v1, :cond_2eb

    .line 253
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2eb

    const/4 v1, 0x1

    .line 254
    :goto_196
    if-eqz v1, :cond_1b3

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCues;->feeling(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_1b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    if-eqz v7, :cond_2ee

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2ee

    const/4 v0, 0x0

    :goto_1c3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    invoke-static {v5, v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoCues;->next(Lcom/isaigu/gymapp/ai/AutoModel$Plan;ID)Ljava/lang/String;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    if-eqz v7, :cond_2f2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f2

    const/4 v0, 0x0

    :goto_1e2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 266
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v0

    .line 267
    if-eqz v3, :cond_2f6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f6

    sub-long v0, p1, v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v6, v2, v5

    cmp-long v0, v0, v6

    if-gez v0, :cond_2f6

    const/4 v0, 0x1

    move v2, v0

    .line 268
    :goto_20f
    if-eqz v2, :cond_259

    .line 269
    const/4 v0, 0x2

    if-ne v5, v0, :cond_2fa

    const-string v0, "\u26d4 "

    move-object v1, v0

    .line 270
    :goto_217
    const/4 v0, 0x2

    if-ne v5, v0, :cond_307

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 271
    :goto_21c
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/16 v3, 0x22

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x77

    .line 274
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 273
    invoke-static {v3, v5, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_259
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    if-eqz v2, :cond_312

    const/4 v0, 0x0

    :goto_25e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    return-void

    .line 190
    :cond_262
    const-string v0, ""

    goto/16 :goto_43

    .line 201
    :cond_266
    const-string v0, "\u041f\u0430\u0443\u0437\u0430: \u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u0434\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e"

    const-string v2, "Paused: HR high \u2014 breathe calmly"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_90

    .line 202
    :cond_270
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_27f

    .line 203
    const/4 v3, 0x2

    .line 204
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v2, "Paused \u2014 Resume in Auto"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_90

    .line 205
    :cond_27f
    if-eqz v7, :cond_2ca

    .line 206
    iget-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v8, p1, v0

    .line 207
    iget v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    .line 208
    cmp-long v0, v8, v10

    if-gez v0, :cond_2b1

    .line 209
    iget-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2af

    const/4 v0, 0x0

    .line 210
    :goto_299
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCues;->onCue(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v2

    .line 211
    sub-long v8, v10, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    move v3, v0

    :goto_2ac
    move-object v0, v2

    .line 217
    goto/16 :goto_90

    .line 209
    :cond_2af
    const/4 v0, 0x1

    goto :goto_299

    .line 213
    :cond_2b1
    const/4 v3, 0x1

    .line 214
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCues;->offCue(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, v8

    long-to-double v0, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    goto :goto_2ac

    .line 218
    :cond_2ca
    const/4 v3, 0x1

    .line 219
    const-string v0, ""

    goto/16 :goto_90

    .line 222
    :cond_2cf
    const/16 v2, 0x8

    goto/16 :goto_99

    .line 224
    :cond_2d3
    const-string v0, ""

    goto/16 :goto_b8

    .line 227
    :cond_2d7
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2df

    const v0, -0xbd5a0b

    goto/16 :goto_c5

    :cond_2df
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_c5

    .line 230
    :cond_2e3
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_ea

    .line 245
    :cond_2e7
    const/16 v1, 0x8

    goto/16 :goto_13e

    .line 253
    :cond_2eb
    const/4 v1, 0x0

    goto/16 :goto_196

    .line 258
    :cond_2ee
    const/16 v0, 0x8

    goto/16 :goto_1c3

    .line 262
    :cond_2f2
    const/16 v0, 0x8

    goto/16 :goto_1e2

    .line 267
    :cond_2f6
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_20f

    .line 269
    :cond_2fa
    const/4 v0, 0x1

    if-ne v5, v0, :cond_302

    const-string v0, "\u26a0 "

    move-object v1, v0

    goto/16 :goto_217

    :cond_302
    const-string v0, "\u2713 "

    move-object v1, v0

    goto/16 :goto_217

    .line 270
    :cond_307
    const/4 v0, 0x1

    if-ne v5, v0, :cond_30e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_21c

    :cond_30e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_21c

    .line 276
    :cond_312
    const/16 v0, 0x8

    goto/16 :goto_25e
.end method
