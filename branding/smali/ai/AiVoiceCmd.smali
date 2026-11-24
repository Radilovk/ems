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

.field private static final TEENS_TENS:[[Ljava/lang/String;

.field private static final UNITS:[[Ljava/lang/String;

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

    fill-array-data v1, :array_4fe

    aput-object v1, v0, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_508

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

    fill-array-data v2, :array_510

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
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u0438\u043d"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u043d\u0430"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0435\u0434\u043d\u043e"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0434\u0432\u0430"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u0434\u0432\u0435"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0438"

    aput-object v3, v2, v5

    const-string v3, "3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0447\u0435\u0442\u0438\u0440\u0438"

    aput-object v3, v2, v5

    const-string v3, "4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043f\u0435\u0442"

    aput-object v3, v2, v5

    const-string v3, "5"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0448\u0435\u0441\u0442"

    aput-object v3, v2, v5

    const-string v3, "6"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u0441\u0435\u0434\u0435\u043c"

    aput-object v3, v2, v5

    const-string v3, "7"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u043e\u0441\u0435\u043c"

    aput-object v3, v2, v5

    const-string v3, "8"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

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

    return-void

    .line 23
    nop

    :array_4fe
    .array-data 4
        0x2
        0x9
        0x3
    .end array-data

    :array_508
    .array-data 4
        0x2
        0x9
    .end array-data

    :array_510
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
    .line 485
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

    .line 486
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 487
    const/4 v0, 0x1

    .line 490
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
    .line 433
    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 435
    if-eqz p0, :cond_a

    .line 436
    :try_start_7
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_10

    .line 441
    :cond_a
    :goto_a
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 442
    return-object v0

    .line 438
    :catch_10
    move-exception v1

    .line 439
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_a
.end method

.method private static varargs has(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 494
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 495
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 496
    const/4 v0, 0x1

    .line 499
    :cond_e
    return v0

    .line 494
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static hasMuscle(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 402
    move v0, v1

    :goto_2
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    move v2, v1

    .line 403
    :goto_8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 404
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 409
    :goto_1b
    return v1

    .line 403
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 402
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 409
    :cond_22
    const/4 v1, 0x0

    goto :goto_1b
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

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 480
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 481
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

    .line 203
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_8

    .line 212
    :goto_7
    return-object v0

    .line 207
    :cond_8
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TEENS_TENS:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    .line 208
    aget-object v5, v4, v1

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 209
    const/4 v0, 0x1

    aget-object v0, v4, v0

    goto :goto_7

    .line 207
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 212
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

    if-ge v0, v2, :cond_bc

    .line 167
    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->num(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    if-eqz v5, :cond_78

    if-lez v0, :cond_3f

    const-string v2, "\u0441"

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "\u043d\u0430"

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "\u0434\u043e"

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_3f
    add-int/lit8 v2, v0, 0x1

    array-length v6, v3

    if-ge v2, v6, :cond_50

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v3, v2

    const-string v6, "\u043f\u0440\u043e\u0446\u0435\u043d\u0442"

    .line 169
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_50
    add-int/lit8 v2, v0, 0x3

    array-length v6, v3

    if-ge v2, v6, :cond_78

    const-string v2, "\u0438"

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    .line 170
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    add-int/lit8 v2, v0, 0x3

    aget-object v2, v3, v2

    const-string v6, "\u043f\u0440\u043e\u0446\u0435\u043d\u0442"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    :cond_6d
    const/4 v2, 0x1

    .line 171
    :goto_6e
    if-nez v2, :cond_7a

    .line 172
    aget-object v2, v3, v0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_78
    move v2, v1

    .line 170
    goto :goto_6e

    .line 175
    :cond_7a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 177
    const/16 v5, 0x14

    if-lt v2, v5, :cond_b4

    rem-int/lit8 v5, v2, 0xa

    if-nez v5, :cond_b4

    const/16 v5, 0x64

    if-ge v2, v5, :cond_b4

    add-int/lit8 v5, v0, 0x2

    array-length v6, v3

    if-ge v5, v6, :cond_b4

    const-string v5, "\u0438"

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    add-int/lit8 v5, v0, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b4

    .line 178
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->unit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 179
    add-int/lit8 v0, v0, 0x2

    .line 181
    :cond_b4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 183
    :cond_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    :goto_c1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_da

    .line 185
    if-lez v1, :cond_ce

    .line 186
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_ce
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 190
    :cond_da
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 216
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 217
    if-nez p0, :cond_a

    move-object v0, v3

    .line 252
    :goto_9
    return-object v0

    .line 222
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

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 224
    const/4 v2, 0x0

    .line 226
    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_3f
    if-ge v4, v6, :cond_b2

    aget-object v1, v5, v4

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_52

    move v1, v0

    .line 226
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    goto :goto_3f

    .line 230
    :cond_52
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v7

    .line 231
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    if-eqz v1, :cond_ce

    const-string v1, "set"

    iget-object v8, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 232
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 233
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    move v1, v0

    .line 235
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

    .line 236
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 237
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 240
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

    .line 241
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 242
    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 245
    :cond_a9
    iget v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    if-ltz v0, :cond_4e

    .line 246
    iget v0, v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    iput v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->minutes:I

    goto :goto_4e

    .line 249
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

    .line 250
    :cond_c6
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_cb
    move-object v0, v3

    .line 252
    goto/16 :goto_9

    :cond_ce
    move v1, v0

    goto :goto_69
.end method

.method private static parseOne(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 15

    .prologue
    .line 256
    new-instance v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 257
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

    .line 259
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

    .line 260
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_time"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 398
    :goto_5e
    return-object v0

    .line 263
    :cond_5f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " \u043f\u0443\u043b\u0441"

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 264
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_hr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 265
    goto :goto_5e

    .line 267
    :cond_76
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

    if-eqz v0, :cond_9c

    .line 268
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "ask_strength"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 269
    goto :goto_5e

    .line 272
    :cond_9c
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

    if-eqz v0, :cond_10d

    .line 273
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

    if-eqz v0, :cond_e5

    .line 274
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_next"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e2
    move-object v0, v5

    .line 280
    goto/16 :goto_5e

    .line 275
    :cond_e5
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

    if-eqz v0, :cond_105

    .line 276
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_prev"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    .line 278
    :cond_105
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "music_toggle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    .line 283
    :cond_10d
    const-string v0, "(?:\u0441\u043b\u0435\u0434|\u043e\u0449\u0435|\u0434\u043e|\u0437\u0430)\\s*(\\d{1,2})\\s*(?:\u043c\u0438\u043d|\u043c\u0438\u043d\u0443\u0442\u0438|\u043c\u0438\u043d\u0443\u0442\u0430)?"

    .line 284
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_15f

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

    if-eqz v1, :cond_15f

    .line 286
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

    .line 287
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v1, "end_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 288
    goto/16 :goto_5e

    .line 292
    :cond_15f
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

    if-eqz v0, :cond_245

    .line 293
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

    .line 294
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

    .line 295
    if-nez v0, :cond_1e9

    if-eqz v1, :cond_20e

    .line 296
    :cond_1e9
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "second"

    if-eqz v0, :cond_20b

    const-string v0, "up"

    :goto_1f3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 298
    goto/16 :goto_5e

    .line 296
    :cond_20b
    const-string v0, "down"

    goto :goto_1f3

    .line 300
    :cond_20e
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

    .line 301
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    if-eqz v0, :cond_242

    const-string v0, "double_off"

    :goto_239
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 303
    goto/16 :goto_5e

    .line 301
    :cond_242
    const-string v0, "double_on"

    goto :goto_239

    .line 306
    :cond_245
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

    if-eqz v0, :cond_2ee

    .line 307
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

    if-eqz v0, :cond_2e9

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

    .line 308
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e9

    const/4 v0, 0x1

    .line 309
    :goto_2c7
    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "width"

    if-eqz v0, :cond_2eb

    const-string v0, "up"

    :goto_2d1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 311
    goto/16 :goto_5e

    .line 308
    :cond_2e9
    const/4 v0, 0x0

    goto :goto_2c7

    .line 309
    :cond_2eb
    const-string v0, "down"

    goto :goto_2d1

    .line 315
    :cond_2ee
    const-string v0, "\\s\u0441\\s*(\\d{1,3})(?=\\s|%)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_38a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 317
    :goto_30c
    const-string v0, "(?:^|\\s)(?:\u043d\u0430|\u0434\u043e)?\\s*(\\d{1,3})\\s*(?:%|\u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430|\u043f\u0440\u043e\u0446\u0435\u043d\u0442)?(?=\\s|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 319
    if-nez v1, :cond_3f1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3f1

    .line 320
    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 321
    const/4 v2, 0x0

    .line 322
    const/4 v0, 0x1

    :goto_334
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_390

    .line 323
    const/4 v3, 0x1

    :goto_33a
    sget-object v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v7, v7, v0

    array-length v7, v7

    if-ge v3, v7, :cond_387

    .line 324
    sget-object v7, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 325
    sget-object v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_38d

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_38d

    sget-object v8, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa

    if-gt v8, v9, :cond_38d

    const-string v8, "legs"

    .line 326
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37c

    const-string v8, "thighs"

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_38d

    const-string v8, "calves"

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_38d

    .line 327
    :cond_37c
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    invoke-direct {v3, v7, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    const/4 v2, 0x1

    .line 322
    :cond_387
    add-int/lit8 v0, v0, 0x1

    goto :goto_334

    .line 316
    :cond_38a
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_30c

    .line 323
    :cond_38d
    add-int/lit8 v3, v3, 0x1

    goto :goto_33a

    .line 333
    :cond_390
    if-nez v2, :cond_3e2

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

    if-nez v0, :cond_3d6

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

    if-eqz v0, :cond_3e2

    .line 334
    :cond_3d6
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v3, "strength"

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_3e2
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f1

    .line 337
    const-string v0, "set"

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    move-object v0, v5

    .line 338
    goto/16 :goto_5e

    .line 341
    :cond_3f1
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

    .line 342
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u043f\u043e-\u0441\u043b\u0430\u0431\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u043f\u043e \u0441\u043b\u0430\u0431\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "\u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "\u043f\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "\u043e\u0442\u0441\u043b\u0430\u0431\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_562

    .line 343
    const-string v0, "down"

    .line 345
    :goto_446
    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->dir:Ljava/lang/String;

    .line 346
    iput-boolean v2, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->small:Z

    .line 347
    if-nez v0, :cond_73d

    if-eqz p1, :cond_73d

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->hasMuscle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73d

    .line 349
    if-nez v2, :cond_458

    if-eqz p2, :cond_5ce

    :cond_458
    const/4 v0, 0x1

    :goto_459
    move v2, v0

    .line 353
    :goto_45a
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

    .line 354
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

    .line 355
    if-nez v7, :cond_49e

    if-eqz v8, :cond_4bc

    :cond_49e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u0430\u0443\u0437"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4bc

    .line 356
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "pause"

    if-eqz v7, :cond_5d1

    const-string v0, "up"

    :goto_4b6
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_4bc
    if-nez v7, :cond_4c0

    if-eqz v8, :cond_4ec

    :cond_4c0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4ec

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u0430\u0443\u0437"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4ec

    .line 359
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "impulse"

    if-eqz v7, :cond_5d5

    const-string v0, "up"

    :goto_4e6
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_4ec
    if-nez v7, :cond_4f0

    if-eqz v8, :cond_50e

    :cond_4f0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u043f\u043e\u0447\u0438\u0432\u043a"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50e

    .line 362
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v9, "rest"

    if-eqz v7, :cond_5d9

    const-string v0, "up"

    :goto_508
    invoke-direct {v4, v9, v0, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_50e
    if-eqz p1, :cond_669

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_669

    .line 365
    const/4 v3, 0x0

    .line 366
    const/4 v0, 0x1

    :goto_51a
    sget-object v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_607

    .line 367
    const/4 v4, 0x1

    :goto_520
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    array-length v9, v9

    if-ge v4, v9, :cond_601

    .line 368
    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    aget-object v9, v9, v4

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_55f

    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_55f

    .line 369
    const-string v9, "legs"

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5dd

    const-string v9, "thighs"

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_55f

    const-string v9, "calves"

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->contains(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5dd

    .line 367
    :cond_55f
    add-int/lit8 v4, v4, 0x1

    goto :goto_520

    .line 343
    :cond_562
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u043f\u043e \u0441\u0438\u043b\u043d\u043e"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "\u043f\u043e\u0432\u0435\u0447\u0435"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "\u043a\u0430\u0447\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "\u0432\u0434\u0438\u0433\u043d\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "\u0437\u0430\u0441\u0438\u043b\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "\u0443\u0441\u0438\u043b\u0438"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_598

    .line 344
    const-string v0, "up"

    goto/16 :goto_446

    :cond_598
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u043c\u0430\u0445\u043d\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "\u0431\u0435\u0437 "

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b4

    const-string v0, "off"

    goto/16 :goto_446

    :cond_5b4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0432\u043a\u043b\u044e\u0447\u0438"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "\u0434\u043e\u0431\u0430\u0432\u0438"

    aput-object v4, v0, v3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5cb

    const-string v0, "on"

    goto/16 :goto_446

    :cond_5cb
    const/4 v0, 0x0

    goto/16 :goto_446

    .line 349
    :cond_5ce
    const/4 v0, 0x0

    goto/16 :goto_459

    .line 356
    :cond_5d1
    const-string v0, "down"

    goto/16 :goto_4b6

    .line 359
    :cond_5d5
    const-string v0, "down"

    goto/16 :goto_4e6

    .line 362
    :cond_5d9
    const-string v0, "down"

    goto/16 :goto_508

    .line 372
    :cond_5dd
    iget-object v4, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {v9, v10, p1, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->WORDS:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v9, 0x0

    aget-object v4, v4, v9

    sget-object v9, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/16 v9, 0xa

    if-gt v4, v9, :cond_605

    const/4 v4, 0x1

    :goto_600
    or-int/2addr v3, v4

    .line 366
    :cond_601
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_51a

    .line 373
    :cond_605
    const/4 v4, 0x0

    goto :goto_600

    .line 381
    :cond_607
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_669

    const-string v0, "up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61f

    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_669

    :cond_61f
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

    .line 382
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_669

    .line 383
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    const-string v4, "strength"

    invoke-direct {v3, v4, p1, v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_669
    if-nez p1, :cond_6db

    if-nez v7, :cond_6db

    if-nez v8, :cond_6db

    .line 387
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

    if-eqz v0, :cond_68e

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "pause"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_68e
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

    if-eqz v0, :cond_6bc

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "resume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_6bc
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

    if-eqz v0, :cond_6db

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "stop"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_6db
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

    if-eqz v0, :cond_6fa

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "skip"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_6fa
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

    if-eqz v0, :cond_714

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    const-string v2, "to_recovery"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_714
    if-eqz v1, :cond_73a

    .line 394
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 395
    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    goto :goto_71c

    :cond_73a
    move-object v0, v5

    .line 398
    goto/16 :goto_5e

    :cond_73d
    move-object p1, v0

    goto/16 :goto_45a
.end method

.method public static parseServer(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 414
    new-instance v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    .line 416
    :try_start_6
    new-instance v1, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;

    move-result-object v2

    .line 417
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

    .line 418
    check-cast v2, Ljava/util/Map;

    const-string v1, "command"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 419
    :goto_2b
    if-nez v1, :cond_34

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    move-object v1, v3

    .line 428
    :goto_31
    return-object v1

    .line 418
    :cond_32
    const/4 v1, 0x0

    goto :goto_2b

    .line 423
    :cond_34
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->read(Ljava/util/Map;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V

    .line 424
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

    .line 428
    goto :goto_31

    .line 424
    :cond_50
    const/4 v1, 0x0

    goto :goto_4c

    .line 425
    :catch_52
    move-exception v1

    .line 426
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

    .line 447
    const-string v0, "commands"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_ee

    .line 448
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

    .line 449
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1b

    move-object v0, v1

    .line 450
    check-cast v0, Ljava/util/Map;

    const-string v2, "target"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v1

    .line 451
    check-cast v0, Ljava/util/Map;

    const-string v3, "dir"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v1

    .line 452
    check-cast v0, Ljava/util/Map;

    const-string v4, "amount"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 453
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

    .line 454
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

    .line 455
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    .line 456
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x6

    if-ge v0, v5, :cond_1b

    const-string v0, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-ltz v4, :cond_1b

    .line 458
    :cond_9f
    const-string v0, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;I)V

    .line 460
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

    .line 461
    :cond_c8
    iput v4, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 463
    :cond_ca
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 453
    :cond_d1
    const/4 v0, -0x1

    move v4, v0

    goto :goto_59

    .line 459
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

    .line 468
    :cond_ee
    const-string v0, "actions"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_14c

    .line 469
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

    .line 470
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

    .line 471
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_104

    .line 472
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_104

    .line 477
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

    .line 194
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->UNITS:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_18

    aget-object v4, v2, v0

    .line 195
    aget-object v5, v4, v1

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 196
    const/4 v0, 0x1

    aget-object v0, v4, v0

    .line 199
    :goto_14
    return-object v0

    .line 194
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 199
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
