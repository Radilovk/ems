.class public final Lcom/isaigu/gymapp/ai/AiVoiceCmd;
.super Ljava/lang/Object;
.source "AiVoiceCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;,
        Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;
    }
.end annotation


# static fields
.field static final CHANNELS:[[I

.field public static final TARGETS:[Ljava/lang/String;

.field public static final TARGETS_BG:[Ljava/lang/String;

.field static final WAKE:[Ljava/lang/String;

.field private static final WORDS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "strength"

    aput-object v1, v0, v5

    const-string v1, "legs"

    aput-object v1, v0, v6

    const-string v1, "thighs"

    aput-object v1, v0, v7

    const-string v1, "calves"

    aput-object v1, v0, v8

    const-string v1, "glutes"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "arms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "chest"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "back"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lower_back"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "traps"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "impulse"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pause"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "frequency"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rest"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "all_channels"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v5, [I

    aput-object v1, v0, v5

    new-array v1, v8, [I

    fill-array-data v1, :array_28e

    aput-object v1, v0, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_298

    aput-object v1, v0, v7

    new-array v1, v6, [I

    aput v8, v1, v5

    aput-object v1, v0, v8

    new-array v1, v6, [I

    const/16 v2, 0x8

    aput v2, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v6, [I

    aput v6, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    aput v9, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    aput v5, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [I

    const/4 v3, 0x6

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [I

    const/4 v3, 0x7

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [I

    const/4 v3, 0x5

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_2a0

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->CHANNELS:[[I

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0441\u0438\u043b\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u043a\u0440\u0430\u043a\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u0431\u0435\u0434\u0440\u0430"

    aput-object v1, v0, v7

    const-string v1, "\u043f\u0440\u0430\u0441\u0446\u0438"

    aput-object v1, v0, v8

    const-string v1, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0440\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0433\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u043a\u0440\u044a\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0442\u0440\u0430\u043f\u0435\u0446"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u043f\u0430\u0443\u0437\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS_BG:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0442\u0440\u0435\u043d\u0435\u0440"

    aput-object v1, v0, v5

    const-string v1, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440"

    aput-object v1, v0, v6

    const-string v1, "\u0442\u0440\u0435\u043d\u0438\u043e\u0440"

    aput-object v1, v0, v7

    const-string v1, "\u0442\u0440\u0435\u0439\u043d\u044a\u0440"

    aput-object v1, v0, v8

    const-string v1, "trainer"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "trener"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WAKE:[Ljava/lang/String;

    .line 102
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "strength"

    aput-object v2, v1, v5

    const-string v2, "\u0441\u0438\u043b\u0430\u0442\u0430"

    aput-object v2, v1, v6

    const-string v2, "\u0442\u043e\u043a\u0430"

    aput-object v2, v1, v7

    const-string v2, "\u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442"

    aput-object v2, v1, v8

    const-string v2, "\u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0432\u0441\u0438\u0447\u043a\u043e"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "legs"

    aput-object v2, v1, v5

    const-string v2, "\u043a\u0440\u0430\u043a\u0430"

    aput-object v2, v1, v6

    const-string v2, "\u043a\u0440\u0430\u043a\u0430\u0442\u0430"

    aput-object v2, v1, v7

    const-string v2, "\u043a\u0440\u0430\u0447\u0435\u0442"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "thighs"

    aput-object v2, v1, v5

    const-string v2, "\u0431\u0435\u0434\u0440\u0430"

    aput-object v2, v1, v6

    const-string v2, "\u0431\u0435\u0434\u0440\u0430\u0442\u0430"

    aput-object v2, v1, v7

    const-string v2, "\u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "calves"

    aput-object v2, v1, v5

    const-string v2, "\u043f\u0440\u0430\u0441\u0435\u0446"

    aput-object v2, v1, v6

    const-string v2, "\u043f\u0440\u0430\u0441\u0446\u0438"

    aput-object v2, v1, v7

    const-string v2, "\u043f\u0440\u0430\u0441\u0435\u0446\u0430"

    aput-object v2, v1, v8

    const-string v2, "\u043f\u0440\u0430\u0441\u0446\u0438\u0442\u0435"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "glutes"

    aput-object v2, v1, v5

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449"

    aput-object v2, v1, v6

    const-string v2, "\u0434\u0443\u043f\u0435"

    aput-object v2, v1, v7

    const-string v2, "\u0437\u0430\u0434\u043d\u0438\u043a"

    aput-object v2, v1, v8

    const-string v2, "\u0437\u0430\u0434\u043d\u0438 \u0447\u0430\u0441\u0442\u0438"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u0433\u043b\u0443\u0442\u0435\u0443\u0441"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "abs"

    aput-object v3, v2, v5

    const-string v3, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v3, v2, v6

    const-string v3, "\u043a\u043e\u0440\u0435\u043c\u0430"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "arms"

    aput-object v3, v2, v5

    const-string v3, "\u0440\u044a\u0446\u0435"

    aput-object v3, v2, v6

    const-string v3, "\u0440\u044a\u0446\u0435\u0442\u0435"

    aput-object v3, v2, v7

    const-string v3, "\u0440\u044a\u043a\u0430"

    aput-object v3, v2, v8

    const-string v3, "\u0440\u044a\u043a\u0430\u0442\u0430"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u0431\u0438\u0446\u0435\u043f\u0441"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u0442\u0440\u0438\u0446\u0435\u043f\u0441"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "chest"

    aput-object v3, v2, v5

    const-string v3, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v3, v2, v6

    const-string v3, "\u0433\u044a\u0440\u0434\u0438\u0442\u0435"

    aput-object v3, v2, v7

    const-string v3, "\u0433\u0440\u044a\u0434\u0435\u043d"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "back"

    aput-object v3, v2, v5

    const-string v3, "\u0433\u0440\u044a\u0431"

    aput-object v3, v2, v6

    const-string v3, "\u0433\u044a\u0440\u0431\u0430"

    aput-object v3, v2, v7

    const-string v3, "\u0433\u044a\u0440\u0431\u044a\u0442"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "lower_back"

    aput-object v3, v2, v5

    const-string v3, "\u043a\u0440\u044a\u0441\u0442"

    aput-object v3, v2, v6

    const-string v3, "\u043a\u0440\u044a\u0441\u0442\u0430"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "traps"

    aput-object v3, v2, v5

    const-string v3, "\u0442\u0440\u0430\u043f\u0435\u0446"

    aput-object v3, v2, v6

    const-string v3, "\u0440\u0430\u043c\u0435\u043d"

    aput-object v3, v2, v7

    const-string v3, "\u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "frequency"

    aput-object v3, v2, v5

    const-string v3, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430"

    aput-object v3, v2, v6

    const-string v3, "\u0445\u0435\u0440\u0446"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "rest"

    aput-object v3, v2, v5

    const-string v3, "\u043f\u043e\u0447\u0438\u0432\u043a"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "all_channels"

    aput-object v3, v2, v5

    const-string v3, "\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    return-void

    .line 23
    nop

    :array_28e
    .array-data 4
        0x2
        0x9
        0x3
    .end array-data

    :array_298
    .array-data 4
        0x2
        0x9
    .end array-data

    :array_2a0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterWake(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    if-nez p0, :cond_6

    move-object v0, v3

    .line 92
    :goto_5
    return-object v0

    .line 75
    :cond_6
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 76
    const/4 v1, -0x1

    .line 78
    sget-object v6, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WAKE:[Ljava/lang/String;

    array-length v7, v6

    move v4, v2

    move v0, v2

    :goto_12
    if-ge v4, v7, :cond_29

    aget-object v8, v6, v4

    .line 79
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 80
    if-ltz v2, :cond_25

    if-ltz v1, :cond_20

    if-ge v2, v1, :cond_25

    .line 82
    :cond_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    .line 78
    :cond_25
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12

    .line 85
    :cond_29
    if-gez v1, :cond_2d

    move-object v0, v3

    .line 86
    goto :goto_5

    .line 88
    :cond_2d
    add-int/2addr v0, v1

    .line 89
    :goto_2e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_41

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 92
    :cond_41
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[\\s,.:!-]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 290
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static varargs has(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 298
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 299
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 300
    const/4 v0, 0x1

    .line 303
    :cond_e
    return v0

    .line 298
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static hasMuscle(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 234
    move v0, v1

    :goto_2
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    move v2, v1

    .line 235
    :goto_8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 236
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 241
    :goto_1b
    return v1

    .line 235
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 234
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    :cond_22
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public static isQuestion(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    if-nez p0, :cond_5

    .line 135
    :cond_4
    :goto_4
    return v0

    .line 124
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v0, v1

    .line 126
    goto :goto_4

    .line 128
    :cond_36
    const/16 v2, 0x12

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, " \u043a\u043e\u043b\u043a\u043e "

    aput-object v2, v4, v0

    const-string v2, " \u043a\u0430\u043a\u0432\u043e "

    aput-object v2, v4, v1

    const/4 v2, 0x2

    const-string v5, " \u043a\u043e\u0435 "

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, " \u043a\u043e\u0438 "

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, " \u043a\u043e\u044f "

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, " \u043a\u043e\u0439 "

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, " \u043a\u0430\u043a "

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, " \u0437\u0430\u0449\u043e "

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, " \u043a\u043e\u0433\u0430 "

    aput-object v5, v4, v2

    const/16 v2, 0x9

    const-string v5, " \u043c\u043e\u0436\u0435 \u043b\u0438 "

    aput-object v5, v4, v2

    const/16 v2, 0xa

    const-string v5, " \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447"

    aput-object v5, v4, v2

    const/16 v2, 0xb

    const-string v5, " \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0438"

    aput-object v5, v4, v2

    const/16 v2, 0xc

    const-string v5, " \u0434\u0430\u0439 \u043c\u0438 "

    aput-object v5, v4, v2

    const/16 v2, 0xd

    const-string v5, " \u043a\u0430\u043a\u0432\u0438 "

    aput-object v5, v4, v2

    const/16 v2, 0xe

    const-string v5, " what "

    aput-object v5, v4, v2

    const/16 v2, 0xf

    const-string v5, " how "

    aput-object v5, v4, v2

    const/16 v2, 0x10

    const-string v5, " which "

    aput-object v5, v4, v2

    const/16 v2, 0x11

    const-string v5, " why "

    aput-object v5, v4, v2

    .line 130
    array-length v5, v4

    move v2, v0

    :goto_9e
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 131
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ab

    move v0, v1

    .line 132
    goto/16 :goto_4

    .line 130
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e
.end method

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 284
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 285
    if-ltz v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    :cond_c
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 140
    if-nez p0, :cond_a

    move-object v0, v3

    .line 172
    :goto_9
    return-object v0

    .line 145
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x45d

    const/16 v5, 0x438

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+\u0438\\s+|\\s+\u0430\\s+|,|;|\\s+\u043f\u043e\u0441\u043b\u0435\\s+|\\s+\u0441\u044a\u0449\u043e\\s+"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 147
    const/4 v2, 0x0

    .line 149
    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_3b
    if-ge v4, v6, :cond_9a

    aget-object v1, v5, v4

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4d

    .line 149
    :goto_49
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3b

    .line 153
    :cond_4d
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v7

    .line 154
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    if-eqz v1, :cond_b6

    .line 155
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 156
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    move v1, v0

    .line 158
    :goto_5a
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_60
    :goto_60
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 159
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_60

    .line 160
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 163
    :cond_7a
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_80
    :goto_80
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    iget-object v8, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 165
    iget-object v8, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 169
    :cond_9a
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "double_on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "double_off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 170
    :cond_ae
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_b3
    move-object v0, v3

    .line 172
    goto/16 :goto_9

    :cond_b6
    move v1, v0

    goto :goto_5a

    :cond_b8
    move v0, v1

    goto :goto_49
.end method

.method private static parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 14

    .prologue
    .line 176
    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45d

    const/16 v3, 0x438

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[,.!?;]"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043b\u0435\u043a\u043e "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043c\u044a\u043d\u0438\u0447\u043a\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0441\u044a\u0432\u0441\u0435\u043c \u043c\u0430\u043b\u043a\u043e"

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 179
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u043e-\u0441\u043b\u0430\u0431\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u043f\u043e \u0441\u043b\u0430\u0431\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u043f\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u043e\u0442\u0441\u043b\u0430\u0431\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 180
    const-string v0, "down"

    .line 182
    :goto_89
    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 183
    iput-boolean v1, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    .line 184
    if-nez v0, :cond_342

    if-eqz p1, :cond_342

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->hasMuscle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_342

    .line 186
    if-nez v1, :cond_9b

    if-eqz p2, :cond_207

    :cond_9b
    const/4 v0, 0x1

    :goto_9c
    move v1, v0

    .line 189
    :goto_9d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u043e-\u0434\u044a\u043b\u0433"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u043e \u0434\u044a\u043b\u0433"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u0443\u0434\u044a\u043b\u0436\u0438"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    .line 190
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u043e-\u043a\u044a\u0441"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u043e \u043a\u044a\u0441"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u043f\u043e-\u043a\u0440\u0430\u0442\u043a"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u043f\u043e \u043a\u0440\u0430\u0442\u043a"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u0441\u043a\u044a\u0441\u0438"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    .line 191
    if-nez v6, :cond_d7

    if-eqz v7, :cond_f5

    :cond_d7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u0430\u0443\u0437"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 192
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v8, "pause"

    if-eqz v6, :cond_20a

    const-string v0, "up"

    :goto_ef
    invoke-direct {v3, v8, v0, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_f5
    if-nez v6, :cond_f9

    if-eqz v7, :cond_125

    :cond_f9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u0430\u0443\u0437"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_125

    .line 195
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v8, "impulse"

    if-eqz v6, :cond_20e

    const-string v0, "up"

    :goto_11f
    invoke-direct {v3, v8, v0, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_125
    if-nez v6, :cond_129

    if-eqz v7, :cond_147

    :cond_129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u043e\u0447\u0438\u0432\u043a"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 198
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v8, "rest"

    if-eqz v6, :cond_212

    const-string v0, "up"

    :goto_141
    invoke-direct {v3, v8, v0, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_147
    if-eqz p1, :cond_264

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_264

    .line 201
    const/4 v2, 0x0

    .line 202
    const/4 v0, 0x1

    :goto_153
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_240

    .line 203
    const/4 v3, 0x1

    :goto_159
    sget-object v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v8, v8, v0

    array-length v8, v8

    if-ge v3, v8, :cond_23a

    .line 204
    sget-object v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_198

    sget-object v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_198

    .line 205
    const-string v8, "legs"

    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_216

    const-string v8, "thighs"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_198

    const-string v8, "calves"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_216

    .line 203
    :cond_198
    add-int/lit8 v3, v3, 0x1

    goto :goto_159

    .line 180
    :cond_19b
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u043f\u043e \u0441\u0438\u043b\u043d\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u043f\u043e\u0432\u0435\u0447\u0435"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u043a\u0430\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u0432\u0434\u0438\u0433\u043d\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u0437\u0430\u0441\u0438\u043b\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u0443\u0441\u0438\u043b\u0438"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 181
    const-string v0, "up"

    goto/16 :goto_89

    :cond_1d1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043c\u0430\u0445\u043d\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u0431\u0435\u0437 "

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    const-string v0, "off"

    goto/16 :goto_89

    :cond_1ed
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0432\u043a\u043b\u044e\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u0434\u043e\u0431\u0430\u0432\u0438"

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_204

    const-string v0, "on"

    goto/16 :goto_89

    :cond_204
    const/4 v0, 0x0

    goto/16 :goto_89

    .line 186
    :cond_207
    const/4 v0, 0x0

    goto/16 :goto_9c

    .line 192
    :cond_20a
    const-string v0, "down"

    goto/16 :goto_ef

    .line 195
    :cond_20e
    const-string v0, "down"

    goto/16 :goto_11f

    .line 198
    :cond_212
    const-string v0, "down"

    goto/16 :goto_141

    .line 208
    :cond_216
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {v8, v9, p1, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v8, 0x0

    aget-object v3, v3, v8

    sget-object v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0xa

    if-gt v3, v8, :cond_23e

    const/4 v3, 0x1

    :goto_239
    or-int/2addr v2, v3

    .line 202
    :cond_23a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_153

    .line 209
    :cond_23e
    const/4 v3, 0x0

    goto :goto_239

    .line 215
    :cond_240
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_264

    const-string v0, "up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_258

    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_264

    .line 216
    :cond_258
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "strength"

    invoke-direct {v2, v3, p1, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_264
    if-nez p1, :cond_2d6

    if-nez v6, :cond_2d6

    if-nez v7, :cond_2d6

    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " \u043f\u0430\u0443\u0437\u0430 "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " \u0441\u043f\u0440\u0438 "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043f\u043e\u0447\u0438\u0432\u043a\u0430 "

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_289

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "pause"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_289
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043f\u0443\u0441\u043d\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " \u0441\u0442\u0430\u0440\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0437\u0430\u043f\u043e\u0447\u043d\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0437\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0434\u0430\u0432\u0430\u0439"

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "resume"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2b7
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " \u0441\u0442\u043e\u043f "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043a\u0440\u0430\u0439 "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438"

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_2d6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043f\u0440\u0435\u0441\u043a\u043e\u0447\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e"

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "skip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2f5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438 \u0430\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430"

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30f

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "to_recovery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_30f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33e

    .line 227
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_334

    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33f

    :cond_334
    const-string v0, "double_off"

    :goto_336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    :cond_33e
    return-object v4

    .line 227
    :cond_33f
    const-string v0, "double_on"

    goto :goto_336

    :cond_342
    move-object p1, v0

    goto/16 :goto_9d
.end method

.method public static parseServer(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 246
    new-instance v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 248
    :try_start_8
    new-instance v1, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;

    move-result-object v2

    .line 249
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_35

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v3, "command"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_35

    .line 250
    check-cast v2, Ljava/util/Map;

    const-string v1, "command"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v8, v1

    .line 251
    :goto_2e
    if-nez v8, :cond_38

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    move-object v1, v5

    .line 280
    :goto_34
    return-object v1

    .line 250
    :cond_35
    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_2e

    .line 255
    :cond_38
    const-string v1, "commands"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_d1

    .line 256
    const-string v1, "commands"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4e
    :goto_4e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 257
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_4e

    .line 258
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v3, "target"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 259
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v4, "dir"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 260
    instance-of v1, v3, Ljava/lang/String;

    if-eqz v1, :cond_4e

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4e

    instance-of v1, v4, Ljava/lang/String;

    if-eqz v1, :cond_4e

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "up"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "down"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "off"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "on"

    aput-object v12, v10, v11

    .line 261
    invoke-static {v1, v10}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4e

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    .line 262
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x6

    if-ge v1, v10, :cond_4e

    .line 263
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    check-cast v3, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    const-string v11, "small"

    check-cast v2, Ljava/util/Map;

    const-string v12, "step"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v10, v3, v4, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_ca} :catch_cb

    goto :goto_4e

    .line 277
    :catch_cb
    move-exception v1

    .line 278
    iput-boolean v7, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    :goto_ce
    move-object v1, v5

    .line 280
    goto/16 :goto_34

    .line 268
    :cond_d1
    :try_start_d1
    const-string v1, "actions"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_135

    .line 269
    const-string v1, "actions"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e7
    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 270
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_e7

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "pause"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "resume"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "skip"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "to_recovery"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "double_on"

    aput-object v10, v4, v9

    const/4 v9, 0x5

    const-string v10, "double_off"

    aput-object v10, v4, v9

    const/4 v9, 0x6

    const-string v10, "stop"

    aput-object v10, v4, v9

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_e7

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v13, :cond_e7

    .line 272
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 276
    :cond_135
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_149

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "coach"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    :cond_149
    move v1, v7

    :goto_14a
    iput-boolean v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z
    :try_end_14c
    .catch Ljava/lang/RuntimeException; {:try_start_d1 .. :try_end_14c} :catch_cb

    goto :goto_ce

    :cond_14d
    move v1, v6

    goto :goto_14a
.end method

.method public static step(IZ)I
    .registers 8

    .prologue
    .line 97
    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v4, v0

    if-eqz p1, :cond_18

    const-wide v0, 0x3fa999999999999aL    # 0.05

    :goto_d
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_18
    const-wide v0, 0x3fb999999999999aL    # 0.1

    goto :goto_d
.end method
