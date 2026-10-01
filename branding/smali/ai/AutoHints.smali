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

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    .line 47
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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alertActive(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    const/4 v2, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 79
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 80
    if-lt v2, v0, :cond_2c

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, p0, v4

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v2, v3, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_2c

    .line 80
    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    .line 81
    goto :goto_2b
.end method

.method private static build(Landroid/app/Activity;)Z
    .registers 11

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 103
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 104
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 105
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 107
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoHints$Open;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AutoHints$Open;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 110
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    .line 112
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 113
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const-string v3, "\u0410\u0432\u0442\u043e \u203a"

    const-string v4, "Auto \u203a"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    .line 120
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    .line 122
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    const v3, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    new-instance v2, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 125
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    invoke-virtual {v2, v4, v5, v8, v8}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 126
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

    .line 127
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 130
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 132
    const-string v3, ""

    const/high16 v4, 0x41a80000    # 21.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    .line 133
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    .line 136
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const-string v3, ""

    const/high16 v4, 0x41680000    # 14.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    .line 138
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    .line 140
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

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

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :try_start_19f
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/isaigu/gymapp/ai/FloatCard;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    const-string v5, "auto_hints"

    const/high16 v6, 0x440c0000    # 560.0f

    .line 151
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

    .line 152
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 153
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 154
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 155
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 156
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 157
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 158
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 159
    if-nez v2, :cond_1f1

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 181
    :goto_1f0
    return v0

    .line 163
    :cond_1f1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const/16 v4, 0x31

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 166
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

    .line 167
    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 168
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 169
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 170
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 171
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x20

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 175
    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/ai/FloatCard;->attach(Landroid/view/Window;)V
    :try_end_240
    .catch Ljava/lang/Throwable; {:try_start_19f .. :try_end_240} :catch_242

    move v0, v1

    .line 177
    goto :goto_1f0

    .line 178
    :catch_242
    move-exception v1

    .line 179
    const-string v2, "AutoHints.build"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    goto :goto_1f0
.end method

.method static hide()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 91
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_12

    .line 95
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 96
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 97
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 98
    return-void

    .line 92
    :catch_12
    move-exception v0

    goto :goto_a
.end method

.method static isShowing()Z
    .registers 1

    .prologue
    .line 85
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
    .line 55
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_41

    if-eqz v1, :cond_41

    .line 57
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_41

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_41

    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 59
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

    .line 60
    :goto_3b
    if-nez v0, :cond_43

    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 74
    :cond_40
    :goto_40
    return-void

    .line 59
    :cond_41
    const/4 v0, 0x0

    goto :goto_3b

    .line 64
    :cond_43
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 65
    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoHints;->build(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 70
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHints;->update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_40

    .line 71
    :catch_6d
    move-exception v0

    .line 72
    const-string v1, "AutoHints.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method private static update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    .registers 14

    .prologue
    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 187
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 190
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    if-eq v0, v1, :cond_21

    .line 191
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 192
    sput-wide p1, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    .line 194
    :cond_21
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_23b

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u00b7 \u043e\u0431\u0449\u043e "

    const-string v6, " \u00b7 total "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const-string v0, ""

    .line 199
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 200
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v5, :cond_249

    .line 201
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isResumeWaiting()Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 202
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v1, "HR is down \u2014 Resume in Auto"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_8f
    :goto_8f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v5

    .line 208
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    if-nez v5, :cond_9d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_257

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25b

    const/4 v0, 0x0

    :goto_af
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v6

    .line 216
    if-eqz v1, :cond_e5

    if-ltz v6, :cond_e5

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_e5

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v7, v7, v6

    if-eqz v7, :cond_e5

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v7, v7, v6

    array-length v7, v7

    if-lez v7, :cond_e5

    .line 217
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 218
    sget-wide v6, Lcom/isaigu/gymapp/ai/AutoHints;->EXAMPLE_T0:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    array-length v1, v0

    int-to-long v8, v1

    rem-long/2addr v6, v8

    long-to-int v1, v6

    aget-object v0, v0, v1

    .line 220
    :cond_e5
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoHints;->exBox:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_25f

    if-eqz v0, :cond_25f

    const/4 v1, 0x0

    :goto_ec
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    if-eqz v0, :cond_107

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 223
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v1, :cond_263

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_fb
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 224
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 227
    :cond_107
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v1

    .line 228
    if-eqz v2, :cond_266

    const-string v6, "WARMUP"

    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_266

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v6

    if-nez v6, :cond_266

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v2, :cond_266

    sget-wide v6, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x61a8

    cmp-long v2, v6, v8

    if-gez v2, :cond_266

    .line 229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    const/4 v6, 0x2

    if-gt v2, v6, :cond_266

    const/4 v2, 0x1

    .line 230
    :goto_133
    if-eqz v2, :cond_150

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCues;->feeling(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_150
    if-eqz v5, :cond_269

    if-eqz v0, :cond_269

    .line 235
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u043f\u0440\u0438\u043c\u0435\u0440 \u00b7 "

    const-string v7, "example \u00b7 "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_17b
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_27d

    const/4 v0, 0x0

    :goto_18a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_281

    const/4 v0, 0x0

    :goto_19c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v6

    invoke-static {v4, v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCues;->next(Lcom/isaigu/gymapp/ai/AutoModel$Plan;ID)Ljava/lang/String;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    if-eqz v5, :cond_285

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_285

    const/4 v0, 0x0

    :goto_1bb
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v4

    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v0

    .line 251
    if-eqz v4, :cond_289

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_289

    sub-long v0, p1, v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v6, v2, v5

    cmp-long v0, v0, v6

    if-gez v0, :cond_289

    const/4 v0, 0x1

    move v2, v0

    .line 252
    :goto_1e8
    if-eqz v2, :cond_232

    .line 253
    const/4 v0, 0x2

    if-ne v5, v0, :cond_28d

    const-string v0, "\u26d4 "

    move-object v1, v0

    .line 254
    :goto_1f0
    const/4 v0, 0x2

    if-ne v5, v0, :cond_29a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 255
    :goto_1f5
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/16 v4, 0x22

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x77

    .line 258
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 257
    invoke-static {v4, v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :cond_232
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    if-eqz v2, :cond_2a5

    const/4 v0, 0x0

    :goto_237
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    return-void

    .line 194
    :cond_23b
    const-string v0, ""

    goto/16 :goto_42

    .line 203
    :cond_23f
    const-string v0, "\u041f\u0430\u0443\u0437\u0430: \u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u043f\u043e\u0447\u0438\u043d\u0438"

    const-string v1, "Paused: HR high \u2014 rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 204
    :cond_249
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v5, :cond_8f

    .line 205
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v1, "Paused \u2014 Resume in Auto"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 208
    :cond_257
    const/16 v1, 0x8

    goto/16 :goto_9e

    .line 210
    :cond_25b
    const/16 v0, 0x8

    goto/16 :goto_af

    .line 220
    :cond_25f
    const/16 v1, 0x8

    goto/16 :goto_ec

    .line 223
    :cond_263
    const/4 v1, 0x0

    goto/16 :goto_fb

    .line 229
    :cond_266
    const/4 v2, 0x0

    goto/16 :goto_133

    .line 238
    :cond_269
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->exName:Landroid/widget/TextView;

    if-eqz v5, :cond_27a

    move-object v0, v1

    :goto_26e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17b

    .line 238
    :cond_27a
    const-string v0, ""

    goto :goto_26e

    .line 241
    :cond_27d
    const/16 v0, 0x8

    goto/16 :goto_18a

    .line 242
    :cond_281
    const/16 v0, 0x8

    goto/16 :goto_19c

    .line 246
    :cond_285
    const/16 v0, 0x8

    goto/16 :goto_1bb

    .line 251
    :cond_289
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1e8

    .line 253
    :cond_28d
    const/4 v0, 0x1

    if-ne v5, v0, :cond_295

    const-string v0, "\u26a0 "

    move-object v1, v0

    goto/16 :goto_1f0

    :cond_295
    const-string v0, "\u2713 "

    move-object v1, v0

    goto/16 :goto_1f0

    .line 254
    :cond_29a
    const/4 v0, 0x1

    if-ne v5, v0, :cond_2a1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_1f5

    :cond_2a1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_1f5

    .line 260
    :cond_2a5
    const/16 v0, 0x8

    goto :goto_237
.end method
