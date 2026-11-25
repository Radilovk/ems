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

    .line 119
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

    .line 155
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

    .line 157
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

    .line 233
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

    .line 235
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

    .line 89
    if-nez p0, :cond_6

    move-object v0, v3

    .line 109
    :goto_5
    return-object v0

    .line 92
    :cond_6
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 93
    const/4 v1, -0x1

    .line 95
    sget-object v6, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WAKE:[Ljava/lang/String;

    array-length v7, v6

    move v4, v2

    move v0, v2

    :goto_12
    if-ge v4, v7, :cond_29

    aget-object v8, v6, v4

    .line 96
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 97
    if-ltz v2, :cond_25

    if-ltz v1, :cond_20

    if-ge v2, v1, :cond_25

    .line 99
    :cond_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    .line 95
    :cond_25
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12

    .line 102
    :cond_29
    if-gez v1, :cond_2d

    move-object v0, v3

    .line 103
    goto :goto_5

    .line 105
    :cond_2d
    add-int/2addr v0, v1

    .line 106
    :goto_2e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_41

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 109
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
    .line 547
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

    .line 548
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 549
    const/4 v0, 0x1

    .line 552
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
    .line 495
    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 497
    if-eqz p0, :cond_a

    .line 498
    :try_start_7
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_10

    .line 503
    :cond_a
    :goto_a
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 504
    return-object v0

    .line 500
    :catch_10
    move-exception v1

    .line 501
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_a
.end method

.method private static varargs has(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 556
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 557
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 558
    const/4 v0, 0x1

    .line 561
    :cond_e
    return v0

    .line 556
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static hasMuscle(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 464
    move v0, v1

    :goto_2
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    move v2, v1

    .line 465
    :goto_8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 466
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 471
    :goto_1b
    return v1

    .line 465
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 464
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 471
    :cond_22
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static in(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 202
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 203
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 204
    const/4 v0, 0x1

    .line 207
    :cond_e
    return v0

    .line 202
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static isQuestion(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    if-nez p0, :cond_5

    .line 152
    :cond_4
    :goto_4
    return v0

    .line 141
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

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v0, v1

    .line 143
    goto :goto_4

    .line 145
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

    .line 147
    array-length v5, v4

    move v2, v0

    :goto_9e
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 148
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ab

    move v0, v1

    .line 149
    goto/16 :goto_4

    .line 147
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e
.end method

.method public static mayBeCommand(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    if-nez p0, :cond_5

    .line 250
    :goto_4
    return v0

    .line 246
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

    .line 247
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

    .line 248
    goto :goto_4

    .line 250
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
    .line 542
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 543
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

    .line 220
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_8

    .line 229
    :goto_7
    return-object v0

    .line 224
    :cond_8
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TEENS_TENS:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    .line 225
    aget-object v5, v4, v1

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 226
    const/4 v0, 0x1

    aget-object v0, v4, v0

    goto :goto_7

    .line 224
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 229
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static numbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v0, " "

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 173
    :goto_e
    array-length v2, v3

    if-ge v0, v2, :cond_d5

    .line 174
    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
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

    .line 176
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

    .line 177
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

    .line 178
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

    .line 179
    :goto_86
    if-nez v2, :cond_93

    .line 180
    aget-object v2, v3, v0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_91
    move v2, v1

    .line 178
    goto :goto_86

    .line 183
    :cond_93
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 185
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

    .line 186
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 187
    add-int/lit8 v0, v0, 0x2

    .line 189
    :cond_cd
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 191
    :cond_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    :goto_da
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f3

    .line 193
    if-lez v1, :cond_e7

    .line 194
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :cond_e7
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 198
    :cond_f3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onlyWakeFragment(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 79
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "\u043e\u043a\u0435\u0439"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "\u043e\u043a\u0430\u0439"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "\u043e\u043a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "okay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "\u043e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "\u043e\u043a\u0430\u0439 \u0442\u0440\u0435\u043d\u0435\u0440"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    .line 80
    :goto_3d
    return v0

    .line 81
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 256
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 257
    if-nez p0, :cond_a

    move-object v0, v3

    .line 292
    :goto_9
    return-object v0

    .line 262
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

    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 264
    const/4 v2, 0x0

    .line 266
    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_3f
    if-ge v4, v6, :cond_b2

    aget-object v1, v5, v4

    .line 267
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_52

    move v1, v0

    .line 266
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    goto :goto_3f

    .line 270
    :cond_52
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v7

    .line 271
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    if-eqz v1, :cond_ce

    const-string v1, "set"

    iget-object v8, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 272
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 273
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    move v1, v0

    .line 275
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

    .line 276
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 277
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 280
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

    .line 281
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 282
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 285
    :cond_a9
    iget v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    if-ltz v0, :cond_4e

    .line 286
    iget v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    iput v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    goto :goto_4e

    .line 289
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

    .line 290
    :cond_c6
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_cb
    move-object v0, v3

    .line 292
    goto/16 :goto_9

    :cond_ce
    move v1, v0

    goto :goto_69
.end method

.method private static parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 15

    .prologue
    .line 296
    new-instance v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 297
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

    .line 299
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

    .line 300
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_time"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 460
    :goto_5e
    return-object v0

    .line 303
    :cond_5f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " \u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 304
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_hr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 305
    goto :goto_5e

    .line 308
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

    .line 311
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 312
    goto :goto_5e

    .line 314
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

    .line 315
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_strength"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 316
    goto/16 :goto_5e

    .line 319
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

    .line 320
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

    .line 321
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_next"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_136
    move-object v0, v5

    .line 327
    goto/16 :goto_5e

    .line 322
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

    .line 323
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_prev"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 325
    :cond_159
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_toggle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 330
    :cond_161
    const-string v0, "(?:\u0441\u043b\u0435\u0434|\u043e\u0449\u0435|\u0434\u043e|\u0437\u0430)\\s*(\\d{1,2})\\s*(?:\u043c\u0438\u043d|\u043c\u0438\u043d\u0443\u0442\u0438|\u043c\u0438\u043d\u0443\u0442\u0430)?"

    .line 331
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 332
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

    .line 333
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

    .line 334
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "end_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 335
    goto/16 :goto_5e

    .line 339
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

    .line 340
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

    .line 341
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

    .line 342
    if-nez v0, :cond_23d

    if-eqz v1, :cond_262

    .line 343
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

    .line 344
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 345
    goto/16 :goto_5e

    .line 343
    :cond_25f
    const-string v0, "down"

    goto :goto_247

    .line 347
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

    .line 348
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    if-eqz v0, :cond_296

    const-string v0, "double_off"

    :goto_28d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 350
    goto/16 :goto_5e

    .line 348
    :cond_296
    const-string v0, "double_on"

    goto :goto_28d

    .line 353
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

    .line 354
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

    .line 355
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33d

    const/4 v0, 0x1

    .line 356
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

    .line 357
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 358
    goto/16 :goto_5e

    .line 355
    :cond_33d
    const/4 v0, 0x0

    goto :goto_31b

    .line 356
    :cond_33f
    const-string v0, "down"

    goto :goto_325

    .line 362
    :cond_342
    const-string v0, "\\s\u0441\\s*(\\d{1,3})(?=\\s|%)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 363
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

    .line 366
    :goto_35f
    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UP_WORDS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 367
    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->DOWN_WORDS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    .line 368
    if-nez v0, :cond_803

    if-nez v4, :cond_371

    if-eqz v7, :cond_803

    :cond_371
    const-string v1, "(?:^|\\s)(?:\u043d\u0430|\u0434\u043e)\\s*\\d{1,3}"

    .line 369
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_803

    .line 370
    const-string v1, "(?:^|\\s)(\\d{1,3})(?=\\s|%|$)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_803

    .line 372
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 375
    :goto_39f
    const-string v0, "(?:^|\\s)(?:\u043d\u0430|\u0434\u043e)?\\s*(\\d{1,3})\\s*(?:%|\u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430|\u043f\u0440\u043e\u0446\u0435\u043d\u0442)?(?=\\s|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 376
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 377
    if-nez v1, :cond_484

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_484

    .line 378
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

    .line 379
    const/4 v2, 0x0

    .line 380
    const/4 v0, 0x1

    :goto_3c7
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_423

    .line 381
    const/4 v3, 0x1

    :goto_3cd
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    array-length v9, v9

    if-ge v3, v9, :cond_41a

    .line 382
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    .line 383
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

    .line 384
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

    .line 385
    :cond_40f
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    invoke-direct {v3, v9, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    const/4 v2, 0x1

    .line 380
    :cond_41a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c7

    .line 363
    :cond_41d
    const/4 v0, 0x0

    goto/16 :goto_35f

    .line 381
    :cond_420
    add-int/lit8 v3, v3, 0x1

    goto :goto_3cd

    .line 391
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

    .line 392
    :cond_469
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "strength"

    invoke-direct {v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_475
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_484

    .line 395
    const-string v0, "set"

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 396
    goto/16 :goto_5e

    .line 399
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

    .line 400
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

    .line 402
    const-string v0, "down"

    .line 404
    :goto_4f1
    if-eqz v1, :cond_4f9

    if-eq v4, v7, :cond_4f9

    .line 405
    if-eqz v4, :cond_68d

    const-string v0, "up"

    .line 407
    :cond_4f9
    :goto_4f9
    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 408
    iput-boolean v2, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    .line 409
    if-nez v0, :cond_800

    if-eqz p1, :cond_800

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->hasMuscle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_800

    .line 411
    if-nez v2, :cond_50b

    if-eqz p2, :cond_691

    :cond_50b
    const/4 v0, 0x1

    :goto_50c
    move v2, v0

    .line 415
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

    .line 416
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

    .line 417
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

    .line 418
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "pause"

    if-eqz v7, :cond_694

    const-string v0, "up"

    :goto_569
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
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

    .line 421
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "impulse"

    if-eqz v7, :cond_698

    const-string v0, "up"

    :goto_599
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
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

    .line 424
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "rest"

    if-eqz v7, :cond_69c

    const-string v0, "up"

    :goto_5bb
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_5c1
    if-eqz p1, :cond_72c

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72c

    .line 427
    const/4 v3, 0x0

    .line 428
    const/4 v0, 0x1

    :goto_5cd
    sget-object v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_6ca

    .line 429
    const/4 v4, 0x1

    :goto_5d3
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    array-length v9, v9

    if-ge v4, v9, :cond_6c4

    .line 430
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

    .line 431
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

    .line 429
    :cond_612
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d3

    .line 402
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

    .line 403
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

    .line 405
    :cond_68d
    const-string v0, "down"

    goto/16 :goto_4f9

    .line 411
    :cond_691
    const/4 v0, 0x0

    goto/16 :goto_50c

    .line 418
    :cond_694
    const-string v0, "down"

    goto/16 :goto_569

    .line 421
    :cond_698
    const-string v0, "down"

    goto/16 :goto_599

    .line 424
    :cond_69c
    const-string v0, "down"

    goto/16 :goto_5bb

    .line 434
    :cond_6a0
    iget-object v4, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {v9, v10, p1, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
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

    .line 428
    :cond_6c4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5cd

    .line 435
    :cond_6c8
    const/4 v4, 0x0

    goto :goto_6c3

    .line 443
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

    .line 444
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72c

    .line 445
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v4, "strength"

    invoke-direct {v3, v4, p1, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_72c
    if-nez p1, :cond_79e

    if-nez v7, :cond_79e

    if-nez v8, :cond_79e

    .line 449
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

    .line 450
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

    .line 451
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

    .line 453
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

    .line 454
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

    .line 455
    :cond_7d7
    if-eqz v1, :cond_7fd

    .line 456
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

    .line 457
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

    .line 460
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

    .line 476
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 478
    :try_start_6
    new-instance v1, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;

    move-result-object v2

    .line 479
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

    .line 480
    check-cast v2, Ljava/util/Map;

    const-string v1, "command"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 481
    :goto_2b
    if-nez v1, :cond_34

    .line 482
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    move-object v1, v3

    .line 490
    :goto_31
    return-object v1

    .line 480
    :cond_32
    const/4 v1, 0x0

    goto :goto_2b

    .line 485
    :cond_34
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V

    .line 486
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

    .line 490
    goto :goto_31

    .line 486
    :cond_50
    const/4 v1, 0x0

    goto :goto_4c

    .line 487
    :catch_52
    move-exception v1

    .line 488
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

    .line 509
    const-string v0, "commands"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_ee

    .line 510
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

    .line 511
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1b

    move-object v0, v1

    .line 512
    check-cast v0, Ljava/util/Map;

    const-string v2, "target"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v1

    .line 513
    check-cast v0, Ljava/util/Map;

    const-string v3, "dir"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v1

    .line 514
    check-cast v0, Ljava/util/Map;

    const-string v4, "amount"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
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

    .line 516
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

    .line 517
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    .line 518
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x6

    if-ge v0, v5, :cond_1b

    const-string v0, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-ltz v4, :cond_1b

    .line 520
    :cond_9f
    const-string v0, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    .line 522
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

    .line 523
    :cond_c8
    iput v4, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 525
    :cond_ca
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 515
    :cond_d1
    const/4 v0, -0x1

    move v4, v0

    goto :goto_59

    .line 521
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

    .line 530
    :cond_ee
    const-string v0, "actions"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_14c

    .line 531
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

    .line 532
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

    .line 533
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_104

    .line 534
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_104

    .line 539
    :cond_14c
    return-void
.end method

.method public static step(IZ)I
    .registers 8

    .prologue
    .line 114
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

    .line 211
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UNITS:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_18

    aget-object v4, v2, v0

    .line 212
    aget-object v5, v4, v1

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 213
    const/4 v0, 0x1

    aget-object v0, v4, v0

    .line 216
    :goto_14
    return-object v0

    .line 211
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 216
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
