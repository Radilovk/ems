.class public final Lcom/isaigu/gymapp/ai/AiSpeak;
.super Ljava/lang/Object;
.source "AiSpeak.java"


# static fields
.field private static final CHANNEL:Ljava/util/regex/Pattern;

.field private static final OBJECT:[[Ljava/lang/String;

.field private static final OFF:Ljava/util/regex/Pattern;

.field private static final SIGNED:Ljava/util/regex/Pattern;

.field private static final SUBJECT:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u043a\u0440\u0430\u043a\u0430"

    aput-object v2, v1, v4

    const-string v2, "\u041a\u0440\u0430\u043a\u0430\u0442\u0430 \u0441\u0430"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u0431\u0435\u0434\u0440\u0430"

    aput-object v2, v1, v4

    const-string v2, "\u0411\u0435\u0434\u0440\u0430\u0442\u0430 \u0441\u0430"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u043f\u0440\u0430\u0441\u0446\u0438"

    aput-object v2, v1, v4

    const-string v2, "\u041f\u0440\u0430\u0441\u0446\u0438\u0442\u0435 \u0441\u0430"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v2, v1, v4

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0435"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v2, v1, v4

    const-string v2, "\u041a\u043e\u0440\u0435\u043c\u044a\u0442 \u0435"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0440\u044a\u0446\u0435"

    aput-object v3, v2, v4

    const-string v3, "\u0420\u044a\u0446\u0435\u0442\u0435 \u0441\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v3, v2, v4

    const-string v3, "\u0413\u044a\u0440\u0434\u0438\u0442\u0435 \u0441\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0433\u0440\u044a\u0431"

    aput-object v3, v2, v4

    const-string v3, "\u0413\u044a\u0440\u0431\u044a\u0442 \u0435"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u043a\u0440\u044a\u0441\u0442"

    aput-object v3, v2, v4

    const-string v3, "\u041a\u0440\u044a\u0441\u0442\u044a\u0442 \u0435"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0430\u043f\u0435\u0446"

    aput-object v3, v2, v4

    const-string v3, "\u0422\u0440\u0430\u043f\u0435\u0446\u044a\u0442 \u0435"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    aput-object v3, v2, v4

    const-string v3, "\u0412\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438 \u0441\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->SUBJECT:[[Ljava/lang/String;

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u043a\u0440\u0430\u043a\u0430"

    aput-object v2, v1, v4

    const-string v2, "\u043a\u0440\u0430\u043a\u0430\u0442\u0430"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u0431\u0435\u0434\u0440\u0430"

    aput-object v2, v1, v4

    const-string v2, "\u0431\u0435\u0434\u0440\u0430\u0442\u0430"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u043f\u0440\u0430\u0441\u0446\u0438"

    aput-object v2, v1, v4

    const-string v2, "\u043f\u0440\u0430\u0441\u0446\u0438\u0442\u0435"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v2, v1, v4

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v2, v1, v4

    const-string v2, "\u043a\u043e\u0440\u0435\u043c\u0430"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0440\u044a\u0446\u0435"

    aput-object v3, v2, v4

    const-string v3, "\u0440\u044a\u0446\u0435\u0442\u0435"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v3, v2, v4

    const-string v3, "\u0433\u044a\u0440\u0434\u0438\u0442\u0435"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0433\u0440\u044a\u0431"

    aput-object v3, v2, v4

    const-string v3, "\u0433\u044a\u0440\u0431\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u043a\u0440\u044a\u0441\u0442"

    aput-object v3, v2, v4

    const-string v3, "\u043a\u0440\u044a\u0441\u0442\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0442\u0440\u0430\u043f\u0435\u0446"

    aput-object v3, v2, v4

    const-string v3, "\u0442\u0440\u0430\u043f\u0435\u0446\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    aput-object v3, v2, v4

    const-string v3, "\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->OBJECT:[[Ljava/lang/String;

    .line 24
    const-string v0, "^(.+?) (\\d+) %$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->CHANNEL:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "^(.+?) \u0438\u0437\u043a\u043b\\.$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->OFF:Ljava/util/regex/Pattern;

    .line 26
    const-string v0, "^(\u0438\u043c\u043f\u0443\u043b\u0441|\u043f\u0430\u0443\u0437\u0430|Hz|\u043f\u043e\u0447\u0438\u0432\u043a\u0438|\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430) ([+\u2212-]?)(\\d+) ?(s|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->SIGNED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 135
    if-nez p0, :cond_5

    .line 136
    const-string v0, ""

    .line 149
    :goto_4
    return-object v0

    .line 138
    :cond_5
    const-string v0, "\u2713"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2726"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u25b6"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u23f8"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u23ed"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2192"

    const-string v2, ","

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00b7"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2022"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u201e"

    const-string v2, ""

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u201c"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u201d"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00ab"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00bb"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ", "

    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, " \u043d\u0430 "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " \u2014 "

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " \u2013 "

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2014"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "(\\d)\\s*%"

    const-string v2, "$1 \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const-string v2, " \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "\\+\\s*(\\d)"

    const-string v2, "\u043f\u043b\u044e\u0441 $1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\u2212]\\s*(\\d)"

    const-string v2, "\u043c\u0438\u043d\u0443\u0441 $1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "(\\d)\\s*Hz\\b"

    const-string v2, "$1 \u0445\u0435\u0440\u0446\u0430"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\d)\\s*\u00b5s\\b"

    const-string v2, "$1 \u043c\u0438\u043a\u0440\u043e\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\d) s\\b"

    const-string v2, "$1 \u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "\\s*,\\s*,+"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s{2,}"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[,\\s]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[,\\s]+$"

    const-string v2, ""

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method public static natural(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 30
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 31
    :cond_c
    const-string v0, ""

    .line 43
    :goto_e
    return-object v0

    .line 33
    :cond_f
    const-string v0, "bg"

    const-string v1, "en"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 34
    const-string v0, " \u00b7 "

    const-string v1, ". "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 36
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v0, " \u00b7 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_3a
    if-ge v1, v4, :cond_62

    aget-object v0, v3, v1

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSpeak;->sentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5b

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5f

    const-string v0, " "

    :goto_54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    .line 40
    :cond_5f
    const-string v0, ""

    goto :goto_54

    .line 43
    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static seconds(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u0435\u0434\u043d\u0430 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "\u0434\u0432\u0435 \u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    goto :goto_a

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static sentence(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 48
    const-string v0, ""

    .line 126
    :goto_d
    return-object v0

    .line 50
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->CHANNEL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 52
    sget-object v7, Lcom/isaigu/gymapp/ai/AiSpeak;->SUBJECT:[[Ljava/lang/String;

    array-length v8, v7

    move v0, v1

    :goto_1e
    if-ge v0, v8, :cond_55

    aget-object v9, v7, v0

    .line 53
    aget-object v10, v9, v1

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v9, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043d\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 52
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 57
    :cond_55
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0435 \u043d\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 61
    :cond_7f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->OFF:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 63
    sget-object v7, Lcom/isaigu/gymapp/ai/AiSpeak;->OBJECT:[[Ljava/lang/String;

    array-length v8, v7

    move v0, v1

    :goto_8f
    if-ge v0, v8, :cond_bf

    aget-object v9, v7, v0

    .line 64
    aget-object v10, v9, v1

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438\u0445 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 63
    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 69
    :cond_bf
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSpeak;->SIGNED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 70
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 71
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "\u2212"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    :cond_e7
    move v0, v2

    .line 73
    :goto_e8
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    const-string v8, "0"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 75
    const-string v9, "\u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_126

    .line 76
    if-eqz v8, :cond_102

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043a\u0430\u043a\u0442\u043e \u0435 \u043f\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    goto/16 :goto_d

    :cond_100
    move v0, v1

    .line 72
    goto :goto_e8

    .line 76
    :cond_102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiSpeak;->seconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_123

    const-string v0, " \u043f\u043e-\u043a\u044a\u0441."

    :goto_119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_123
    const-string v0, " \u043f\u043e-\u0434\u044a\u043b\u044a\u0433."

    goto :goto_119

    .line 78
    :cond_126
    const-string v9, "\u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_158

    .line 79
    if-eqz v8, :cond_134

    const-string v0, "\u041f\u0430\u0443\u0437\u0430\u0442\u0430 \u043c\u0435\u0436\u0434\u0443 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0435 \u043f\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    goto/16 :goto_d

    .line 80
    :cond_134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0430\u0443\u0437\u0430\u0442\u0430 \u043c\u0435\u0436\u0434\u0443 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0435 \u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiSpeak;->seconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_155

    const-string v0, " \u043f\u043e-\u043a\u044a\u0441\u0430."

    :goto_14b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_155
    const-string v0, " \u043f\u043e-\u0434\u044a\u043b\u0433\u0430."

    goto :goto_14b

    .line 82
    :cond_158
    const-string v9, "Hz"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18c

    .line 83
    if-eqz v8, :cond_166

    const-string v0, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0435 \u043f\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    goto/16 :goto_d

    :cond_166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0435 \u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_189

    const-string v0, " \u043f\u043e-\u043d\u0438\u0441\u043a\u0430."

    :goto_17f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_189
    const-string v0, " \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430."

    goto :goto_17f

    .line 85
    :cond_18c
    const-string v9, "\u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c0

    .line 86
    if-eqz v8, :cond_19a

    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435 \u0441\u0430 \u043f\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    goto/16 :goto_d

    :cond_19a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435 \u0441\u0430 \u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1bd

    const-string v0, " \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0438."

    :goto_1b3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_1bd
    const-string v0, " \u043f\u043e-\u0434\u044a\u043b\u0433\u0438."

    goto :goto_1b3

    .line 88
    :cond_1c0
    const-string v9, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    .line 89
    if-eqz v8, :cond_1ce

    const-string v0, "\u0414\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0435 \u043f\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    goto/16 :goto_d

    .line 90
    :cond_1ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1f1

    const-string v0, " \u043f\u043e-\u043f\u043b\u0438\u0442\u044a\u043a."

    :goto_1e7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_1f1
    const-string v0, " \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a."

    goto :goto_1e7

    .line 93
    :cond_1f4
    const-string v0, "\u0441\u0438\u043b\u0430 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 96
    :cond_21f
    const-string v0, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_254

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041e\u0441\u0442\u0430\u0432\u0430\u0442 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " \u043c\u0438\u043d\u0443\u0442\u0438"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 99
    :cond_254
    const-string v0, "\u043f\u0443\u043b\u0441 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27f

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0443\u0434\u0430\u0440\u0430 \u0432 \u043c\u0438\u043d\u0443\u0442\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 102
    :cond_27f
    const-string v0, "\u043a\u0440\u0430\u0439 \u0441\u043b\u0435\u0434 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0414\u043e\u0431\u0440\u0435, \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430\u043c\u0435 \u0441\u043b\u0435\u0434 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " \u043c\u0438\u043d\u0443\u0442\u0438"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 105
    :cond_2b4
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3be

    :cond_2bc
    move v1, v0

    :goto_2bd
    packed-switch v1, :pswitch_data_3fc

    .line 123
    const-string v0, "\u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0435"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a4

    .line 124
    const-string v0, "\u0421\u0435\u0433\u0430 \u0435 \u043f\u043e\u0447\u0438\u0432\u043a\u0430. \u041a\u0430\u0436\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u0438 \u0433\u043e\u0442\u043e\u0432."

    goto/16 :goto_d

    .line 105
    :sswitch_2cc
    const-string v2, "\u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    goto :goto_2bd

    :sswitch_2d5
    const-string v1, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    move v1, v2

    goto :goto_2bd

    :sswitch_2df
    const-string v1, "\u0441\u0442\u0430\u0440\u0442"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    move v1, v3

    goto :goto_2bd

    :sswitch_2e9
    const-string v1, "\u0442\u0435\u0447\u0435"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    move v1, v4

    goto :goto_2bd

    :sswitch_2f3
    const-string v1, "\u043d\u0430 \u043f\u0430\u0443\u0437\u0430 \u0435"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/4 v1, 0x4

    goto :goto_2bd

    :sswitch_2fd
    const-string v1, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    move v1, v5

    goto :goto_2bd

    :sswitch_307
    const-string v1, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/4 v1, 0x6

    goto :goto_2bd

    :sswitch_311
    const-string v1, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/4 v1, 0x7

    goto :goto_2bd

    :sswitch_31b
    const-string v1, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0x8

    goto :goto_2bd

    :sswitch_326
    const-string v1, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0x9

    goto :goto_2bd

    :sswitch_331
    const-string v1, "\u043a\u0440\u0430\u0439 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0xa

    goto :goto_2bd

    :sswitch_33c
    const-string v1, "\u043c\u0443\u0437\u0438\u043a\u0430"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0xb

    goto/16 :goto_2bd

    :sswitch_348
    const-string v1, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u043f\u0435\u0441\u0435\u043d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0xc

    goto/16 :goto_2bd

    :sswitch_354
    const-string v1, "\u043f\u0440\u0435\u0434\u0438\u0448\u043d\u0430 \u043f\u0435\u0441\u0435\u043d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0xd

    goto/16 :goto_2bd

    :sswitch_360
    const-string v1, "\u043d\u044f\u043c\u0430 \u043f\u0443\u043b\u0441"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    const/16 v1, 0xe

    goto/16 :goto_2bd

    .line 106
    :pswitch_36c
    const-string v0, "\u041f\u0430\u0443\u0437\u0430."

    goto/16 :goto_d

    .line 107
    :pswitch_370
    const-string v0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435."

    goto/16 :goto_d

    .line 108
    :pswitch_374
    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435."

    goto/16 :goto_d

    .line 109
    :pswitch_378
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0442\u0435\u0447\u0435."

    goto/16 :goto_d

    .line 110
    :pswitch_37c
    const-string v0, "\u0412\u0435\u0447\u0435 \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    goto/16 :goto_d

    .line 112
    :pswitch_380
    const-string v0, "\u041c\u0438\u043d\u0430\u0432\u0430\u043c\u0435 \u043d\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435."

    goto/16 :goto_d

    .line 113
    :pswitch_384
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438\u0445 \u0434\u0432\u043e\u0439\u043d\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441."

    goto/16 :goto_d

    .line 114
    :pswitch_388
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438\u0445 \u0434\u0432\u043e\u0439\u043d\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441."

    goto/16 :goto_d

    .line 115
    :pswitch_38c
    const-string v0, "\u041c\u0438\u043d\u0430\u0432\u0430\u043c\u0435 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    goto/16 :goto_d

    .line 116
    :pswitch_390
    const-string v0, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    goto/16 :goto_d

    .line 117
    :pswitch_394
    const-string v0, "\u0414\u043e\u0431\u0440\u0435."

    goto/16 :goto_d

    .line 118
    :pswitch_398
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u043f\u0435\u0441\u0435\u043d."

    goto/16 :goto_d

    .line 119
    :pswitch_39c
    const-string v0, "\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0430\u0442\u0430 \u043f\u0435\u0441\u0435\u043d."

    goto/16 :goto_d

    .line 120
    :pswitch_3a0
    const-string v0, "\u041d\u0435 \u0432\u0438\u0436\u0434\u0430\u043c \u043f\u0443\u043b\u0441, \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0430."

    goto/16 :goto_d

    .line 126
    :cond_3a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 105
    nop

    :sswitch_data_3be
    .sparse-switch
        -0x7e1e7e6a -> :sswitch_354
        -0x60019c48 -> :sswitch_326
        -0x5104e94d -> :sswitch_31b
        -0x474d04de -> :sswitch_331
        -0x47407b47 -> :sswitch_2d5
        -0x2487000f -> :sswitch_348
        0x1ffd041 -> :sswitch_2e9
        0x2cea190 -> :sswitch_2fd
        0x212a6384 -> :sswitch_360
        0x2da8f8c8 -> :sswitch_307
        0x36e3fab3 -> :sswitch_2f3
        0x3dcda0eb -> :sswitch_2cc
        0x3df1b871 -> :sswitch_2df
        0x64548246 -> :sswitch_311
        0x77ce45de -> :sswitch_33c
    .end sparse-switch

    :pswitch_data_3fc
    .packed-switch 0x0
        :pswitch_36c
        :pswitch_370
        :pswitch_374
        :pswitch_378
        :pswitch_37c
        :pswitch_380
        :pswitch_380
        :pswitch_384
        :pswitch_388
        :pswitch_38c
        :pswitch_390
        :pswitch_394
        :pswitch_398
        :pswitch_39c
        :pswitch_3a0
    .end packed-switch
.end method
