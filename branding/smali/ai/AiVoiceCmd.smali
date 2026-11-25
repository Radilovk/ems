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

.field static final DOWN_WORDS:[Ljava/lang/String;

.field public static final TARGETS:[Ljava/lang/String;

.field public static final TARGETS_BG:[Ljava/lang/String;

.field private static final TEENS_TENS:[[Ljava/lang/String;

.field private static final UNITS:[[Ljava/lang/String;

.field static final UP_WORDS:[Ljava/lang/String;

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
    const/16 v0, 0x12

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

    const/16 v1, 0x10

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "second"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x12

    new-array v0, v0, [[I

    new-array v1, v5, [I

    aput-object v1, v0, v5

    new-array v1, v8, [I

    fill-array-data v1, :array_5a2

    aput-object v1, v0, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_5ac

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

    fill-array-data v2, :array_5b4

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->CHANNELS:[[I

    .line 25
    const/16 v0, 0x12

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

    const/16 v1, 0x10

    const-string v2, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS_BG:[Ljava/lang/String;

    .line 75
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

    .line 112
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

    .line 148
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u043d\u043e"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u0438\u043d\u0438\u0446\u0430"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u0438\u043d"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u043d\u0430"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u043d\u043e"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0432\u0430"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0432\u0435"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0438"

    aput-object v3, v2, v5

    const-string v3, "3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0447\u0435\u0442\u0438\u0440\u0438"

    aput-object v3, v2, v5

    const-string v3, "4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043f\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "5"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0448\u0435\u0441\u0442"

    aput-object v3, v2, v5

    const-string v3, "6"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0441\u0435\u0434\u0435\u043c"

    aput-object v3, v2, v5

    const-string v3, "7"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043e\u0441\u0435\u043c"

    aput-object v3, v2, v5

    const-string v3, "8"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0435\u0432\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "9"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UNITS:[[Ljava/lang/String;

    .line 150
    const/16 v0, 0x1f

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0434\u0435\u0441\u0435\u0442"

    aput-object v2, v1, v5

    const-string v2, "10"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u0438\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v2, v1, v5

    const-string v2, "11"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u0438\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v2, v1, v5

    const-string v2, "11"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0434\u0432\u0430\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v2, v1, v5

    const-string v2, "12"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0434\u0432\u0430\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v2, v1, v5

    const-string v2, "12"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0438\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "13"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0438\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "13"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0447\u0435\u0442\u0438\u0440\u0438\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "14"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0447\u0435\u0442\u0438\u0440\u0438\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "14"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043f\u0435\u0442\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "15"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043f\u0435\u0442\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "15"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0448\u0435\u0441\u0442\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "16"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0448\u0435\u0441\u0442\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "16"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0441\u0435\u0434\u0435\u043c\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "17"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0441\u0435\u0434\u0435\u043c\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "17"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043e\u0441\u0435\u043c\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "18"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043e\u0441\u0435\u043c\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "18"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0435\u0432\u0435\u0442\u043d\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "19"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0435\u0432\u0435\u0442\u043d\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "19"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0432\u0430\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "20"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0432\u0430\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "20"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0438\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "30"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0438\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "30"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0447\u0435\u0442\u0438\u0440\u0438\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "40"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0447\u0435\u0442\u0438\u0440\u0438\u0439\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "40"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043f\u0435\u0442\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "50"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0448\u0435\u0441\u0442\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "60"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0441\u0435\u0434\u0435\u043c\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "70"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043e\u0441\u0435\u043c\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "80"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0434\u0435\u0432\u0435\u0442\u0434\u0435\u0441\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "90"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0441\u0442\u043e"

    aput-object v3, v2, v5

    const-string v3, "100"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TEENS_TENS:[[Ljava/lang/String;

    .line 226
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u0443\u0441\u0438\u043b\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u0437\u0430\u0441\u0438\u043b\u0438"

    aput-object v1, v0, v7

    const-string v1, "\u043a\u0430\u0447\u0438"

    aput-object v1, v0, v8

    const-string v1, "\u0432\u0434\u0438\u0433\u043d\u0438"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "\u043f\u043e\u0432\u0438\u0448\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043f\u043e\u0432\u0435\u0447\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u043f\u043e \u0441\u0438\u043b\u043d\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0434\u043e\u0431\u0430\u0432\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u043f\u043b\u044e\u0441"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UP_WORDS:[Ljava/lang/String;

    .line 228
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u043e\u0442\u0441\u043b\u0430\u0431\u0438"

    aput-object v1, v0, v7

    const-string v1, "\u0441\u043c\u044a\u043a\u043d\u0438"

    aput-object v1, v0, v8

    const-string v1, "\u043f\u043e\u043d\u0438\u0436\u0438"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "\u0441\u043d\u0438\u0436\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043f\u043e-\u0441\u043b\u0430\u0431\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043f\u043e \u0441\u043b\u0430\u0431\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u043f\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u043c\u0430\u0445\u043d\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u043c\u0438\u043d\u0443\u0441"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->DOWN_WORDS:[Ljava/lang/String;

    return-void

    .line 23
    nop

    :array_5a2
    .array-data 4
        0x2
        0x9
        0x3
    .end array-data

    :array_5ac
    .array-data 4
        0x2
        0x9
    .end array-data

    :array_5b4
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

    .line 82
    if-nez p0, :cond_6

    move-object v0, v3

    .line 102
    :goto_5
    return-object v0

    .line 85
    :cond_6
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 86
    const/4 v1, -0x1

    .line 88
    sget-object v6, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WAKE:[Ljava/lang/String;

    array-length v7, v6

    move v4, v2

    move v0, v2

    :goto_12
    if-ge v4, v7, :cond_29

    aget-object v8, v6, v4

    .line 89
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 90
    if-ltz v2, :cond_25

    if-ltz v1, :cond_20

    if-ge v2, v1, :cond_25

    .line 92
    :cond_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    .line 88
    :cond_25
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12

    .line 95
    :cond_29
    if-gez v1, :cond_2d

    move-object v0, v3

    .line 96
    goto :goto_5

    .line 98
    :cond_2d
    add-int/2addr v0, v1

    .line 99
    :goto_2e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_41

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 102
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
    .line 540
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

    .line 541
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    const/4 v0, 0x1

    .line 545
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static fromCoach(Ljava/util/Map;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 490
    if-eqz p0, :cond_a

    .line 491
    :try_start_7
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_10

    .line 496
    :cond_a
    :goto_a
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 497
    return-object v0

    .line 493
    :catch_10
    move-exception v1

    .line 494
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_a
.end method

.method private static varargs has(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 549
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 550
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 551
    const/4 v0, 0x1

    .line 554
    :cond_e
    return v0

    .line 549
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static hasMuscle(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 457
    move v0, v1

    :goto_2
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    move v2, v1

    .line 458
    :goto_8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 459
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 464
    :goto_1b
    return v1

    .line 458
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 457
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 464
    :cond_22
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static in(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 195
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 196
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 197
    const/4 v0, 0x1

    .line 200
    :cond_e
    return v0

    .line 195
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static isQuestion(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    if-nez p0, :cond_5

    .line 145
    :cond_4
    :goto_4
    return v0

    .line 134
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

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v0, v1

    .line 136
    goto :goto_4

    .line 138
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

    .line 140
    array-length v5, v4

    move v2, v0

    :goto_9e
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ab

    move v0, v1

    .line 142
    goto/16 :goto_4

    .line 140
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e
.end method

.method public static mayBeCommand(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    if-nez p0, :cond_5

    .line 243
    :goto_4
    return v0

    .line 239
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x45d

    const/16 v5, 0x438

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UP_WORDS:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->DOWN_WORDS:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->hasMuscle(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, ".*\\d.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    :cond_4a
    move v0, v1

    .line 241
    goto :goto_4

    .line 243
    :cond_4c
    const/16 v3, 0x1e

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438"

    aput-object v4, v3, v0

    const-string v0, "\u0432\u043a\u043b\u044e\u0447\u0438"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v1, "\u043c\u0430\u0445\u043d\u0438"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "\u0441\u043f\u0440\u0438"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "\u043f\u0443\u0441\u043d\u0438"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "\u043f\u0430\u0443\u0437\u0430"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "\u0441\u0442\u043e\u043f"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "\u0441\u043c\u0435\u043d\u0438"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "\u043f\u0440\u0435\u0441\u043a\u043e\u0447\u0438"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "\u0441\u0442\u0438\u0433\u0430"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "\u043f\u043e\u0447\u0438\u043d\u0438"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "\u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "\u0445\u0430\u0439\u0434\u0435"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "\u0434\u0430\u0432\u0430\u0439"

    aput-object v1, v3, v0

    const/16 v0, 0x10

    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v1, v3, v0

    const/16 v0, 0x11

    const-string v1, "\u0447\u0435\u0441\u0442\u043e\u0442"

    aput-object v1, v3, v0

    const/16 v0, 0x12

    const-string v1, "\u043f\u0430\u0443\u0437"

    aput-object v1, v3, v0

    const/16 v0, 0x13

    const-string v1, "\u0434\u044a\u043b\u0431\u043e"

    aput-object v1, v3, v0

    const/16 v0, 0x14

    const-string v1, "\u0441\u0438\u043b\u0430"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    const-string v1, "\u0441\u0438\u043b\u043d\u043e"

    aput-object v1, v3, v0

    const/16 v0, 0x16

    const-string v1, "\u0441\u043b\u0430\u0431\u043e"

    aput-object v1, v3, v0

    const/16 v0, 0x17

    const-string v1, "\u043b\u0435\u043a\u043e"

    aput-object v1, v3, v0

    const/16 v0, 0x18

    const-string v1, "\u0434\u0432\u043e\u0435\u043d"

    aput-object v1, v3, v0

    const/16 v0, 0x19

    const-string v1, "\u0432\u0442\u043e\u0440\u0438"

    aput-object v1, v3, v0

    const/16 v0, 0x1a

    const-string v1, "\u043c\u0443\u0437\u0438\u043a"

    aput-object v1, v3, v0

    const/16 v0, 0x1b

    const-string v1, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447"

    aput-object v1, v3, v0

    const/16 v0, 0x1c

    const-string v1, "\u043a\u0440\u0430\u0439"

    aput-object v1, v3, v0

    const/16 v0, 0x1d

    const-string v1, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432"

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_4
.end method

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 535
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 536
    if-ltz v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    :cond_c
    return-object p0
.end method

.method private static num(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_8

    .line 222
    :goto_7
    return-object v0

    .line 217
    :cond_8
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TEENS_TENS:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    .line 218
    aget-object v5, v4, v1

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 219
    const/4 v0, 0x1

    aget-object v0, v4, v0

    goto :goto_7

    .line 217
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 222
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static numbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 164
    const-string v0, " "

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 166
    :goto_e
    array-length v2, v3

    if-ge v0, v2, :cond_d5

    .line 167
    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    if-eqz v5, :cond_91

    if-lez v0, :cond_57

    const-string v2, "\u0441"

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v2, "\u043d\u0430"

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v2, "\u0434\u043e"

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v3, v2

    sget-object v6, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UP_WORDS:[Ljava/lang/String;

    .line 169
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v3, v2

    sget-object v6, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->DOWN_WORDS:[Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    :cond_57
    add-int/lit8 v2, v0, 0x1

    array-length v6, v3

    if-ge v2, v6, :cond_68

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v3, v2

    const-string v6, "\u043f\u0440\u043e\u0446\u0435\u043d\u0442"

    .line 170
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    :cond_68
    add-int/lit8 v2, v0, 0x3

    array-length v6, v3

    if-ge v2, v6, :cond_91

    const-string v2, "\u0438"

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    .line 171
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    add-int/lit8 v2, v0, 0x3

    aget-object v2, v3, v2

    const-string v6, "\u043f\u0440\u043e\u0446\u0435\u043d\u0442"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_85
    const/4 v2, 0x1

    .line 172
    :goto_86
    if-nez v2, :cond_93

    .line 173
    aget-object v2, v3, v0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_91
    move v2, v1

    .line 171
    goto :goto_86

    .line 176
    :cond_93
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    const/16 v5, 0x14

    if-lt v2, v5, :cond_cd

    rem-int/lit8 v5, v2, 0xa

    if-nez v5, :cond_cd

    const/16 v5, 0x64

    if-ge v2, v5, :cond_cd

    add-int/lit8 v5, v0, 0x2

    array-length v6, v3

    if-ge v5, v6, :cond_cd

    const-string v5, "\u0438"

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    add-int/lit8 v5, v0, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_cd

    .line 179
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 180
    add-int/lit8 v0, v0, 0x2

    .line 182
    :cond_cd
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 184
    :cond_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    :goto_da
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f3

    .line 186
    if-lez v1, :cond_e7

    .line 187
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_e7
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 191
    :cond_f3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 249
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 250
    if-nez p0, :cond_a

    move-object v0, v3

    .line 285
    :goto_9
    return-object v0

    .line 255
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

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->numbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+\u0438\\s+|\\s+\u0430\\s+|,|;|\\s+\u043f\u043e\u0441\u043b\u0435\\s+|\\s+\u0441\u044a\u0449\u043e\\s+"

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 257
    const/4 v2, 0x0

    .line 259
    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_3f
    if-ge v4, v6, :cond_b2

    aget-object v1, v5, v4

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_52

    move v1, v0

    .line 259
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    goto :goto_3f

    .line 263
    :cond_52
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v7

    .line 264
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    if-eqz v1, :cond_ce

    const-string v1, "set"

    iget-object v8, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 265
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 266
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    move v1, v0

    .line 268
    :goto_69
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6f
    :goto_6f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 269
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 270
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 273
    :cond_89
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8f
    :goto_8f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 275
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 278
    :cond_a9
    iget v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    if-ltz v0, :cond_4e

    .line 279
    iget v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    iput v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    goto :goto_4e

    .line 282
    :cond_b2
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "double_on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "double_off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 283
    :cond_c6
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_cb
    move-object v0, v3

    .line 285
    goto/16 :goto_9

    :cond_ce
    move v1, v0

    goto :goto_69
.end method

.method private static parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 15

    .prologue
    .line 289
    new-instance v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 290
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

    move-result-object v6

    .line 292
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u043e\u0441\u0442\u0430\u0432\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u0432\u0440\u0435\u043c\u0435 \u043e\u0441\u0442\u0430\u0432\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u043e\u0449\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u043c\u0438\u043d\u0443\u0442\u0438 \u043e\u0441\u0442\u0430\u0432\u0430\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u043c\u0438\u043d\u0443\u0442\u0438 \u043e\u0449\u0435"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 293
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_time"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 453
    :goto_5e
    return-object v0

    .line 296
    :cond_5f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " \u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 297
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_hr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 298
    goto :goto_5e

    .line 301
    :cond_76
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043a\u0430\u043a\u0432\u0430 \u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043d\u0430 \u043a\u043e\u043b\u043a\u043e \u0445\u0435\u0440\u0446\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u0445\u0435\u0440\u0446\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043a\u0430\u043a\u044a\u0432 \u0435 \u0438\u043c\u043f\u0443\u043b\u0441\u044a\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u043a\u0430\u043a\u0432\u0438 \u0441\u0430 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u043e\u0449\u0435 \u0438\u0437\u0434\u044a\u0440\u0436\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u0438\u0437\u0434\u044a\u0440\u0436\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0437\u0430\u0449\u043e \u0441\u0432\u0430\u043b\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0437\u0430\u0449\u043e \u043d\u0430\u043c\u0430\u043b\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0437\u0430\u0449\u043e \u043f\u0430\u0434\u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u043a\u0430\u043a\u0432\u043e \u043f\u0440\u043e\u043c\u0435\u043d\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u043a\u0430\u043a\u0432\u043e \u043d\u0430\u043f\u0440\u0430\u0432\u0438 \u0441 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 304
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 305
    goto :goto_5e

    .line 307
    :cond_c9
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043a\u043e\u043b\u043a\u043e \u0435 \u0441\u0438\u043b\u0430\u0442\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043a\u0430\u043a\u0432\u0430 \u0435 \u0441\u0438\u043b\u0430\u0442\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043d\u0430 \u043a\u043e\u043b\u043a\u043e \u0435 \u0441\u0438\u043b\u0430\u0442\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043d\u0430 \u043a\u043e\u043b\u043a\u043e \u0441\u044a\u043c"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 308
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_strength"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 309
    goto/16 :goto_5e

    .line 312
    :cond_f0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043c\u0443\u0437\u0438\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043f\u0435\u0441\u0435\u043d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043f\u0435\u0441\u0435\u043d\u0442\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043f\u0430\u0440\u0447\u0435"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 313
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0434\u0440\u0443\u0433\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0434\u0440\u0443\u0433\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0441\u043c\u0435\u043d\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u043d\u0430\u043f\u0440\u0435\u0434"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 314
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_next"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_136
    move-object v0, v5

    .line 320
    goto/16 :goto_5e

    .line 315
    :cond_139
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043f\u0440\u0435\u0434\u0438\u0448\u043d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043d\u0430\u0437\u0430\u0434"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0432\u044a\u0440\u043d\u0438"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 316
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_prev"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 318
    :cond_159
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_toggle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 323
    :cond_161
    const-string v0, "(?:\u0441\u043b\u0435\u0434|\u043e\u0449\u0435|\u0434\u043e|\u0437\u0430)\\s*(\\d{1,2})\\s*(?:\u043c\u0438\u043d|\u043c\u0438\u043d\u0443\u0442\u0438|\u043c\u0438\u043d\u0443\u0442\u0430)?"

    .line 324
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1b3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043c\u0438\u043d\u0443\u0442"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u043a\u0440\u0430\u0439"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u0441\u0432\u044a\u0440\u0448\u0438"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u0441\u043f\u0440\u0438 \u0441\u043b\u0435\u0434"

    aput-object v3, v1, v2

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 326
    const/4 v1, 0x0

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    .line 327
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "end_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 328
    goto/16 :goto_5e

    .line 332
    :cond_1b3
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0434\u0432\u043e\u0435\u043d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0434\u0432\u043e\u0439\u043d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u043f\u0430\u0443\u0437\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430 \u043f\u0430\u0443\u0437\u0430"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_299

    .line 333
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043f\u043e \u0441\u0438\u043b\u043d\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0443\u0441\u0438\u043b\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0437\u0430\u0441\u0438\u043b\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u043a\u0430\u0447\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0432\u0434\u0438\u0433\u043d\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043f\u043e\u0432\u0435\u0447\u0435"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 334
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u043e-\u0441\u043b\u0430\u0431\u043e"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u043f\u043e \u0441\u043b\u0430\u0431\u043e"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v1, v2

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 335
    if-nez v0, :cond_23d

    if-eqz v1, :cond_262

    .line 336
    :cond_23d
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "second"

    if-eqz v0, :cond_25f

    const-string v0, "up"

    :goto_247
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 338
    goto/16 :goto_5e

    .line 336
    :cond_25f
    const-string v0, "down"

    goto :goto_247

    .line 340
    :cond_262
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0441\u043f\u0440\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043c\u0430\u0445\u043d\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0431\u0435\u0437 "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0441\u0442\u043e\u043f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u043f\u0440\u0435\u043c\u0430\u0445\u043d\u0438"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 341
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    if-eqz v0, :cond_296

    const-string v0, "double_off"

    :goto_28d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 343
    goto/16 :goto_5e

    .line 341
    :cond_296
    const-string v0, "double_on"

    goto :goto_28d

    .line 346
    :cond_299
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0434\u044a\u043b\u0431\u043e\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0434\u044a\u043b\u0431\u043e\u043a\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043f\u043b\u0438\u0442\u044a\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u043f\u043b\u0438\u0442\u043a\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u043f\u043e\u0432\u044a\u0440\u0445\u043d\u043e\u0441\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043f\u043e-\u0448\u0438\u0440\u043e\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043f\u043e-\u0442\u0435\u0441\u0435\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0448\u0438\u0440\u0438\u043d\u0430"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 347
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043f\u043e \u0434\u044a\u043b\u0431\u043e\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043f\u043e \u0434\u044a\u043b\u0431\u043e\u043a\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u043f\u043e-\u0448\u0438\u0440\u043e\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043f\u043e\u0432\u0435\u0447\u0435"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33d

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043f\u043b\u0438\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u043f\u043e\u0432\u044a\u0440\u0445\u043d\u043e\u0441\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0442\u0435\u0441\u0435\u043d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v2, v0, v1

    .line 348
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33d

    const/4 v0, 0x1

    .line 349
    :goto_31b
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "width"

    if-eqz v0, :cond_33f

    const-string v0, "up"

    :goto_325
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 351
    goto/16 :goto_5e

    .line 348
    :cond_33d
    const/4 v0, 0x0

    goto :goto_31b

    .line 349
    :cond_33f
    const-string v0, "down"

    goto :goto_325

    .line 355
    :cond_342
    const-string v0, "\\s\u0441\\s*(\\d{1,3})(?=\\s|%)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_41d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 359
    :goto_35f
    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UP_WORDS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 360
    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->DOWN_WORDS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    .line 361
    if-nez v0, :cond_803

    if-nez v4, :cond_371

    if-eqz v7, :cond_803

    :cond_371
    const-string v1, "(?:^|\\s)(?:\u043d\u0430|\u0434\u043e)\\s*\\d{1,3}"

    .line 362
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_803

    .line 363
    const-string v1, "(?:^|\\s)(\\d{1,3})(?=\\s|%|$)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_803

    .line 365
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 368
    :goto_39f
    const-string v0, "(?:^|\\s)(?:\u043d\u0430|\u0434\u043e)?\\s*(\\d{1,3})\\s*(?:%|\u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430|\u043f\u0440\u043e\u0446\u0435\u043d\u0442)?(?=\\s|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 370
    if-nez v1, :cond_484

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_484

    .line 371
    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 372
    const/4 v2, 0x0

    .line 373
    const/4 v0, 0x1

    :goto_3c7
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_423

    .line 374
    const/4 v3, 0x1

    :goto_3cd
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    array-length v9, v9

    if-ge v3, v9, :cond_41a

    .line 375
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    .line 376
    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v10, v10, v0

    aget-object v10, v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_420

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_420

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0xa

    if-gt v10, v11, :cond_420

    const-string v10, "legs"

    .line 377
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40f

    const-string v10, "thighs"

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_420

    const-string v10, "calves"

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_420

    .line 378
    :cond_40f
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    invoke-direct {v3, v9, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v2, 0x1

    .line 373
    :cond_41a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c7

    .line 356
    :cond_41d
    const/4 v0, 0x0

    goto/16 :goto_35f

    .line 374
    :cond_420
    add-int/lit8 v3, v3, 0x1

    goto :goto_3cd

    .line 384
    :cond_423
    if-nez v2, :cond_475

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0441\u0438\u043b\u0430"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u0441\u0438\u043b\u0430\u0442\u0430"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u0442\u043e\u043a\u0430"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_469

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u0432\u0434\u0438\u0433\u043d\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u043a\u0430\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u0434\u0430\u0439"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_475

    .line 385
    :cond_469
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "strength"

    invoke-direct {v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_475
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_484

    .line 388
    const-string v0, "set"

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 389
    goto/16 :goto_5e

    .line 392
    :cond_484
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043b\u0435\u043a\u043e "

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u043c\u044a\u043d\u0438\u0447\u043a\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u0441\u044a\u0432\u0441\u0435\u043c \u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 393
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x1

    const-string v8, "\u043f\u043e-\u0441\u043b\u0430\u0431\u043e"

    aput-object v8, v0, v3

    const/4 v3, 0x2

    const-string v8, "\u043f\u043e \u0441\u043b\u0430\u0431\u043e"

    aput-object v8, v0, v3

    const/4 v3, 0x3

    const-string v8, "\u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v0, v3

    const/4 v3, 0x4

    const-string v8, "\u043f\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v0, v3

    const/4 v3, 0x5

    const-string v8, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x6

    const-string v8, "\u043e\u0442\u0441\u043b\u0430\u0431\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x7

    const-string v8, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v8, v0, v3

    const/16 v3, 0x8

    const-string v8, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v8, v0, v3

    const/16 v3, 0x9

    const-string v8, "\u0441\u043c\u044a\u043a\u043d\u0438"

    aput-object v8, v0, v3

    const/16 v3, 0xa

    const-string v8, "\u043f\u043e\u043d\u0438\u0436\u0438"

    aput-object v8, v0, v3

    const/16 v3, 0xb

    const-string v8, "\u0441\u043d\u0438\u0436\u0438"

    aput-object v8, v0, v3

    const/16 v3, 0xc

    const-string v8, "\u043c\u0438\u043d\u0443\u0441"

    aput-object v8, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_615

    .line 395
    const-string v0, "down"

    .line 397
    :goto_4f1
    if-eqz v1, :cond_4f9

    if-eq v4, v7, :cond_4f9

    .line 398
    if-eqz v4, :cond_68d

    const-string v0, "up"

    .line 400
    :cond_4f9
    :goto_4f9
    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 401
    iput-boolean v2, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    .line 402
    if-nez v0, :cond_800

    if-eqz p1, :cond_800

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->hasMuscle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_800

    .line 404
    if-nez v2, :cond_50b

    if-eqz p2, :cond_691

    :cond_50b
    const/4 v0, 0x1

    :goto_50c
    move v2, v0

    .line 408
    :goto_50d
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u043e-\u0434\u044a\u043b\u0433"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u043f\u043e \u0434\u044a\u043b\u0433"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u043f\u043e-\u0434\u044a\u043b\u044a\u0433"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "\u043f\u043e \u0434\u044a\u043b\u044a\u0433"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "\u0443\u0434\u044a\u043b\u0436\u0438"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    .line 409
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u043e-\u043a\u044a\u0441"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u043f\u043e \u043a\u044a\u0441"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u043f\u043e-\u043a\u0440\u0430\u0442\u043a"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "\u043f\u043e \u043a\u0440\u0430\u0442\u043a"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "\u0441\u043a\u044a\u0441\u0438"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    .line 410
    if-nez v7, :cond_551

    if-eqz v8, :cond_56f

    :cond_551
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u0430\u0443\u0437"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56f

    .line 411
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "pause"

    if-eqz v7, :cond_694

    const-string v0, "up"

    :goto_569
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_56f
    if-nez v7, :cond_573

    if-eqz v8, :cond_59f

    :cond_573
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u0430\u0443\u0437"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59f

    .line 414
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "impulse"

    if-eqz v7, :cond_698

    const-string v0, "up"

    :goto_599
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_59f
    if-nez v7, :cond_5a3

    if-eqz v8, :cond_5c1

    :cond_5a3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u043e\u0447\u0438\u0432\u043a"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c1

    .line 417
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "rest"

    if-eqz v7, :cond_69c

    const-string v0, "up"

    :goto_5bb
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_5c1
    if-eqz p1, :cond_72c

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72c

    .line 420
    const/4 v3, 0x0

    .line 421
    const/4 v0, 0x1

    :goto_5cd
    sget-object v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_6ca

    .line 422
    const/4 v4, 0x1

    :goto_5d3
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    array-length v9, v9

    if-ge v4, v9, :cond_6c4

    .line 423
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    aget-object v9, v9, v4

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_612

    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_612

    .line 424
    const-string v9, "legs"

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a0

    const-string v9, "thighs"

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_612

    const-string v9, "calves"

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a0

    .line 422
    :cond_612
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d3

    .line 395
    :cond_615
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x1

    const-string v8, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    aput-object v8, v0, v3

    const/4 v3, 0x2

    const-string v8, "\u043f\u043e \u0441\u0438\u043b\u043d\u043e"

    aput-object v8, v0, v3

    const/4 v3, 0x3

    const-string v8, "\u043f\u043e\u0432\u0435\u0447\u0435"

    aput-object v8, v0, v3

    const/4 v3, 0x4

    const-string v8, "\u043a\u0430\u0447\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x5

    const-string v8, "\u0432\u0434\u0438\u0433\u043d\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x6

    const-string v8, "\u0437\u0430\u0441\u0438\u043b\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x7

    const-string v8, "\u0443\u0441\u0438\u043b\u0438"

    aput-object v8, v0, v3

    const/16 v3, 0x8

    const-string v8, "\u043f\u043e\u0432\u0438\u0448\u0438"

    aput-object v8, v0, v3

    const/16 v3, 0x9

    const-string v8, "\u043f\u043b\u044e\u0441"

    aput-object v8, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_657

    .line 396
    const-string v0, "up"

    goto/16 :goto_4f1

    :cond_657
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x1

    const-string v8, "\u043c\u0430\u0445\u043d\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x2

    const-string v8, "\u0431\u0435\u0437 "

    aput-object v8, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_673

    const-string v0, "off"

    goto/16 :goto_4f1

    :cond_673
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "\u0432\u043a\u043b\u044e\u0447\u0438"

    aput-object v8, v0, v3

    const/4 v3, 0x1

    const-string v8, "\u0434\u043e\u0431\u0430\u0432\u0438"

    aput-object v8, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68a

    const-string v0, "on"

    goto/16 :goto_4f1

    :cond_68a
    const/4 v0, 0x0

    goto/16 :goto_4f1

    .line 398
    :cond_68d
    const-string v0, "down"

    goto/16 :goto_4f9

    .line 404
    :cond_691
    const/4 v0, 0x0

    goto/16 :goto_50c

    .line 411
    :cond_694
    const-string v0, "down"

    goto/16 :goto_569

    .line 414
    :cond_698
    const-string v0, "down"

    goto/16 :goto_599

    .line 417
    :cond_69c
    const-string v0, "down"

    goto/16 :goto_5bb

    .line 427
    :cond_6a0
    iget-object v4, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {v9, v10, p1, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v9, 0x0

    aget-object v4, v4, v9

    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/16 v9, 0xa

    if-gt v4, v9, :cond_6c8

    const/4 v4, 0x1

    :goto_6c3
    or-int/2addr v3, v4

    .line 421
    :cond_6c4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5cd

    .line 428
    :cond_6c8
    const/4 v4, 0x0

    goto :goto_6c3

    .line 436
    :cond_6ca
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72c

    const-string v0, "up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e2

    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72c

    :cond_6e2
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0447\u0430\u0441\u0442"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u0442\u044f\u043b\u043e\u0442\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u0434\u043e\u043b\u043d"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "\u0433\u043e\u0440\u043d"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "\u043e\u0442\u0437\u0430\u0434"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "\u043e\u0442\u043f\u0440\u0435\u0434"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "\u0441\u0442\u0440\u0430\u043d\u0430"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "\u043b\u044f\u0432\u0430"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "\u043b\u044f\u0432 "

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "\u0434\u044f\u0441\u043d"

    aput-object v4, v0, v3

    .line 437
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72c

    .line 438
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v4, "strength"

    invoke-direct {v3, v4, p1, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_72c
    if-nez p1, :cond_79e

    if-nez v7, :cond_79e

    if-nez v8, :cond_79e

    .line 442
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " \u043f\u0430\u0443\u0437\u0430 "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, " \u0441\u043f\u0440\u0438 "

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u043f\u043e\u0447\u0438\u0432\u043a\u0430 "

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_751

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "pause"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_751
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u0443\u0441\u043d\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, " \u0441\u0442\u0430\u0440\u0442"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u0437\u0430\u043f\u043e\u0447\u043d\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u0437\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u0434\u0430\u0432\u0430\u0439"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77f

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "resume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_77f
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " \u0441\u0442\u043e\u043f "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043a\u0440\u0430\u0439 "

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79e

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "stop"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_79e
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u043f\u0440\u0435\u0441\u043a\u043e\u0447\u0438"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7bd

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "skip"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_7bd
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438 \u0430\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430"

    aput-object v3, v0, v2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d7

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "to_recovery"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_7d7
    if-eqz v1, :cond_7fd

    .line 449
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7df
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7fd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 450
    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    goto :goto_7df

    :cond_7fd
    move-object v0, v5

    .line 453
    goto/16 :goto_5e

    :cond_800
    move-object p1, v0

    goto/16 :goto_50d

    :cond_803
    move-object v1, v0

    goto/16 :goto_39f
.end method

.method public static parseServer(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 469
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 471
    :try_start_6
    new-instance v1, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;

    move-result-object v2

    .line 472
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_32

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v5, "command"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_32

    .line 473
    check-cast v2, Ljava/util/Map;

    const-string v1, "command"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 474
    :goto_2b
    if-nez v1, :cond_34

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    move-object v1, v3

    .line 483
    :goto_31
    return-object v1

    .line 473
    :cond_32
    const/4 v1, 0x0

    goto :goto_2b

    .line 478
    :cond_34
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V

    .line 479
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "coach"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    :cond_4b
    move v1, v4

    :goto_4c
    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_4e} :catch_52

    :goto_4e
    move-object v1, v3

    .line 483
    goto :goto_31

    .line 479
    :cond_50
    const/4 v1, 0x0

    goto :goto_4c

    .line 480
    :catch_52
    move-exception v1

    .line 481
    iput-boolean v4, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    goto :goto_4e
.end method

.method private static read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 502
    const-string v0, "commands"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_ee

    .line 503
    const-string v0, "commands"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 504
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1b

    move-object v0, v1

    .line 505
    check-cast v0, Ljava/util/Map;

    const-string v2, "target"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v1

    .line 506
    check-cast v0, Ljava/util/Map;

    const-string v3, "dir"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v1

    .line 507
    check-cast v0, Ljava/util/Map;

    const-string v4, "amount"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 508
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_d1

    const/16 v4, 0x64

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 509
    :goto_59
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_1b

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "up"

    aput-object v7, v5, v9

    const-string v7, "down"

    aput-object v7, v5, v11

    const-string v7, "off"

    aput-object v7, v5, v12

    const-string v7, "on"

    aput-object v7, v5, v10

    const-string v7, "set"

    aput-object v7, v5, v13

    .line 510
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x6

    if-ge v0, v5, :cond_1b

    const-string v0, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-ltz v4, :cond_1b

    .line 513
    :cond_9f
    const-string v0, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    .line 515
    :goto_ae
    const-string v1, "set"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    if-lez v4, :cond_ca

    const-string v1, "up"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    const-string v1, "down"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 516
    :cond_c8
    iput v4, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 518
    :cond_ca
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 508
    :cond_d1
    const/4 v0, -0x1

    move v4, v0

    goto :goto_59

    .line 514
    :cond_d4
    new-instance v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    check-cast v2, Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const-string v7, "small"

    check-cast v1, Ljava/util/Map;

    const-string v8, "step"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v5, v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v5

    goto :goto_ae

    .line 523
    :cond_ee
    const-string v0, "actions"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_14c

    .line 524
    const-string v0, "actions"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_104
    :goto_104
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 525
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_104

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "pause"

    aput-object v4, v3, v9

    const-string v4, "resume"

    aput-object v4, v3, v11

    const-string v4, "skip"

    aput-object v4, v3, v12

    const-string v4, "to_recovery"

    aput-object v4, v3, v10

    const-string v4, "double_on"

    aput-object v4, v3, v13

    const/4 v4, 0x5

    const-string v5, "double_off"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "stop"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_104

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_104

    .line 527
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_104

    .line 532
    :cond_14c
    return-void
.end method

.method public static step(IZ)I
    .registers 8

    .prologue
    .line 107
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

.method private static unit(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 204
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UNITS:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_18

    aget-object v4, v2, v0

    .line 205
    aget-object v5, v4, v1

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 206
    const/4 v0, 0x1

    aget-object v0, v4, v0

    .line 209
    :goto_14
    return-object v0

    .line 204
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 209
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
