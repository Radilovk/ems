.class public final Lcom/isaigu/gymapp/ai/AiChatDrawer;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Frame;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Dismissed;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Close;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Quick;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Key;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Typed;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;,
        Lcom/isaigu/gymapp/ai/AiChatDrawer$Hide;
    }
.end annotation


# static fields
.field private static final HIDE:Ljava/lang/Runnable;

.field static final HIDE_MS:J = 0x2710L

.field private static final MAIN:Landroid/os/Handler;

.field static final W_DP:I = 0x17c

.field private static content:Landroid/widget/LinearLayout;

.field private static dialog:Landroid/app/Dialog;

.field private static field:Landroid/widget/EditText;

.field private static sendBtn:Landroid/widget/TextView;

.field private static typed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->MAIN:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Hide;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Hide;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->HIDE:Ljava/lang/Runnable;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->typed:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 35
    sput-object p0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->HIDE:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->fire(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 35
    sput-object p0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 35
    sput-object p0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$602(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 35
    sput-object p0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static bubble(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiCoach$Turn;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 221
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const-string v1, "\u2713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 222
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v1, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 223
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v4, 0x66

    .line 226
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 225
    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :goto_57
    return-object v0

    .line 229
    :cond_58
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-nez v0, :cond_bb

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->voice:Z

    if-eqz v0, :cond_bb

    .line 230
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83c\udf99  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0433\u043b\u0430\u0441\u043e\u0432\u043e"

    const-string v3, "voice"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 232
    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubbleText(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_57

    .line 238
    :cond_bb
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubbleText(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_57
.end method

.method private static bubbleParams(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiCoach$Turn;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    .line 255
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const-string v2, "\u2713"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    .line 256
    :goto_11
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    if-eqz v0, :cond_27

    const/high16 v2, 0x40c00000    # 6.0f

    :goto_1a
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 259
    if-eqz v0, :cond_2a

    :goto_22
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 260
    return-object v3

    .line 255
    :cond_25
    const/4 v0, 0x0

    goto :goto_11

    .line 258
    :cond_27
    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_1a

    .line 259
    :cond_2a
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_32

    const v1, 0x800003

    goto :goto_22

    :cond_32
    const v1, 0x800005

    goto :goto_22
.end method

.method private static bubbleText(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41100000    # 9.0f

    const/4 v6, 0x0

    .line 242
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 243
    const/high16 v0, 0x439b0000    # 310.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 244
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 247
    if-eqz p2, :cond_6e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    move v1, v0

    .line 248
    :goto_3e
    if-eqz p2, :cond_78

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    :goto_42
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 247
    invoke-static {v1, v3, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 249
    if-eqz p2, :cond_81

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v4, v0, v6

    aput v4, v0, v7

    aput v3, v0, v8

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v4, 0x4

    aput v3, v0, v4

    const/4 v4, 0x5

    aput v3, v0, v4

    const/4 v4, 0x6

    aput v3, v0, v4

    const/4 v4, 0x7

    aput v3, v0, v4

    :goto_67
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 250
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-object v2

    .line 247
    :cond_6e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    move v1, v0

    goto :goto_3e

    .line 248
    :cond_78
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v5, 0x88

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_42

    .line 249
    :cond_81
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v3, v0, v6

    aput v3, v0, v7

    aput v4, v0, v8

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v4, 0x4

    aput v3, v0, v4

    const/4 v4, 0x5

    aput v3, v0, v4

    const/4 v4, 0x6

    aput v3, v0, v4

    const/4 v4, 0x7

    aput v3, v0, v4

    goto :goto_67
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/4 v1, 0x1

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v2, 0x0

    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 116
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 120
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 122
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/4 v3, 0x0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v0, v3, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const-string v0, "\u2726"

    const/high16 v3, 0x41a00000    # 20.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-static {p0, v0, v3, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 124
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v3, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 128
    const-string v0, "AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v3, "AI coach"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v3, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->isOn()Z

    move-result v3

    .line 130
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->state()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_183

    const-string v0, "speaking"

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->state()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    move v0, v1

    .line 131
    :goto_b2
    sget-boolean v6, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v6, :cond_186

    const-string v3, "\u043f\u0438\u0448\u0435\u2026"

    const-string v6, "typing\u2026"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :goto_be
    const/high16 v6, 0x41400000    # 12.0f

    sget-boolean v7, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v7, :cond_c6

    if-eqz v0, :cond_1ce

    :cond_c6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 131
    :goto_c8
    invoke-static {p0, v3, v6, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 136
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 138
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const-string v0, "\u2715"

    const/4 v3, 0x3

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 141
    new-instance v3, Lcom/isaigu/gymapp/ai/AiChatDrawer$Close;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Close;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 149
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 150
    const/16 v0, 0x50

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 151
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v6

    .line 153
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 154
    const-string v0, "\u041f\u0438\u0448\u0438 \u0438\u043b\u0438 \u043a\u0430\u0436\u0438 \u043a\u0430\u043a\u0432\u043e \u0434\u0430 \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u2014 \u201e\u043f\u043e-\u0441\u0438\u043b\u043d\u043e \u043a\u0440\u0430\u043a\u0430\u0442\u0430\u201c, \u201e\u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u201c, \u201e\u043f\u0430\u0443\u0437\u0430\u201c."

    const-string v3, "Write or say what to change \u2014 \u201cstronger legs\u201d, \u201clonger rests\u201d, \u201cpause\u201d."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->note(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 155
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 154
    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :cond_157
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :goto_162
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1d2

    .line 158
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubble(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiCoach$Turn;)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubbleParams(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiCoach$Turn;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_162

    :cond_183
    move v0, v2

    .line 130
    goto/16 :goto_b2

    .line 132
    :cond_186
    if-eqz v0, :cond_1a5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83c\udf99 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u0441\u043b\u0443\u0448\u0430\u2026"

    const-string v7, "listening\u2026"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_be

    .line 133
    :cond_1a5
    if-eqz v3, :cond_1c4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83c\udf99 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v7, "\u201cTrainer, \u2026\u201d is on"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_be

    .line 134
    :cond_1c4
    const-string v3, "\u043e\u043d\u043b\u0430\u0439\u043d"

    const-string v6, "online"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_be

    :cond_1ce
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_c8

    .line 160
    :cond_1d2
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_1f1

    .line 161
    const-string v0, "\u2022 \u2022 \u2022"

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubbleText(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 162
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 165
    const v6, 0x800003

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 166
    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_1f1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 174
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_23d

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_23d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 179
    :goto_21a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v3, :cond_281

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v3, :cond_281

    move v3, v1

    .line 180
    :goto_223
    array-length v6, v0

    move v4, v2

    :goto_225
    if-ge v4, v6, :cond_283

    aget-object v7, v0, v4

    .line 181
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v8

    .line 182
    new-instance v9, Lcom/isaigu/gymapp/ai/AiChatDrawer$Quick;

    invoke-direct {v9, v7}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Quick;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {v5, v8}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_225

    .line 175
    :cond_23d
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v4, "stronger"

    .line 176
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    const-string v4, "softer"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "\u043f\u0430\u0443\u0437\u0430"

    const-string v6, "pause"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v6, "go on"

    .line 177
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "\u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    const-string v6, "longer rests"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "to the recovery"

    .line 178
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_21a

    :cond_281
    move v3, v2

    .line 179
    goto :goto_223

    .line 185
    :cond_283
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 186
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 188
    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 192
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 193
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 194
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 195
    const-string v0, "\u0421\u044a\u043e\u0431\u0449\u0435\u043d\u0438\u0435\u2026"

    const-string v5, "Message\u2026"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 196
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->typed:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 198
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 199
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 200
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 201
    const/16 v0, 0x4001

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 202
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 203
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 205
    new-instance v0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Key;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Key;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 206
    new-instance v0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Typed;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Typed;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->typed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_36e

    const-string v0, "\u27a4"

    :goto_338
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Send;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 212
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    sput-object v4, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    .line 216
    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;

    .line 217
    return-void

    .line 208
    :cond_36e
    const-string v0, "\ud83c\udfa4"

    goto :goto_338
.end method

.method static close()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiChatDrawer;->HIDE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 90
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_1a

    .line 94
    :cond_11
    :goto_11
    sput-object v2, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

    .line 95
    sput-object v2, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    .line 96
    sput-object v2, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    .line 97
    sput-object v2, Lcom/isaigu/gymapp/ai/AiChatDrawer;->sendBtn:Landroid/widget/TextView;

    .line 98
    return-void

    .line 91
    :catch_1a
    move-exception v0

    goto :goto_11
.end method

.method private static fire(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 276
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 285
    :cond_c
    :goto_c
    return-void

    .line 279
    :cond_d
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->typed:Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    if-eqz v0, :cond_1c

    .line 281
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_1c
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 284
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->refresh()V

    goto :goto_c
.end method

.method public static isOpen()Z
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

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

.method private static note(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v3, 0x41900000    # 18.0f

    .line 264
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 265
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 266
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 267
    return-object v0
.end method

.method static open(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    :cond_a
    :goto_a
    return-void

    .line 56
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->touched()V

    goto :goto_a

    .line 60
    :cond_15
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 63
    new-instance v1, Lcom/isaigu/gymapp/ai/AiChatDrawer$Frame;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Frame;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    .line 64
    sget-object v1, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    sget-object v1, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    :try_start_34
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 69
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const v2, 0x800035

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 71
    const/high16 v2, 0x43be0000    # 380.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 72
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 74
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 75
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 76
    const v2, 0x1030056

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_65} :catch_79

    .line 79
    :goto_65
    new-instance v1, Lcom/isaigu/gymapp/ai/AiChatDrawer$Dismissed;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiChatDrawer$Dismissed;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->dialog:Landroid/app/Dialog;

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->refresh()V

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->touched()V

    goto :goto_a

    .line 77
    :catch_79
    move-exception v1

    goto :goto_65
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 111
    :goto_4
    return-void

    .line 105
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 106
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->typed:Ljava/lang/String;

    .line 108
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 109
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiChatDrawer;->content:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->build(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->touched()V

    goto :goto_4
.end method

.method static touched()V
    .registers 2

    .prologue
    .line 272
    sget-object v0, Lcom/isaigu/gymapp/ai/AiChatDrawer;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiChatDrawer;->HIDE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method
