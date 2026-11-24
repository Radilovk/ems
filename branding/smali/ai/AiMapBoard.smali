.class public final Lcom/isaigu/gymapp/ai/AiMapBoard;
.super Ljava/lang/Object;
.source "AiMapBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiMapBoard$Go;,
        Lcom/isaigu/gymapp/ai/AiMapBoard$Stop;
    }
.end annotation


# static fields
.field private static clock:Landroid/widget/TextView;

.field private static go:Landroid/widget/TextView;

.field private static how:Landroid/widget/TextView;

.field private static left:Landroid/widget/TextView;

.field private static line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

.field private static list:Landroid/widget/LinearLayout;

.field private static name:Landroid/widget/TextView;

.field private static next:Landroid/widget/TextView;

.field private static setLine:Landroid/widget/TextView;

.field private static shownIdx:I

.field private static title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->shownIdx:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blockLength(Lcom/isaigu/gymapp/ai/Workout$Block;)I
    .registers 3

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 14

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/4 v10, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 41
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->shownIdx:I

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 46
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 48
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    const-string v3, "\u2726 AI"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->title:Landroid/widget/TextView;

    .line 52
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->title:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 54
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 55
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 56
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->left:Landroid/widget/TextView;

    .line 58
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->left:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
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

    invoke-static {p0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->go:Landroid/widget/TextView;

    .line 60
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->go:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiMapBoard$Go;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiMapBoard$Go;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x430c0000    # 140.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 63
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->go:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u25a0  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0421\u0442\u043e\u043f"

    const-string v5, "Stop"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 65
    new-instance v4, Lcom/isaigu/gymapp/ai/AiMapBoard$Stop;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiMapBoard$Stop;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 68
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 72
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 74
    const-string v4, ""

    const/high16 v5, 0x41f00000    # 30.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    .line 75
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 76
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const-string v4, ""

    const/high16 v5, 0x41880000    # 17.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->how:Landroid/widget/TextView;

    .line 78
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->how:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 79
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->how:Landroid/widget/TextView;

    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const-string v4, ""

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    .line 81
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 83
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v7, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 86
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    const-string v4, ""

    const/high16 v5, 0x42580000    # 54.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    .line 88
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    const-string v4, ""

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->setLine:Landroid/widget/TextView;

    .line 92
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->setLine:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->setLine:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    const v3, -0xedebe6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v3, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->map()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_1ff

    .line 104
    sget-object v4, Lcom/isaigu/gymapp/ai/AiMapBoard;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v4, v3, v7}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 106
    :cond_1ff
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3fd9999a    # 1.7f

    invoke-direct {v2, v7, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 112
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 113
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v3, "The workout"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->list:Landroid/widget/LinearLayout;

    .line 116
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 119
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiMapBoard;->update()V

    .line 124
    return-void
.end method

.method private static fillList(Lcom/isaigu/gymapp/ai/Workout;I)V
    .registers 20

    .prologue
    .line 183
    sget-object v2, Lcom/isaigu/gymapp/ai/AiMapBoard;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 184
    sget-object v2, Lcom/isaigu/gymapp/ai/AiMapBoard;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 185
    if-ltz p1, :cond_7e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_7e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/Workout$Block;

    move-object v3, v2

    .line 186
    :goto_26
    if-eqz v3, :cond_81

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v2

    if-nez v2, :cond_81

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v2

    .line 187
    :goto_32
    if-eqz v3, :cond_1c6

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 188
    add-int/lit8 v2, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->firstExercise(Lcom/isaigu/gymapp/ai/Workout;I)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_83

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v2

    :goto_48
    move-object v4, v2

    .line 191
    :goto_49
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    if-ltz p1, :cond_85

    const/4 v2, 0x1

    .line 193
    :goto_51
    const/4 v3, 0x0

    move v5, v3

    move v6, v2

    :goto_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_1c2

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 195
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v3

    if-nez v3, :cond_197

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    move v3, v6

    .line 193
    :goto_79
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v3

    goto :goto_54

    .line 185
    :cond_7e
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_26

    .line 186
    :cond_81
    const/4 v2, 0x0

    goto :goto_32

    .line 189
    :cond_83
    const/4 v2, 0x0

    goto :goto_48

    .line 192
    :cond_85
    const/4 v2, 0x0

    goto :goto_51

    .line 198
    :cond_87
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v11

    .line 199
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 201
    if-eqz v8, :cond_95

    .line 202
    const/4 v6, 0x0

    .line 204
    :cond_95
    const/4 v3, 0x0

    .line 205
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v3

    :goto_9f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 206
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v13

    if-nez v13, :cond_1c3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 207
    add-int/lit8 v7, v7, 0x1

    move v3, v7

    :goto_be
    move v7, v3

    .line 209
    goto :goto_9f

    .line 210
    :cond_c0
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 211
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v9, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x41400000    # 12.0f

    invoke-static {v9, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v9, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v12, v3, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 212
    if-eqz v8, :cond_ff

    .line 213
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v13, 0x26

    invoke-static {v3, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v9, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v15, 0x40000000    # 2.0f

    .line 214
    invoke-static {v9, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v15

    .line 213
    invoke-static {v3, v13, v14, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_ff
    if-eqz v6, :cond_19a

    if-ltz p1, :cond_19a

    const/4 v3, 0x1

    .line 217
    :goto_104
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_19d

    const-string v8, "\u2713  "

    :goto_10d
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v11, 0x41800000    # 16.0f

    .line 218
    if-eqz v3, :cond_1a7

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_11f
    const/4 v13, 0x1

    .line 217
    invoke-static {v9, v8, v11, v3, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 219
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 220
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 221
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->blockLength(Lcom/isaigu/gymapp/ai/Workout$Block;)I

    move-result v3

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    if-le v7, v2, :cond_1ab

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u00d7 "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14f
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v2, 0x78

    if-lt v3, v2, :cond_1ae

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v14, v3

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v14, v14, v16

    .line 223
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d"

    const-string v8, " min"

    .line 224
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_179
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    .line 223
    invoke-static {v9, v2, v3, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    sget-object v2, Lcom/isaigu/gymapp/ai/AiMapBoard;->list:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_197
    move v3, v6

    goto/16 :goto_79

    .line 216
    :cond_19a
    const/4 v3, 0x0

    goto/16 :goto_104

    .line 217
    :cond_19d
    if-eqz v8, :cond_1a3

    const-string v8, "\u25b6  "

    goto/16 :goto_10d

    :cond_1a3
    const-string v8, ""

    goto/16 :goto_10d

    .line 218
    :cond_1a7
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_11f

    .line 223
    :cond_1ab
    const-string v2, ""

    goto :goto_14f

    .line 224
    :cond_1ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_179

    .line 227
    :cond_1c2
    return-void

    :cond_1c3
    move v3, v7

    goto/16 :goto_be

    :cond_1c6
    move-object v4, v2

    goto/16 :goto_49
.end method

.method private static firstExercise(Lcom/isaigu/gymapp/ai/Workout;I)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 4

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 249
    :goto_24
    return-object v0

    .line 244
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 249
    :cond_29
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private static firstOther(Lcom/isaigu/gymapp/ai/Workout;ILjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 6

    .prologue
    .line 253
    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 255
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 259
    :goto_28
    return-object v0

    .line 253
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 259
    :cond_2d
    const/4 v0, 0x0

    goto :goto_28
.end method

.method static forget()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->title:Landroid/widget/TextView;

    .line 128
    sput-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    .line 129
    sput-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->list:Landroid/widget/LinearLayout;

    .line 130
    sput-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 131
    return-void
.end method

.method static isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z
    .registers 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->REST_LABEL:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 236
    :cond_1c
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "Impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static setOf(Lcom/isaigu/gymapp/ai/Workout;I)[I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v5

    move v1, v2

    move v3, v2

    move v4, v2

    .line 267
    :goto_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 269
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 270
    add-int/lit8 v0, v3, 0x1

    .line 271
    if-gt v1, p1, :cond_43

    move v3, v0

    move v4, v0

    .line 267
    :cond_36
    :goto_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 276
    :cond_3a
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v4, v0, v2

    const/4 v1, 0x1

    aput v3, v0, v1

    return-object v0

    :cond_43
    move v3, v0

    goto :goto_36
.end method

.method static update()V
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 179
    :cond_8
    :goto_8
    return-void

    .line 138
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->map()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v4

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->clock()Lcom/isaigu/gymapp/ai/MapClock;

    move-result-object v5

    .line 140
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 143
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->title:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v2

    .line 145
    sget-object v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_c8

    move v0, v1

    :goto_25
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    if-eqz v2, :cond_cc

    const/4 v0, -0x1

    move v3, v0

    .line 147
    :goto_2c
    if-eqz v2, :cond_d3

    const/4 v0, 0x0

    .line 148
    :goto_2f
    sget-object v6, Lcom/isaigu/gymapp/ai/AiMapBoard;->left:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    const-string v9, "left "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    sget-object v6, Lcom/isaigu/gymapp/ai/AiMapBoard;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 150
    if-eqz v2, :cond_dc

    .line 151
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v5, "Raise the strength"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->how:Landroid/widget/TextView;

    const-string v2, "\u0421 + \u0434\u043e \u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 (6\u20137 \u043e\u0442 10) \u2014 \u043f\u043e\u0441\u043b\u0435 \u25b6 \u0421\u0442\u0430\u0440\u0442. \u0418\u043b\u0438 \u043a\u0430\u0436\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u0441\u0442\u0430\u0440\u0442\u201c."

    const-string v5, "With + to strong but pleasant (6\u20137 of 10) \u2014 then \u25b6 Start. Or say \u201cTrainer, start\u201d."

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    const-string v2, "\u2014"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->setLine:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/ai/AiMapBoard;->firstExercise(Lcom/isaigu/gymapp/ai/Workout;I)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    if-eqz v0, :cond_d9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u044a\u0440\u0432\u043e: "

    const-string v6, "First: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ba
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_bd
    :goto_bd
    sget v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->shownIdx:I

    if-eq v3, v0, :cond_8

    .line 176
    sput v3, Lcom/isaigu/gymapp/ai/AiMapBoard;->shownIdx:I

    .line 177
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->fillList(Lcom/isaigu/gymapp/ai/Workout;I)V

    goto/16 :goto_8

    .line 145
    :cond_c8
    const/16 v0, 0x8

    goto/16 :goto_25

    .line 146
    :cond_cc
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v0

    move v3, v0

    goto/16 :goto_2c

    .line 147
    :cond_d3
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    goto/16 :goto_2f

    .line 157
    :cond_d9
    const-string v0, ""

    goto :goto_ba

    .line 158
    :cond_dc
    if-eqz v0, :cond_152

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 159
    sget-object v1, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiWorkout;->REST_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget-object v1, Lcom/isaigu/gymapp/ai/AiMapBoard;->how:Landroid/widget/TextView;

    const-string v2, "\u041b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0437\u0430 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u2014 \u0434\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u0441\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e."

    const-string v6, "A light impulse to let go \u2014 breathe, move gently on the spot."

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget-object v2, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_149

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->restLength()D

    move-result-wide v0

    :goto_104
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->getBlockS()D

    move-result-wide v6

    sub-double/2addr v0, v6

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget-object v0, Lcom/isaigu/gymapp/ai/AiMapBoard;->setLine:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    add-int/lit8 v0, v3, 0x1

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->firstExercise(Lcom/isaigu/gymapp/ai/Workout;I)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    if-eqz v0, :cond_14f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v6, "Next: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_144
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_bd

    .line 162
    :cond_149
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-double v0, v0

    goto :goto_104

    .line 165
    :cond_14f
    const-string v0, ""

    goto :goto_144

    .line 166
    :cond_152
    if-eqz v0, :cond_bd

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/AiMapBoard;->name:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget-object v6, Lcom/isaigu/gymapp/ai/AiMapBoard;->how:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    if-eqz v2, :cond_1e9

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    :goto_165
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AiMapBoard;->setOf(Lcom/isaigu/gymapp/ai/Workout;I)[I

    move-result-object v2

    .line 170
    sget-object v6, Lcom/isaigu/gymapp/ai/AiMapBoard;->clock:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->blockLength(Lcom/isaigu/gymapp/ai/Workout$Block;)I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapClock;->getBlockS()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-double v8, v5

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    sget-object v5, Lcom/isaigu/gymapp/ai/AiMapBoard;->setLine:Landroid/widget/TextView;

    aget v6, v2, v14

    if-le v6, v14, :cond_1ed

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0441\u0435\u0440\u0438\u044f "

    const-string v8, "set "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v1, v2, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u043e\u0442 "

    const-string v7, " of "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1b8
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->firstOther(Lcom/isaigu/gymapp/ai/Workout;ILjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/isaigu/gymapp/ai/AiMapBoard;->next:Landroid/widget/TextView;

    if-eqz v0, :cond_1f0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v6, "Next: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_bd

    .line 168
    :cond_1e9
    const-string v2, ""

    goto/16 :goto_165

    .line 171
    :cond_1ed
    const-string v1, ""

    goto :goto_1b8

    .line 173
    :cond_1f0
    const-string v0, ""

    goto :goto_1e4
.end method
