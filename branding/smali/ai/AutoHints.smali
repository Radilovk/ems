.class public final Lcom/isaigu/gymapp/ai/AutoHints;
.super Ljava/lang/Object;
.source "AutoHints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoHints$Open;,
        Lcom/isaigu/gymapp/ai/AutoHints$Start;
    }
.end annotation


# static fields
.field private static final EXAMPLE_S:J = 0xcL

.field private static final EXAMPLE_T0:J

.field private static final FEELING_MS:J = 0x61a8L

.field private static final NOTICE_MS:[J

.field private static final WIDTH_DP:I = 0x230

.field private static card:Landroid/widget/LinearLayout;

.field private static dialog:Landroid/app/Dialog;

.field private static exBox:Landroid/widget/LinearLayout;

.field private static exName:Landroid/widget/TextView;

.field private static figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field private static head:Landroid/widget/TextView;

.field private static hint:Landroid/widget/TextView;

.field private static lastPhase:I

.field private static mid:Landroid/widget/LinearLayout;

.field private static next:Landroid/widget/TextView;

.field private static notice:Landroid/widget/TextView;

.field private static phaseStartMs:J

.field private static startKey:Landroid/widget/TextView;

.field private static status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    return-void

    .line 29
    :array_12
    .array-data 8
        0xfa0
        0x1770
        0x2328
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alertActive(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 93
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 94
    if-lt v2, v0, :cond_2c

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, p0, v4

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v2, v3, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_2c

    .line 94
    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    .line 95
    goto :goto_2b
.end method

.method private static build(Landroid/app/Activity;)Z
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, -0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 118
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 121
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoHints$Open;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AutoHints$Open;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 124
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 125
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    .line 126
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 127
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const-string v3, "\u0410\u0432\u0442\u043e \u203a"

    const-string v4, "Auto \u203a"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    .line 134
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 135
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    .line 136
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    const v3, -0xedebe6

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    new-instance v2, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 139
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    invoke-virtual {v2, v4, v5, v9, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 140
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42d00000    # 104.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 144
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 146
    const-string v3, ""

    const/high16 v4, 0x41a80000    # 21.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    .line 147
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 148
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    .line 150
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const-string v3, ""

    const/high16 v4, 0x41680000    # 14.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    .line 152
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    .line 154
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const-string v2, ""

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->startKey:Landroid/widget/TextView;

    .line 158
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->startKey:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->startKey:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoHints$Start;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AutoHints$Start;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->startKey:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 163
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->startKey:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    .line 167
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

    .line 168
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :try_start_1dd
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 172
    new-instance v3, Lcom/isaigu/gymapp/ai/FloatCard;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    const-string v5, "auto_hints"

    const/high16 v6, 0x440c0000    # 560.0f

    .line 173
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/FloatCard;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 174
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 175
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 176
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 177
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 178
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 180
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 181
    if-nez v2, :cond_22f

    .line 182
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 203
    :goto_22e
    return v0

    .line 185
    :cond_22f
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    const/16 v4, 0x31

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 188
    const/high16 v5, 0x440c0000    # 560.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 189
    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 190
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 191
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 193
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x20

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 197
    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 198
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/ai/FloatCard;->attach(Landroid/view/Window;)V
    :try_end_27e
    .catch Ljava/lang/Throwable; {:try_start_1dd .. :try_end_27e} :catch_280

    move v0, v1

    .line 199
    goto :goto_22e

    .line 200
    :catch_280
    move-exception v1

    .line 201
    const-string v2, "AutoHints.build"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    goto :goto_22e
.end method

.method static hide()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 103
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 105
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_12

    .line 109
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 110
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 112
    return-void

    .line 106
    :catch_12
    move-exception v0

    goto :goto_a
.end method

.method static isShowing()Z
    .registers 1

    .prologue
    .line 99
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

.method static nextSoon(Lcom/isaigu/gymapp/ai/AutoEngine;)Z
    .registers 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getNextExercise()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetLeftS()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static refresh()V
    .registers 4

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_59

    if-eqz v1, :cond_59

    .line 59
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_59

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_59

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v0

    if-nez v0, :cond_59

    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->ownsAuto()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 62
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoHints;->alertActive(J)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoHints;->waits(Lcom/isaigu/gymapp/ai/AutoEngine;)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoHints;->nextSoon(Lcom/isaigu/gymapp/ai/AutoEngine;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_52
    const/4 v0, 0x1

    .line 63
    :goto_53
    if-nez v0, :cond_5b

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 77
    :cond_58
    :goto_58
    return-void

    .line 62
    :cond_59
    const/4 v0, 0x0

    goto :goto_53

    .line 67
    :cond_5b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_67

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 68
    :cond_67
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoHints;->build(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 73
    :cond_7d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHints;->update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_58

    .line 74
    :catch_85
    move-exception v0

    .line 75
    const-string v1, "AutoHints.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58
.end method

.method private static update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    .registers 18

    .prologue
    .line 208
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 209
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v5

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v6

    .line 211
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 212
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    if-eq v0, v1, :cond_21

    .line 213
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 214
    sput-wide p1, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    .line 216
    :cond_21
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

    if-eqz v6, :cond_19d

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v3, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
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

    .line 216
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const-string v0, ""

    .line 221
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 222
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v1, :cond_1ab

    .line 223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isResumeWaiting()Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 224
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v1, "HR is down \u2014 Resume in Auto"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_8f
    :goto_8f
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->startKey:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v7

    .line 248
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    if-nez v7, :cond_aa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_aa

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHints;->nextSoon(Lcom/isaigu/gymapp/ai/AutoEngine;)Z

    move-result v1

    if-eqz v1, :cond_26e

    :cond_aa
    const/4 v1, 0x0

    :goto_ab
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_272

    const/4 v0, 0x0

    :goto_bc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v8

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v0, :cond_d0

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v0, :cond_276

    :cond_d0
    const/4 v0, 0x1

    .line 256
    :goto_d1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v2

    .line 257
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    .line 258
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v9

    if-eqz v9, :cond_279

    .line 259
    const/4 v1, 0x0

    .line 265
    :cond_e0
    :goto_e0
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    if-nez v7, :cond_e6

    if-eqz v8, :cond_2ad

    :cond_e6
    if-eqz v1, :cond_2ad

    const/4 v2, 0x0

    :goto_e9
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    if-eqz v1, :cond_104

    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 268
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v2, :cond_2b1

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_f8
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 269
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 272
    :cond_104
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v3

    .line 273
    if-eqz v6, :cond_2b4

    const-string v2, "WARMUP"

    iget-object v9, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b4

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-nez v2, :cond_2b4

    iget-boolean v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v2, :cond_2b4

    sget-wide v10, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    sub-long v10, p1, v10

    const-wide/16 v12, 0x61a8

    cmp-long v2, v10, v12

    if-gez v2, :cond_2b4

    .line 274
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    const/4 v6, 0x2

    if-gt v2, v6, :cond_2b4

    const/4 v2, 0x1

    .line 275
    :goto_130
    if-eqz v2, :cond_14d

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCues;->feeling(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    :cond_14d
    if-eqz v8, :cond_3c9

    if-eqz v1, :cond_3c9

    .line 280
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2b7

    const-string v2, "\u2192  "

    :goto_15c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    if-eqz v0, :cond_2bb

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->howSteps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_175
    array-length v1, v0

    if-lez v1, :cond_3bc

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    const/4 v1, 0x0

    :goto_17e
    array-length v2, v0

    if-ge v1, v2, :cond_2c4

    .line 286
    if-lez v1, :cond_2c0

    const-string v2, "\n"

    :goto_185
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v0, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    .line 216
    :cond_19d
    const-string v0, ""

    goto/16 :goto_42

    .line 225
    :cond_1a1
    const-string v0, "\u041f\u0430\u0443\u0437\u0430: \u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u043f\u043e\u0447\u0438\u043d\u0438"

    const-string v1, "Paused: HR high \u2014 rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 226
    :cond_1ab
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v1, :cond_1b9

    .line 227
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u201e\u25b6\u201c \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v1, "Paused \u2014 \u25b6 resumes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 228
    :cond_1b9
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v1, :cond_245

    .line 229
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 231
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u2014 \u043b\u0435\u0433\u043d\u0438 / \u0441\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e"

    const-string v1, "Recovery next \u2014 get comfortable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 233
    :cond_1d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 "

    const-string v7, "Rest "

    .line 232
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestS(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    if-lez v0, :cond_218

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 \u0441\u0442\u0430\u0440\u0442 \u0441\u043b\u0435\u0434 "

    const-string v8, " \u00b7 start in "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v8, v0

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_20e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 234
    :cond_218
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v0

    if-eqz v0, :cond_23c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0447\u0430\u043a\u0430 \u043f\u0443\u043b\u0441\u0430 \u2264 "

    const-string v7, " \u00b7 waits for HR \u2264 "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestHrLimit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20e

    .line 235
    :cond_23c
    const-string v0, " \u00b7 \u0433\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0441\u0442\u0430\u0440\u0442"

    const-string v3, " \u00b7 ready to start"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20e

    .line 236
    :cond_245
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v1, :cond_8f

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0421\u0442\u0430\u0440\u0442 \u0441\u043b\u0435\u0434 "

    const-string v3, "Start in "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCountdownLeftS(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 248
    :cond_26e
    const/16 v1, 0x8

    goto/16 :goto_ab

    .line 250
    :cond_272
    const/16 v0, 0x8

    goto/16 :goto_bc

    .line 255
    :cond_276
    const/4 v0, 0x0

    goto/16 :goto_d1

    .line 260
    :cond_279
    if-eqz v2, :cond_e0

    if-ltz v3, :cond_e0

    iget-object v9, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v3, v9, :cond_e0

    iget-object v9, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_e0

    iget-object v9, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v9, v9, v3

    array-length v9, v9

    if-lez v9, :cond_e0

    .line 261
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 262
    if-eqz v8, :cond_29b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e0

    .line 263
    :cond_29b
    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    sub-long v2, p1, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    const-wide/16 v10, 0xc

    div-long/2addr v2, v10

    array-length v9, v1

    int-to-long v10, v9

    rem-long/2addr v2, v10

    long-to-int v2, v2

    aget-object v1, v1, v2

    goto/16 :goto_e0

    .line 265
    :cond_2ad
    const/16 v2, 0x8

    goto/16 :goto_e9

    .line 268
    :cond_2b1
    const/4 v2, 0x0

    goto/16 :goto_f8

    .line 274
    :cond_2b4
    const/4 v2, 0x0

    goto/16 :goto_130

    .line 280
    :cond_2b7
    const-string v2, ""

    goto/16 :goto_15c

    .line 282
    :cond_2bb
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto/16 :goto_175

    .line 286
    :cond_2c0
    const-string v2, ""

    goto/16 :goto_185

    .line 288
    :cond_2c4
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_2cd
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_409

    const/4 v0, 0x0

    :goto_2dc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_40d

    const/4 v0, 0x0

    :goto_2ee
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    invoke-static {v5, v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoCues;->next(Lcom/isaigu/gymapp/ai/AutoModel$Plan;ID)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getNextExercise()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHints;->nextSoon(Lcom/isaigu/gymapp/ai/AutoEngine;)Z

    move-result v2

    if-eqz v2, :cond_324

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2192  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_411

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_324
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    if-nez v7, :cond_335

    const-string v2, "\u2192"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41b

    :cond_335
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41b

    const/4 v0, 0x0

    :goto_33c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 312
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v0

    .line 313
    if-eqz v3, :cond_41f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_41f

    sub-long v0, p1, v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v6, v2, v5

    cmp-long v0, v0, v6

    if-gez v0, :cond_41f

    const/4 v0, 0x1

    move v2, v0

    .line 314
    :goto_369
    if-eqz v2, :cond_3b3

    .line 315
    const/4 v0, 0x2

    if-ne v5, v0, :cond_423

    const-string v0, "\u26d4 "

    move-object v1, v0

    .line 316
    :goto_371
    const/4 v0, 0x2

    if-ne v5, v0, :cond_430

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 317
    :goto_376
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

    .line 318
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/16 v3, 0x22

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x77

    .line 320
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 319
    invoke-static {v3, v5, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_3b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    if-eqz v2, :cond_43b

    const/4 v0, 0x0

    :goto_3b8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    return-void

    .line 290
    :cond_3bc
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    if-eqz v7, :cond_3c6

    move-object v0, v3

    :goto_3c1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2cd

    :cond_3c6
    const-string v0, ""

    goto :goto_3c1

    .line 292
    :cond_3c9
    if-eqz v7, :cond_3f6

    if-eqz v1, :cond_3f6

    .line 293
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043f\u0440\u0438\u043c\u0435\u0440 \u00b7 "

    const-string v6, "example \u00b7 "

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2cd

    .line 296
    :cond_3f6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    if-eqz v7, :cond_406

    :goto_3fa
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2cd

    .line 296
    :cond_406
    const-string v3, ""

    goto :goto_3fa

    .line 299
    :cond_409
    const/16 v0, 0x8

    goto/16 :goto_2dc

    .line 300
    :cond_40d
    const/16 v0, 0x8

    goto/16 :goto_2ee

    .line 305
    :cond_411
    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31c

    .line 308
    :cond_41b
    const/16 v0, 0x8

    goto/16 :goto_33c

    .line 313
    :cond_41f
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_369

    .line 315
    :cond_423
    const/4 v0, 0x1

    if-ne v5, v0, :cond_42b

    const-string v0, "\u26a0 "

    move-object v1, v0

    goto/16 :goto_371

    :cond_42b
    const-string v0, "\u2713 "

    move-object v1, v0

    goto/16 :goto_371

    .line 316
    :cond_430
    const/4 v0, 0x1

    if-ne v5, v0, :cond_437

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_376

    :cond_437
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_376

    .line 322
    :cond_43b
    const/16 v0, 0x8

    goto/16 :goto_3b8
.end method

.method static waits(Lcom/isaigu/gymapp/ai/AutoEngine;)Z
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
