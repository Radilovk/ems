.class public final Lcom/isaigu/gymapp/wearable/SearchPad;
.super Ljava/lang/Object;
.source "SearchPad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/SearchPad$Open;,
        Lcom/isaigu/gymapp/wearable/SearchPad$Close;,
        Lcom/isaigu/gymapp/wearable/SearchPad$Key;,
        Lcom/isaigu/gymapp/wearable/SearchPad$Back;,
        Lcom/isaigu/gymapp/wearable/SearchPad$Press;,
        Lcom/isaigu/gymapp/wearable/SearchPad$Pick;,
        Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;,
        Lcom/isaigu/gymapp/wearable/SearchPad$Remove;
    }
.end annotation


# static fields
.field private static final BG:[[Ljava/lang/String;

.field private static final DEVICES:I = 0x2

.field private static final EN:[[Ljava/lang/String;

.field private static final MAIN:Landroid/os/Handler;

.field private static final NUM:[[Ljava/lang/String;

.field private static final PROGRAMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "xems_search_pad"

.field private static final USERS:I

.field private static english:Z


# instance fields
.field private final et:Landroid/widget/EditText;

.field private final host:Landroid/view/ViewGroup;

.field private keys:Landroid/widget/LinearLayout;

.field private final kind:I

.field private langKey:Landroid/widget/TextView;

.field private matches:Landroid/widget/LinearLayout;

.field private numKey:Landroid/widget/TextView;

.field private numbers:Z

.field private panel:Landroid/widget/FrameLayout;

.field private query:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-array v0, v7, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u044f"

    aput-object v2, v1, v4

    const-string v2, "\u0432"

    aput-object v2, v1, v5

    const-string v2, "\u0435"

    aput-object v2, v1, v6

    const-string v2, "\u0440"

    aput-object v2, v1, v7

    const-string v2, "\u0442"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0443"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u0438"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u043e"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u043f"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0448"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0449"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0430"

    aput-object v2, v1, v4

    const-string v2, "\u0441"

    aput-object v2, v1, v5

    const-string v2, "\u0434"

    aput-object v2, v1, v6

    const-string v2, "\u0444"

    aput-object v2, v1, v7

    const-string v2, "\u0433"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u0445"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0439"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u043a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u043b"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u044e"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0437"

    aput-object v2, v1, v4

    const-string v2, "\u044c"

    aput-object v2, v1, v5

    const-string v2, "\u0446"

    aput-object v2, v1, v6

    const-string v2, "\u0436"

    aput-object v2, v1, v7

    const-string v2, "\u0431"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u043d"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u043c"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u0447"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->BG:[[Ljava/lang/String;

    .line 49
    new-array v0, v7, [[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v4

    const-string v2, "w"

    aput-object v2, v1, v5

    const-string v2, "e"

    aput-object v2, v1, v6

    const-string v2, "r"

    aput-object v2, v1, v7

    const-string v2, "t"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "y"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "u"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "p"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v4

    const-string v2, "s"

    aput-object v2, v1, v5

    const-string v2, "d"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    const-string v2, "g"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "h"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "j"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "k"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "l"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "z"

    aput-object v2, v1, v4

    const-string v2, "x"

    aput-object v2, v1, v5

    const-string v2, "c"

    aput-object v2, v1, v6

    const-string v2, "v"

    aput-object v2, v1, v7

    const-string v2, "b"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "n"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "m"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->EN:[[Ljava/lang/String;

    .line 53
    new-array v0, v7, [[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v7

    const-string v2, "5"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "-"

    aput-object v2, v1, v4

    const-string v2, "_"

    aput-object v2, v1, v5

    const-string v2, "."

    aput-object v2, v1, v6

    const-string v2, ","

    aput-object v2, v1, v7

    const-string v2, "@"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\'"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ")"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "/"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "&"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "#"

    aput-object v2, v1, v4

    const-string v2, "+"

    aput-object v2, v1, v5

    const-string v2, ":"

    aput-object v2, v1, v6

    const-string v2, ";"

    aput-object v2, v1, v7

    const-string v2, "!"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "?"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\""

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "%"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->NUM:[[Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/widget/EditText;Landroid/view/ViewGroup;I)V
    .registers 4

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    .line 77
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->host:Landroid/view/ViewGroup;

    .line 78
    iput p3, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/EditText;Landroid/view/ViewGroup;ILcom/isaigu/gymapp/wearable/SearchPad$1;)V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/SearchPad;-><init>(Landroid/widget/EditText;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/wearable/SearchPad;)V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->show()V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/SearchPad;->press(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/SearchPad;->picked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/wearable/SearchPad;)V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->close()V

    return-void
.end method

.method public static attach(Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 88
    if-nez p0, :cond_3

    .line 99
    :goto_2
    return-void

    .line 91
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 95
    new-instance v0, Lcom/isaigu/gymapp/wearable/SearchPad$Open;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/SearchPad$Open;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_2

    .line 96
    :catch_1c
    move-exception v0

    .line 97
    const-string v1, "SearchPad.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private buildKeys()V
    .registers 11

    .prologue
    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->keys:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->keys:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 219
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    if-eqz v0, :cond_44

    sget-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->NUM:[[Ljava/lang/String;

    move-object v6, v0

    .line 220
    :goto_12
    const/4 v0, 0x0

    move v7, v0

    :goto_14
    array-length v0, v6

    if-ge v7, v0, :cond_78

    .line 221
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 222
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 223
    const/4 v0, 0x0

    move v8, v0

    :goto_22
    aget-object v0, v6, v7

    array-length v0, v0

    if-ge v8, v0, :cond_50

    .line 224
    aget-object v0, v6, v7

    aget-object v0, v0, v8

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aget-object v0, v6, v7

    aget-object v3, v0, v8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_22

    .line 219
    :cond_44
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SearchPad;->english:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->EN:[[Ljava/lang/String;

    move-object v6, v0

    goto :goto_12

    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->BG:[[Ljava/lang/String;

    move-object v6, v0

    goto :goto_12

    .line 226
    :cond_50
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_65

    .line 227
    const-string v2, "\u232b"

    const-string v3, "\u0000back"

    const v4, 0x3fcccccd    # 1.6f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    :cond_65
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->keys:Landroid/widget/LinearLayout;

    if-nez v7, :cond_75

    const/4 v0, 0x0

    :goto_6a
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_14

    .line 229
    :cond_75
    const/16 v0, 0x8

    goto :goto_6a

    .line 231
    :cond_78
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 232
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    if-eqz v0, :cond_10b

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SearchPad;->english:Z

    if-eqz v0, :cond_107

    const-string v2, "ABC"

    :goto_86
    const-string v3, "\u0000num"

    const v4, 0x3fb33333    # 1.4f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numKey:Landroid/widget/TextView;

    .line 233
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SearchPad;->english:Z

    if-eqz v0, :cond_10f

    const-string v2, "\u0411\u0413"

    :goto_99
    const-string v3, "\u0000lang"

    const v4, 0x3fb33333    # 1.4f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->langKey:Landroid/widget/TextView;

    .line 234
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->langKey:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    if-eqz v0, :cond_112

    const/4 v0, 0x4

    :goto_ad
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numKey:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->langKey:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    const-string v0, "\u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b"

    const-string v2, "space"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const/high16 v4, 0x40900000    # 4.5f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0000done"

    const v4, 0x400ccccd    # 2.2f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v0

    .line 239
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->keys:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    return-void

    .line 232
    :cond_107
    const-string v2, "\u0410\u0411\u0412"

    goto/16 :goto_86

    :cond_10b
    const-string v2, "123"

    goto/16 :goto_86

    .line 233
    :cond_10f
    const-string v2, "EN"

    goto :goto_99

    .line 234
    :cond_112
    const/4 v0, 0x0

    goto :goto_ad
.end method

.method private close()V
    .registers 5

    .prologue
    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    .line 521
    :goto_4
    return-void

    .line 518
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    .line 519
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    .line 520
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/SearchPad$Remove;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->host:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/SearchPad$Remove;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4
.end method

.method static initials(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 566
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 567
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 568
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 569
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    int-to-float v0, p2

    div-float/2addr v0, v8

    int-to-float v4, p2

    div-float/2addr v4, v8

    int-to-float v5, p2

    div-float/2addr v5, v8

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v4

    if-lez v0, :cond_94

    aget-object v0, v4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    aget-object v0, v4, v7

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 573
    array-length v0, v4

    if-le v0, v6, :cond_97

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_97

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    int-to-float v4, p2

    const v5, 0x3ec28f5c    # 0.38f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 576
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 577
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 578
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 579
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    int-to-float v5, p2

    div-float/2addr v5, v8

    int-to-float v6, p2

    div-float/2addr v6, v8

    iget v7, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v7

    div-float/2addr v4, v8

    sub-float v4, v6, v4

    invoke-virtual {v2, v0, v5, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 580
    return-object v1

    .line 572
    :cond_94
    const-string v0, ""

    goto :goto_42

    .line 573
    :cond_97
    const-string v0, ""

    goto :goto_5d
.end method

.method private key(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Landroid/widget/TextView;
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    .line 246
    if-eqz p5, :cond_67

    const/high16 v0, 0x41880000    # 17.0f

    :goto_7
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    if-eqz p5, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-gt v1, v4, :cond_6a

    :cond_12
    const/4 v1, 0x1

    :goto_13
    invoke-static {p1, p2, v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 247
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    if-eqz p5, :cond_6c

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    :goto_20
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v5, 0x88

    .line 249
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 248
    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 251
    invoke-static {p1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 252
    invoke-static {p1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 253
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v0, Lcom/isaigu/gymapp/wearable/SearchPad$Key;

    invoke-direct {v0, p0, p3}, Lcom/isaigu/gymapp/wearable/SearchPad$Key;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v0, Lcom/isaigu/gymapp/wearable/SearchPad$Press;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SearchPad$Press;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    return-object v1

    .line 246
    :cond_67
    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_7

    :cond_6a
    move v1, v2

    goto :goto_13

    .line 248
    :cond_6c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto :goto_20
.end method

.method static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    :try_start_2
    const-string v2, "com.isaigu.gymapp.widget.XemsSearch"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "matches"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 375
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 376
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_30

    move-result v0

    .line 378
    :cond_2f
    :goto_2f
    return v0

    .line 377
    :catch_30
    move-exception v2

    .line 378
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 379
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_53
    move v0, v1

    goto :goto_2f
.end method

.method static photo(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 545
    if-eqz p0, :cond_b

    :try_start_3
    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 551
    :cond_b
    :goto_b
    return-object v0

    .line 548
    :cond_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_b

    const/4 v2, 0x1

    invoke-static {v1, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->round(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_b

    .line 550
    :catch_24
    move-exception v1

    goto :goto_b
.end method

.method private picked(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->close()V

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/QuickStart;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eq v1, v0, :cond_36

    const/4 v0, 0x1

    .line 444
    :goto_25
    if-eqz v0, :cond_35

    .line 445
    sget-object v0, Lcom/isaigu/gymapp/wearable/SearchPad;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/SearchPad$SelectFirst;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    :cond_35
    return-void

    .line 443
    :cond_36
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private press(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string v3, "\u0000back"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 291
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/SearchPad;->set(Ljava/lang/String;)V

    .line 308
    :cond_27
    :goto_27
    return-void

    .line 294
    :cond_28
    const-string v3, "\u0000clear"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 295
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/SearchPad;->set(Ljava/lang/String;)V

    goto :goto_27

    .line 296
    :cond_36
    const-string v3, "\u0000lang"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 297
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/SearchPad;->english:Z

    if-nez v2, :cond_48

    :goto_42
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/SearchPad;->english:Z

    .line 298
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->buildKeys()V

    goto :goto_27

    :cond_48
    move v0, v1

    .line 297
    goto :goto_42

    .line 299
    :cond_4a
    const-string v3, "\u0000num"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 300
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    if-nez v2, :cond_5c

    :goto_56
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    .line 301
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->buildKeys()V

    goto :goto_27

    :cond_5c
    move v0, v1

    .line 300
    goto :goto_56

    .line 302
    :cond_5e
    const-string v3, "\u0000done"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 303
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->close()V

    goto :goto_27

    .line 305
    :cond_6a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    :cond_78
    move v1, v0

    .line 306
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_8e

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    if-nez v1, :cond_8e

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_8e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/SearchPad;->set(Ljava/lang/String;)V

    goto :goto_27
.end method

.method private refresh()V
    .registers 14

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v2, 0x0

    const/16 v12, 0xc

    const/4 v4, 0x0

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a

    move-object v0, v1

    :goto_1a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    if-nez v0, :cond_3d

    const-string v0, "\u0418\u043c\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430\u2026"

    const-string v5, "Client name\u2026"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    if-nez v0, :cond_54

    .line 370
    :cond_39
    :goto_39
    return-void

    .line 318
    :cond_3a
    const-string v0, ""

    goto :goto_1a

    .line 320
    :cond_3d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4b

    const-string v0, "\u0418\u043c\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430\u2026"

    const-string v5, "Program name\u2026"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 321
    :cond_4b
    const-string v0, "\u0418\u043c\u0435 \u0438\u043b\u0438 \u043d\u043e\u043c\u0435\u0440 \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e\u2026"

    const-string v5, "Device name or number\u2026"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 326
    :cond_54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    if-nez v0, :cond_100

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 331
    :goto_6f
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/QuickStart;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 332
    if-eqz v3, :cond_c0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eq v5, v3, :cond_c0

    const/4 v3, 0x1

    .line 334
    :goto_8c
    if-eqz v0, :cond_c2

    :goto_8e
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/ClientSort;->forPad(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v10

    move v3, v4

    move v5, v4

    .line 335
    :goto_94
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_e2

    if-ge v5, v12, :cond_e2

    .line 336
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 337
    if-eqz v0, :cond_cb

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v8, :cond_c8

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c8

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 338
    :goto_b2
    if-eqz v8, :cond_ba

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_cd

    .line 335
    :cond_ba
    :goto_ba
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_94

    :cond_be
    move-object v0, v2

    .line 330
    goto :goto_6f

    :cond_c0
    move v3, v4

    .line 332
    goto :goto_8c

    .line 334
    :cond_c2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8e

    .line 337
    :cond_c8
    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    goto :goto_b2

    :cond_cb
    move-object v8, v2

    goto :goto_b2

    .line 341
    :cond_cd
    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v0, v8}, Lcom/isaigu/gymapp/wearable/SearchPad;->userRow(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    if-nez v5, :cond_e0

    move v0, v6

    :goto_d6
    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    add-int/lit8 v5, v5, 0x1

    goto :goto_ba

    :cond_e0
    move v0, v7

    .line 341
    goto :goto_d6

    :cond_e2
    move v3, v5

    .line 366
    :cond_e3
    if-nez v3, :cond_39

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    const-string v1, "\u041d\u044f\u043c\u0430 \u0441\u044a\u0432\u043f\u0430\u0434\u0435\u043d\u0438\u044f"

    const-string v2, "No matches"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v9, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 368
    invoke-static {v9, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_39

    .line 344
    :cond_100
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_14d

    .line 345
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    if-eqz v0, :cond_111

    .line 346
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    :cond_111
    move v5, v4

    move v3, v4

    .line 347
    :goto_113
    if-eqz v2, :cond_e3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_e3

    if-ge v3, v12, :cond_e3

    .line 348
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 349
    if-eqz v0, :cond_197

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    if-eqz v8, :cond_197

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_136

    move v0, v3

    .line 347
    :goto_132
    add-int/lit8 v5, v5, 0x1

    move v3, v0

    goto :goto_113

    .line 352
    :cond_136
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/isaigu/gymapp/wearable/SearchPad;->textRow(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    if-nez v3, :cond_14b

    move v0, v6

    :goto_141
    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    add-int/lit8 v0, v3, 0x1

    goto :goto_132

    :cond_14b
    move v0, v7

    .line 352
    goto :goto_141

    .line 356
    :cond_14d
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    if-eqz v0, :cond_159

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    :cond_159
    move v5, v4

    move v3, v4

    .line 357
    :goto_15b
    if-eqz v2, :cond_e3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_e3

    if-ge v3, v12, :cond_e3

    .line 358
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 359
    if-eqz v0, :cond_195

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v8, :cond_195

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17e

    move v0, v3

    .line 357
    :goto_17a
    add-int/lit8 v5, v5, 0x1

    move v3, v0

    goto :goto_15b

    .line 362
    :cond_17e
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/isaigu/gymapp/wearable/SearchPad;->textRow(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    if-nez v3, :cond_193

    move v0, v6

    :goto_189
    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    add-int/lit8 v0, v3, 0x1

    goto :goto_17a

    :cond_193
    move v0, v7

    .line 362
    goto :goto_189

    :cond_195
    move v0, v3

    goto :goto_17a

    :cond_197
    move v0, v3

    goto :goto_132
.end method

.method static round(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 556
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 557
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 558
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 559
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 560
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 561
    int-to-float v4, v0

    div-float/2addr v4, v7

    int-to-float v5, v0

    div-float/2addr v5, v7

    int-to-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 562
    return-object v1
.end method

.method private set(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->refresh()V

    .line 314
    return-void
.end method

.method private show()V
    .registers 15

    .prologue
    const/high16 v13, 0x41b00000    # 22.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    const-string v2, "xems_search_pad"

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    const/high16 v2, -0x50000000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/isaigu/gymapp/wearable/SearchPad$Close;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/SearchPad$Close;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 137
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 138
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 139
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-static {v1, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v1, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 141
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v5, 0xf

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    if-nez v0, :cond_26b

    const-string v0, "\u0422\u044a\u0440\u0441\u0435\u043d\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v4, "Find a client"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_94
    const/high16 v4, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 145
    invoke-static {v1, v0, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 148
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v9, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const-string v0, "\u0421\u043a\u0440\u0438\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0430\u0442\u0430  \u2304"

    const-string v4, "Hide keyboard  \u2304"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v1, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 151
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 153
    new-instance v4, Lcom/isaigu/gymapp/wearable/SearchPad$Close;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/SearchPad$Close;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 158
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 159
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v9, v0, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 164
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    if-nez v0, :cond_283

    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442\u0438"

    const-string v5, "Clients"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_115
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 166
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    .line 169
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->matches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3eb851ec    # 0.36f

    invoke-direct {v0, v9, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 175
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 176
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v8, 0x99

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-static {v1, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v9, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 179
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v7, 0xf

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-direct {v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const-string v5, ""

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v5, v13, v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    .line 183
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 184
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->query:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v9, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    const-string v5, "\u2715"

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v8, 0x28

    invoke-static {v1, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v5

    .line 187
    new-instance v6, Lcom/isaigu/gymapp/wearable/SearchPad$Key;

    const-string v7, "\u0000clear"

    invoke-direct {v6, p0, v7}, Lcom/isaigu/gymapp/wearable/SearchPad$Key;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->keys:Landroid/widget/LinearLayout;

    .line 191
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->keys:Landroid/widget/LinearLayout;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const v6, 0x3f23d70a    # 0.64f

    invoke-direct {v4, v9, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 193
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 194
    const/16 v5, 0x50

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 195
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 200
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SearchPad$Back;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/SearchPad$Back;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->host:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 209
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_264

    .line 210
    iput-boolean v10, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->numbers:Z

    .line 212
    :cond_264
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->buildKeys()V

    .line 213
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/SearchPad;->refresh()V

    .line 214
    return-void

    .line 146
    :cond_26b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    if-ne v0, v10, :cond_279

    const-string v0, "\u0422\u044a\u0440\u0441\u0435\u043d\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v4, "Find a program"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_94

    .line 147
    :cond_279
    const-string v0, "\u0422\u044a\u0440\u0441\u0435\u043d\u0435 \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    const-string v4, "Find a device"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_94

    .line 165
    :cond_283
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad;->kind:I

    if-ne v0, v10, :cond_291

    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v5, "Programs"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    :cond_291
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v5, "Devices"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115
.end method

.method private textRow(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    .line 413
    const/high16 v0, 0x41880000    # 17.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 414
    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 415
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 416
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    new-instance v1, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 419
    return-object v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private userRow(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x42300000    # 44.0f

    const/4 v5, 0x0

    .line 384
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 385
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 386
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 387
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 388
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 390
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/SearchPad;->photo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_95

    .line 392
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    :goto_3a
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 398
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 399
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ClientRow;->twoNames(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 400
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 401
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalOf(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7e

    .line 404
    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    :cond_7e
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v1, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;

    invoke-direct {v1, p0, p3}, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;-><init>(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 409
    return-object v0

    .line 394
    :cond_95
    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, p3, v2}, Lcom/isaigu/gymapp/wearable/SearchPad;->initials(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3a
.end method
