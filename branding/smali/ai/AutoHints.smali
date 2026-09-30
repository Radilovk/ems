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
.field private static final FEELING_MS:J = 0x61a8L

.field private static final NOTICE_MS:[J

.field private static final WIDTH_DP:I = 0x280

.field private static card:Landroid/widget/LinearLayout;

.field private static count:Landroid/widget/TextView;

.field private static cue:Landroid/widget/TextView;

.field private static dialog:Landroid/app/Dialog;

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
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_e

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    .line 42
    sput v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 44
    sput v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    return-void

    .line 28
    :array_e
    .array-data 8
        0xfa0
        0x1770
        0x2328
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alertActive(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    const/4 v2, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 75
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 76
    if-lt v2, v0, :cond_2c

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, p0, v4

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v2, v3, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_2c

    .line 76
    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    .line 77
    goto :goto_2b
.end method

.method private static build(Landroid/app/Activity;)Z
    .registers 11

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 101
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 102
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 103
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoHints$Open;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AutoHints$Open;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 106
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    .line 107
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const-string v3, "\u0410\u0432\u0442\u043e \u203a"

    const-string v4, "Auto \u203a"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    .line 113
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 114
    new-instance v2, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 115
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 116
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 118
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const-string v2, ""

    const/high16 v3, 0x41d00000    # 26.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    .line 120
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const-string v2, ""

    const/high16 v3, 0x41f00000    # 30.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    .line 122
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
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

    .line 124
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    .line 127
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const-string v2, ""

    const/high16 v3, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v2, v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    .line 129
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    .line 131
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :try_start_155
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 136
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 137
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 138
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 139
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 140
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 141
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 142
    if-nez v2, :cond_186

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 163
    :goto_185
    return v0

    .line 146
    :cond_186
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 149
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

    .line 150
    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 151
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 152
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 154
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x20

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 158
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1d2
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_1d2} :catch_1d4

    move v0, v1

    .line 159
    goto :goto_185

    .line 160
    :catch_1d4
    move-exception v1

    .line 161
    const-string v2, "AutoHints.build"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    goto :goto_185
.end method

.method static hide()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    .line 87
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_14

    .line 91
    :cond_b
    :goto_b
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    .line 92
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    .line 93
    sput v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 94
    sput v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    .line 95
    return-void

    .line 88
    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method static isShowing()Z
    .registers 1

    .prologue
    .line 81
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
    .line 51
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_41

    if-eqz v1, :cond_41

    .line 53
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_41

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_41

    .line 54
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 55
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

    .line 56
    :goto_3b
    if-nez v0, :cond_43

    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 70
    :cond_40
    :goto_40
    return-void

    .line 55
    :cond_41
    const/4 v0, 0x0

    goto :goto_3b

    .line 60
    :cond_43
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 61
    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoHints;->build(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 66
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHints;->update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_40

    .line 67
    :catch_6d
    move-exception v0

    .line 68
    const-string v1, "AutoHints.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method private static update(Lcom/isaigu/gymapp/ai/AutoEngine;J)V
    .registers 18

    .prologue
    .line 168
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 169
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v7

    .line 170
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v8

    .line 171
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v9

    .line 172
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    if-eq v0, v1, :cond_22

    .line 173
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastPhase:I

    .line 174
    sput-wide p1, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    .line 176
    :cond_22
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->head:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v8, :cond_296

    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
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

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v10

    .line 183
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v10, v0, :cond_2a4

    .line 184
    const/4 v3, 0x2

    .line 185
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isResumeWaiting()Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 186
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v2, "HR is down \u2014 Resume in Auto"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_90
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v11

    .line 208
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->mid:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_303

    const/4 v2, 0x0

    :goto_99
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    if-lez v1, :cond_307

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    sget v0, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    if-eq v3, v0, :cond_104

    .line 212
    sput v3, Lcom/isaigu/gymapp/ai/AutoHints;->lastTone:I

    .line 213
    if-nez v3, :cond_30b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 214
    :goto_c5
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->card:Landroid/widget/LinearLayout;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v4, 0x3e0f5c29    # 0.14f

    invoke-static {v2, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/high16 v4, 0x41900000    # 18.0f

    .line 215
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 214
    invoke-static {v2, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->cue:Landroid/widget/TextView;

    if-nez v3, :cond_317

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_ea
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 218
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 219
    const/16 v2, 0x44

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 220
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoHints;->count:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_104
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v1

    .line 225
    const/4 v0, 0x0

    .line 226
    if-eqz v9, :cond_31b

    const-wide/16 v2, 0x0

    iget-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v4, v2

    .line 227
    :goto_11d
    if-eqz v1, :cond_13c

    if-eqz v8, :cond_13c

    if-eqz v9, :cond_13c

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v10, v2, :cond_13c

    .line 228
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v12

    sub-double/2addr v12, v4

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget v10, v8, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    invoke-virtual {v1, v0, v2, v3, v10}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->at(IDI)Lcom/isaigu/gymapp/ai/AutoTemplates$At;

    move-result-object v0

    .line 230
    :cond_13c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v11, :cond_320

    if-eqz v0, :cond_320

    const/4 v1, 0x0

    :goto_143
    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 231
    if-eqz v0, :cond_15a

    .line 232
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    iget-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iget v10, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget v9, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-virtual {v1, v2, v3, v10, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 236
    :cond_15a
    if-eqz v0, :cond_324

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    :goto_162
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    if-eqz v0, :cond_32a

    const/high16 v2, 0x41a00000    # 20.0f

    :goto_168
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 238
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    if-eqz v0, :cond_32e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_171
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    if-eqz v8, :cond_332

    const-string v2, "WARMUP"

    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_332

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-nez v2, :cond_332

    iget-boolean v2, v8, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v2, :cond_332

    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoHints;->phaseStartMs:J

    sub-long v2, p1, v2

    const-wide/16 v8, 0x61a8

    cmp-long v2, v2, v8

    if-gez v2, :cond_332

    .line 240
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_332

    const/4 v2, 0x1

    .line 241
    :goto_19c
    if-eqz v2, :cond_1b9

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCues;->feeling(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_1b9
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->hint:Landroid/widget/TextView;

    if-eqz v11, :cond_335

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_335

    const/4 v1, 0x0

    :goto_1c9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    invoke-static {v7, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoCues;->next(Lcom/isaigu/gymapp/ai/AutoModel$Plan;ID)Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v0, :cond_35d

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    if-eqz v2, :cond_35d

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->remainingS:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_35d

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v3, "Next: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_206
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->next:Landroid/widget/TextView;

    if-eqz v11, :cond_339

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_339

    const/4 v0, 0x0

    :goto_216
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeKind()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v0

    .line 257
    if-eqz v3, :cond_33d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33d

    sub-long v0, p1, v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoHints;->NOTICE_MS:[J

    aget-wide v8, v2, v4

    cmp-long v0, v0, v8

    if-gez v0, :cond_33d

    const/4 v0, 0x1

    move v2, v0

    .line 258
    :goto_243
    if-eqz v2, :cond_28d

    .line 259
    const/4 v0, 0x2

    if-ne v4, v0, :cond_341

    const-string v0, "\u26d4 "

    move-object v1, v0

    .line 260
    :goto_24b
    const/4 v0, 0x2

    if-ne v4, v0, :cond_34e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 261
    :goto_250
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    const/16 v3, 0x22

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x77

    .line 264
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 263
    invoke-static {v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_28d
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoHints;->notice:Landroid/widget/TextView;

    if-eqz v2, :cond_359

    const/4 v0, 0x0

    :goto_292
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    return-void

    .line 176
    :cond_296
    const-string v0, ""

    goto/16 :goto_43

    .line 187
    :cond_29a
    const-string v0, "\u041f\u0430\u0443\u0437\u0430: \u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u0434\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e"

    const-string v2, "Paused: HR high \u2014 breathe calmly"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_90

    .line 188
    :cond_2a4
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v10, v0, :cond_2b3

    .line 189
    const/4 v3, 0x2

    .line 190
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u201e\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u201c \u0432 \u0410\u0432\u0442\u043e"

    const-string v2, "Paused \u2014 Resume in Auto"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_90

    .line 191
    :cond_2b3
    if-eqz v9, :cond_2fe

    .line 192
    iget-wide v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v4, p1, v0

    .line 193
    iget v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v12, v0, v2

    .line 194
    cmp-long v0, v4, v12

    if-gez v0, :cond_2e5

    .line 195
    iget-wide v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2e3

    const/4 v0, 0x0

    .line 196
    :goto_2cd
    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCues;->onCue(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v2

    .line 197
    sub-long v4, v12, v4

    long-to-double v4, v4

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    move v3, v0

    :goto_2e0
    move-object v0, v2

    .line 203
    goto/16 :goto_90

    .line 195
    :cond_2e3
    const/4 v0, 0x1

    goto :goto_2cd

    .line 199
    :cond_2e5
    const/4 v3, 0x1

    .line 200
    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCues;->offCue(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    goto :goto_2e0

    .line 204
    :cond_2fe
    const/4 v3, 0x1

    .line 205
    const-string v0, ""

    goto/16 :goto_90

    .line 208
    :cond_303
    const/16 v2, 0x8

    goto/16 :goto_99

    .line 210
    :cond_307
    const-string v0, ""

    goto/16 :goto_b8

    .line 213
    :cond_30b
    const/4 v0, 0x1

    if-ne v3, v0, :cond_313

    const v0, -0xbd5a0b

    goto/16 :goto_c5

    :cond_313
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_c5

    .line 216
    :cond_317
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_ea

    .line 226
    :cond_31b
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto/16 :goto_11d

    .line 230
    :cond_320
    const/16 v1, 0x8

    goto/16 :goto_143

    .line 236
    :cond_324
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_162

    .line 237
    :cond_32a
    const/high16 v2, 0x41700000    # 15.0f

    goto/16 :goto_168

    .line 238
    :cond_32e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_171

    .line 240
    :cond_332
    const/4 v2, 0x0

    goto/16 :goto_19c

    .line 245
    :cond_335
    const/16 v1, 0x8

    goto/16 :goto_1c9

    .line 252
    :cond_339
    const/16 v0, 0x8

    goto/16 :goto_216

    .line 257
    :cond_33d
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_243

    .line 259
    :cond_341
    const/4 v0, 0x1

    if-ne v4, v0, :cond_349

    const-string v0, "\u26a0 "

    move-object v1, v0

    goto/16 :goto_24b

    :cond_349
    const-string v0, "\u2713 "

    move-object v1, v0

    goto/16 :goto_24b

    .line 260
    :cond_34e
    const/4 v0, 0x1

    if-ne v4, v0, :cond_355

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_250

    :cond_355
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_250

    .line 266
    :cond_359
    const/16 v0, 0x8

    goto/16 :goto_292

    :cond_35d
    move-object v0, v1

    goto/16 :goto_206
.end method
